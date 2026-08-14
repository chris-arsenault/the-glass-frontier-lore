import React, { useState, useEffect, useRef, useCallback, useMemo } from 'react'
import { marked } from 'marked'

const API = 'http://localhost:3457/api'

// Two views of an entry. Prose is what a reader gets, rendered by the engine, and
// it is the view to review voice and register in — an anchor taken from it also
// matches the prose `make check` verifies anchors against. Source is the DSL, for
// seeing markers and where a fix has to be applied.
const escapeHtml = (s) => s.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;')

// The engine emits front matter; a reviewer reading prose does not need it.
const stripFrontMatter = (md) => md.replace(/^---\n[\s\S]*?\n---\n/, '')

function buildTree(entries) {
  const root = { __files: [], __dirs: {} }
  for (const entry of entries) {
    const parts = entry.source_file.split('/')
    parts.pop()
    let node = root
    for (const part of parts) {
      if (!node.__dirs[part]) node.__dirs[part] = { __files: [], __dirs: {} }
      node = node.__dirs[part]
    }
    node.__files.push({ name: entry.title, path: entry.id, source: entry.source_file })
  }
  return root
}

function applyHighlight(container, text, reviewId) {
  const walker = document.createTreeWalker(container, NodeFilter.SHOW_TEXT)
  while (walker.nextNode()) {
    const node = walker.currentNode
    if (node.parentElement.closest('mark.review-hl')) continue
    const idx = node.textContent.indexOf(text)
    if (idx === -1) continue
    try {
      const range = document.createRange()
      range.setStart(node, idx)
      range.setEnd(node, idx + text.length)
      const mark = document.createElement('mark')
      mark.className = 'review-hl'
      mark.dataset.reviewId = reviewId
      range.surroundContents(mark)
      return true
    } catch { return false }
  }
  // Fallback: try matching a shorter prefix if the full text spans elements
  if (text.length > 30) {
    const short = text.slice(0, 30)
    const walker2 = document.createTreeWalker(container, NodeFilter.SHOW_TEXT)
    while (walker2.nextNode()) {
      const node = walker2.currentNode
      if (node.parentElement.closest('mark.review-hl')) continue
      const idx = node.textContent.indexOf(short)
      if (idx === -1) continue
      try {
        const range = document.createRange()
        range.setStart(node, idx)
        range.setEnd(node, Math.min(idx + text.length, node.textContent.length))
        const mark = document.createElement('mark')
        mark.className = 'review-hl'
        mark.dataset.reviewId = reviewId
        range.surroundContents(mark)
        return true
      } catch { return false }
    }
  }
  return false
}

function clearHighlights(container) {
  container.querySelectorAll('mark.review-hl').forEach(mark => {
    const parent = mark.parentNode
    while (mark.firstChild) parent.insertBefore(mark.firstChild, mark)
    parent.removeChild(mark)
    parent.normalize()
  })
}

function TreeNode({ node, path, depth, currentFile, onSelect, collapsed, onToggle, index, filter }) {
  const dirNames = Object.keys(node.__dirs).sort()
  const files = [...node.__files].sort((a, b) => a.name.localeCompare(b.name))
  const isRoot = depth === 0
  const isCollapsed = filter ? false : collapsed.has(path)

  return (
    <>
      {!isRoot && (
        <div
          className="tree-dir"
          onClick={() => onToggle(path)}
          style={{
            padding: `3px 8px 3px ${8 + depth * 16}px`,
            cursor: 'pointer', fontSize: '12px', color: '#7777aa',
            userSelect: 'none', display: 'flex', alignItems: 'center', gap: '4px',
          }}
        >
          <span style={{ fontSize: '8px', width: '10px', display: 'inline-block', textAlign: 'center' }}>
            {isCollapsed ? '\u25b6' : '\u25bc'}
          </span>
          <span style={{ fontWeight: 500 }}>{path.split('/').pop()}</span>
        </div>
      )}
      {!isCollapsed && (
        <>
          {dirNames.map(d => (
            <TreeNode key={d} node={node.__dirs[d]} path={path ? `${path}/${d}` : d}
              depth={depth + 1} currentFile={currentFile} onSelect={onSelect}
              collapsed={collapsed} onToggle={onToggle} index={index} filter={filter} />
          ))}
          {files.map(f => (
            <div
              key={f.path} className="tree-file"
              onClick={() => onSelect(f.path)}
              style={{
                padding: `3px 8px 3px ${8 + (depth + 1) * 16}px`,
                cursor: 'pointer', fontSize: '12px',
                color: f.path === currentFile ? '#e0e0ff' : '#b0b0c8',
                background: f.path === currentFile ? '#1e1e40' : 'transparent',
                borderLeft: f.path === currentFile ? '2px solid #6366f1' : '2px solid transparent',
                display: 'flex', alignItems: 'center', gap: '6px',
              }}
            >
              {(() => {
                const e = index[f.path]
                if (!e) return null
                if (e.reviewed && e.complete) return <span style={{ color: '#4ade80', fontSize: '10px', flexShrink: 0, lineHeight: 1 }} title="read and complete">&#x2713;</span>
                if (e.reviewed) return <span style={{ color: '#f59e0b', fontSize: '10px', flexShrink: 0, lineHeight: 1 }} title="read, not complete">&#x25cb;</span>
                if (e.complete) return <span style={{ color: '#555', fontSize: '10px', flexShrink: 0, lineHeight: 1 }} title="complete, unread">&#x2500;</span>
                return null
              })()}
              <span style={{ flex: 1, overflow: 'hidden', textOverflow: 'ellipsis', whiteSpace: 'nowrap' }}>
                {f.name}
              </span>
              {index[f.path]?.question_count > 0 && (
                <span style={{
                  background: '#f59e0b', color: '#000', borderRadius: '8px',
                  padding: '0 5px', fontSize: '9px', fontWeight: 700, flexShrink: 0,
                }}>{index[f.path].question_count}</span>
              )}
            </div>
          ))}
        </>
      )}
    </>
  )
}

function App() {
  const [files, setFiles] = useState([])
  const [currentFile, setCurrentFile] = useState(null)
  const [currentSource, setCurrentSource] = useState(null)
  const [revision, setRevision] = useState(null)
  const [content, setContent] = useState('')
  // Questions are declarations owned by the selected entity, not rows in a
  // separate review store.
  const [reviews, setReviews] = useState([])
  const [filter, setFilter] = useState('')
  const [collapsed, setCollapsed] = useState(new Set())
  const [pendingSelection, setPendingSelection] = useState(null)
  const [newComment, setNewComment] = useState(null)
  const [commentText, setCommentText] = useState('')
  const [commentPositions, setCommentPositions] = useState({})
  const [activeComment, setActiveComment] = useState(null)
  const [flags, setFlags] = useState({})
  const [index, setIndex] = useState({})
  const [error, setError] = useState(null)
  const [prose, setProse] = useState('')
  const [view, setView] = useState('prose')

  const scrollRef = useRef(null)
  const contentRef = useRef(null)
  const textareaRef = useRef(null)

  useEffect(() => {
    refreshIndex()
  }, [])

  useEffect(() => {
    if (newComment && textareaRef.current) textareaRef.current.focus()
  }, [newComment])

  // Inject styles
  useEffect(() => {
    const style = document.createElement('style')
    style.textContent = `
      * { box-sizing: border-box; margin: 0; padding: 0; }
      html, body, #root { height: 100%; overflow: hidden; }
      mark.review-hl {
        background: rgba(249, 115, 22, 0.18);
        border-bottom: 2px solid rgba(249, 115, 22, 0.5);
        padding: 1px 0; border-radius: 2px; cursor: pointer;
        transition: background 0.15s;
      }
      mark.review-hl:hover, mark.review-hl.active {
        background: rgba(249, 115, 22, 0.38);
      }
      .tree-file:hover { background: rgba(255,255,255,0.03) !important; }
      .tree-dir:hover { background: rgba(255,255,255,0.02); }
      pre.src {
        font-family: ui-monospace, SFMono-Regular, Menlo, monospace;
        font-size: 12.5px; line-height: 1.75; color: #c8c8e0;
        white-space: pre-wrap; overflow-wrap: break-word; tab-size: 2;
      }
      .md { font-size: 14px; line-height: 1.7; color: #c8c8e0; }
      .md h1 { font-size: 1.5em; margin: 0.2em 0 0.5em; color: #e0e0ff; border-bottom: 1px solid #2a2a4a; padding-bottom: 6px; }
      .md h2 { font-size: 1.2em; margin: 1.2em 0 0.3em; color: #d0d0f0; }
      .md h3 { font-size: 1.05em; margin: 1em 0 0.2em; color: #c0c0e0; }
      .md p { margin: 0.7em 0; }
      .md ul, .md ol { margin: 0.6em 0; padding-left: 1.5em; }
      .md li { margin: 0.2em 0; }
      .md strong { color: #e0e0ff; }
      .md em { color: #c8c8e8; }
      .md a { color: #818cf8; text-decoration: none; }
      .md code { background: #1a1a3e; padding: 1px 4px; border-radius: 3px; font-size: 0.9em; }
      .md hr { border: none; border-top: 1px solid #2a2a4a; margin: 1.4em 0; }
      .md blockquote { border-left: 3px solid #3a3a6a; margin: 0.6em 0; padding: 0.2em 0.8em; color: #a0a0c0; }
      .md table { border-collapse: collapse; margin: 0.6em 0; }
      .md th, .md td { border: 1px solid #2a2a4a; padding: 4px 8px; font-size: 0.9em; }
      .md th { background: #1a1a3e; }
      .view-toggle { border: 1px solid #2a2a4a; border-radius: 3px; background: none; color: #777; cursor: pointer; font-size: 10px; padding: 3px 8px; }
      .view-toggle.on { background: #1e1e40; color: #b0b0d0; border-color: #3a3a6a; }
      .gutter-card { transition: border-color 0.15s, box-shadow 0.15s; }
      .gutter-card:hover { border-color: #3a3a6a !important; }
      .gutter-card.active { border-color: #f59e0b !important; box-shadow: 0 0 0 1px rgba(249,115,22,0.3); }
      .btn-sm { border: none; background: none; cursor: pointer; padding: 1px 6px; border-radius: 3px; font-size: 10px; }
      .btn-sm:hover { opacity: 0.8; }
    `
    document.head.appendChild(style)
    return () => document.head.removeChild(style)
  }, [])

  // Apply highlights + compute positions
  useEffect(() => {
    if (!contentRef.current || !scrollRef.current || !currentFile) return

    clearHighlights(contentRef.current)
    // A question anchors to a passage via its `on:`; one without an anchor is
    // about the entry as a whole.
    for (const q of reviews.filter(q => q.on)) {
      applyHighlight(contentRef.current, q.on, q.token)
    }

    requestAnimationFrame(() => {
      if (!contentRef.current || !scrollRef.current) return
      const scrollRect = scrollRef.current.getBoundingClientRect()
      const pos = {}
      contentRef.current.querySelectorAll('mark.review-hl').forEach(mark => {
        const rect = mark.getBoundingClientRect()
        pos[mark.dataset.reviewId] = rect.top - scrollRect.top + scrollRef.current.scrollTop
      })
      setCommentPositions(pos)
    })
  }, [content, reviews, currentFile])

  // Click on a highlight mark → activate the comment
  useEffect(() => {
    if (!contentRef.current) return
    const handler = (e) => {
      const mark = e.target.closest('mark.review-hl')
      if (mark) {
        const id = mark.dataset.reviewId
        setActiveComment(id)
        const el = document.getElementById(`gc-${id}`)
        if (el) el.scrollIntoView({ behavior: 'smooth', block: 'nearest' })
      }
    }
    const el = contentRef.current
    el.addEventListener('click', handler)
    return () => el.removeEventListener('click', handler)
  }, [content, currentFile])

  // One entity response carries its source, rendered prose, questions, flags,
  // and the revision required by every write.
  const loadFile = async (entityId) => {
    const response = await fetch(`${API}/entries/${encodeURIComponent(entityId)}`)
    const data = await response.json()
    if (!response.ok) return setError(data.message || 'entry load failed')
    const entry = data.entry
    setCurrentFile(entry.id)
    setCurrentSource(entry.source_file)
    setRevision(entry.revision)
    setContent(entry.content)
    setProse(entry.markdown ? stripFrontMatter(entry.markdown) : '')
    setReviews(entry.questions)
    setFlags({ reviewed: entry.reviewed, complete: entry.complete })
    setPendingSelection(null)
    setNewComment(null)
    setActiveComment(null)
    setError(null)
  }

  // A successful write returns the new revision and exact question tokens.
  const applyWrite = async (res) => {
    const data = await res.json()
    if (!res.ok) return setError(data.message || 'write failed')
    const entry = data.entry
    setRevision(entry.revision)
    setContent(entry.content)
    setProse(entry.markdown ? stripFrontMatter(entry.markdown) : '')
    setReviews(entry.questions || [])
    setFlags({ reviewed: entry.reviewed, complete: entry.complete })
    refreshIndex()
    setError(null)
  }

  const refreshIndex = () => fetch(`${API}/entries`).then(r => r.json()).then(data => {
    setFiles(data.entries || [])
    setIndex(Object.fromEntries((data.entries || []).map(entry => [entry.id, entry])))
  })

  const handleMouseUp = useCallback(() => {
    const sel = window.getSelection()
    if (!sel || sel.isCollapsed || !contentRef.current || !scrollRef.current) return
    if (!contentRef.current.contains(sel.anchorNode)) return
    const text = sel.toString().trim()
    if (!text || text.length < 2) return

    const range = sel.getRangeAt(0)
    const rect = range.getBoundingClientRect()
    const scrollRect = scrollRef.current.getBoundingClientRect()
    const y = rect.top - scrollRect.top + scrollRef.current.scrollTop

    setPendingSelection({ text, y })
  }, [])

  const handleMouseDown = useCallback((e) => {
    if (e.target.closest('.gutter')) return
    if (pendingSelection) setPendingSelection(null)
    if (newComment) return // don't dismiss form on content clicks
  }, [pendingSelection, newComment])

  const submitComment = async () => {
    if (!commentText.trim() || !currentFile || !newComment) return
    const res = await fetch(`${API}/entries/${encodeURIComponent(currentFile)}/questions`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ revision, text: commentText.trim(), on: newComment.text }),
    })
    setNewComment(null)
    setCommentText('')
    window.getSelection()?.removeAllRanges()
    await applyWrite(res)
  }

  // Resolving is deleting: the declaration exists while the question is open.
  const resolveQuestion = async (token) => {
    const res = await fetch(
      `${API}/entries/${encodeURIComponent(currentFile)}/questions/${encodeURIComponent(token)}`,
      {
        method: 'DELETE',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ revision }),
      }
    )
    setActiveComment(null)
    await applyWrite(res)
  }

  const toggleFlag = async (field) => {
    if (!currentFile) return
    const res = await fetch(`${API}/entries/${encodeURIComponent(currentFile)}/review-status/${field}`, {
      method: 'PUT',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ revision, value: !flags[field] }),
    })
    await applyWrite(res)
  }

  const filteredFiles = filter
    ? files.filter(entry => [entry.id, entry.title, entry.source_file]
      .some(value => value.toLowerCase().includes(filter.toLowerCase())))
    : files
  const tree = useMemo(() => buildTree(filteredFiles), [filteredFiles])

  const isReviewed = !!flags.reviewed
  const isComplete = !!flags.complete

  // Vertical overlaps between gutter cards, resolved by pushing later ones down.
  const resolvedPositions = useMemo(() => {
    const items = reviews
      .map(q => ({ id: q.token, y: commentPositions[q.token] ?? -1 }))
      .filter(it => it.y >= 0)
      .sort((a, b) => a.y - b.y)
    const GAP = 90
    for (let i = 1; i < items.length; i++) {
      if (items[i].y < items[i - 1].y + GAP) items[i].y = items[i - 1].y + GAP
    }
    const out = {}
    for (const it of items) out[it.id] = it.y
    return out
  }, [reviews, commentPositions])

  // A question with no anchor, or one whose anchor no longer appears in the
  // source — the case `make check` warns about.
  const orphanedReviews = reviews.filter(q => !(q.token in commentPositions))
  const renderedHtml = useMemo(() => {
    if (view === 'source') return content ? `<pre class="src">${escapeHtml(content)}</pre>` : ''
    return prose ? marked.parse(prose) : ''
  }, [view, content, prose])

  const toggleCollapsed = (path) => {
    setCollapsed(prev => {
      const next = new Set(prev)
      next.has(path) ? next.delete(path) : next.add(path)
      return next
    })
  }

  const allPositionValues = Object.values(resolvedPositions)
  const maxY = Math.max(0, ...allPositionValues, newComment?.y || 0, pendingSelection?.y || 0)

  return (
    <div style={{ display: 'flex', height: '100vh', fontFamily: '-apple-system,BlinkMacSystemFont,"Segoe UI",sans-serif', color: '#e0e0e0', background: '#1a1a2e' }}>

      {/* Sidebar tree */}
      <div style={{ width: '250px', borderRight: '1px solid #2a2a4a', display: 'flex', flexDirection: 'column', background: '#14142a', flexShrink: 0 }}>
        <div style={{ padding: '12px 10px', borderBottom: '1px solid #2a2a4a' }}>
          <div style={{ fontSize: '14px', fontWeight: 600, color: '#b0b0d0', marginBottom: '8px' }}>Lore Review</div>
          <input type="text" placeholder="Filter..." value={filter}
            onChange={e => setFilter(e.target.value)}
            style={{ width: '100%', padding: '4px 8px', border: '1px solid #2a2a4a', borderRadius: '4px', background: '#1a1a2e', color: '#e0e0e0', fontSize: '12px', outline: 'none' }}
          />
        </div>
        <div style={{ flex: 1, overflowY: 'auto', padding: '2px 0' }}>
          <TreeNode node={tree} path="" depth={0} currentFile={currentFile} onSelect={loadFile}
            collapsed={collapsed} onToggle={toggleCollapsed} index={index} filter={filter} />
        </div>
        <div style={{ borderTop: '1px solid #2a2a4a', padding: '6px 10px', fontSize: '10px' }}>
          <div style={{ color: '#555' }}>
            {Object.values(index).reduce((n, e) => n + e.question_count, 0)} open question(s) ·{' '}
            {Object.values(index).filter(e => e.reviewed).length}/{Object.keys(index).length} read
          </div>
        </div>
      </div>

      {/* Main */}
      {currentFile ? (
        <div style={{ flex: 1, display: 'flex', flexDirection: 'column', overflow: 'hidden' }}>
          <div style={{ padding: '8px 20px', borderBottom: '1px solid #2a2a4a', display: 'flex', alignItems: 'center', justifyContent: 'space-between', background: '#14142a', flexShrink: 0, gap: 8 }}>
            <span style={{ fontSize: '13px', color: '#9090b0', flex: 1 }}>{currentSource}</span>
            {error && (
              <span style={{ fontSize: '10px', color: '#f87171' }}>{error}</span>
            )}
            {reviews.length > 0 && (
              <span style={{ fontSize: '11px', color: '#555' }}>
                {reviews.length} question{reviews.length !== 1 ? 's' : ''}
              </span>
            )}
            <span>
              <button className={`view-toggle${view === 'prose' ? ' on' : ''}`}
                onClick={() => setView('prose')} title="as a reader sees it">prose</button>
              <button className={`view-toggle${view === 'source' ? ' on' : ''}`}
                onClick={() => setView('source')} style={{ marginLeft: 3 }}
                title="the DSL, markers and all">source</button>
            </span>
            <button onClick={() => toggleFlag('reviewed')}
              style={{
                padding: '3px 8px', borderRadius: '3px', cursor: 'pointer', fontSize: '10px',
                border: isReviewed ? '1px solid #1a3a1a' : '1px solid #2a2a4a',
                background: isReviewed ? '#1a2a1a' : 'none',
                color: isReviewed ? '#4ade80' : '#555',
              }}>
              {isReviewed ? 'Reviewed' : 'Unreviewed'}
            </button>
            <button onClick={() => toggleFlag('complete')}
              style={{
                padding: '3px 8px', borderRadius: '3px', cursor: 'pointer', fontSize: '10px',
                border: isComplete ? '1px solid #1a3a1a' : '1px solid #4a3a1a',
                background: isComplete ? '#1a2a1a' : 'none',
                color: isComplete ? '#4ade80' : '#f59e0b',
              }}>
              {isComplete ? 'Complete' : 'Needs work'}
            </button>
          </div>

          <div ref={scrollRef} style={{ flex: 1, overflowY: 'auto', overflowX: 'hidden' }} onMouseDown={handleMouseDown}>
            <div style={{ display: 'flex', minHeight: '100%' }}>

              {/* Content wrapper - fills all space left of gutter */}
              <div style={{ flex: 1, minWidth: 0 }}>
                <div ref={contentRef} className={view === 'prose' ? 'md' : undefined}
                  style={{ padding: '20px 28px', maxWidth: '820px' }}
                  onMouseUp={handleMouseUp}
                  dangerouslySetInnerHTML={{ __html: renderedHtml }}
                />
              </div>

              {/* Comment gutter - pinned to right edge */}
              <div className="gutter"
                style={{ width: '280px', flexShrink: 0, position: 'relative', borderLeft: '1px solid #222240', background: '#131328', minHeight: maxY + 200 + 'px' }}>

                {/* Questions anchored to a passage in the source */}
                {reviews.filter(q => q.token in resolvedPositions).map(q => (
                  <div key={q.token} id={`gc-${q.token}`}
                    className={`gutter-card${activeComment === q.token ? ' active' : ''}`}
                    onClick={() => {
                      setActiveComment(q.token)
                      const mark = contentRef.current?.querySelector(`mark[data-review-id="${q.token}"]`)
                      if (mark) {
                        mark.scrollIntoView({ behavior: 'smooth', block: 'center' })
                        mark.classList.add('active')
                        setTimeout(() => mark.classList.remove('active'), 1500)
                      }
                    }}
                    style={{
                      position: 'absolute', top: resolvedPositions[q.token], left: 10, right: 10,
                      background: '#1a1a30', border: '1px solid #262648', borderRadius: '4px',
                      padding: '8px 10px', fontSize: '12px', cursor: 'pointer',
                    }}>
                    {q.on && (
                      <div style={{ color: '#d97706', fontStyle: 'italic', fontSize: '11px', lineHeight: 1.3, marginBottom: '4px', overflow: 'hidden', display: '-webkit-box', WebkitLineClamp: 2, WebkitBoxOrient: 'vertical' }}>
                        &ldquo;{q.on.length > 70 ? q.on.slice(0, 70) + '\u2026' : q.on}&rdquo;
                      </div>
                    )}
                    <div style={{ color: '#c8c8e0', lineHeight: 1.4 }}>{q.text}</div>
                    <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginTop: '6px' }}>
                      <span style={{ fontSize: '10px', color: '#444' }}>{q.raised || ''}</span>
                      <button className="btn-sm" onClick={e => { e.stopPropagation(); resolveQuestion(q.token) }}
                        style={{ color: '#4ade80', border: '1px solid #1a3a1a' }}
                        title="deletes the question line from the entity">resolve</button>
                    </div>
                  </div>
                ))}

                {/* No anchor, or an anchor the prose no longer contains */}
                {orphanedReviews.length > 0 && (
                  <div style={{ position: 'absolute', top: (allPositionValues.length > 0 ? maxY + 110 : 16), left: 10, right: 10 }}>
                    <div style={{ fontSize: '9px', color: '#444', textTransform: 'uppercase', letterSpacing: '0.5px', marginBottom: '4px' }}>About the entry</div>
                    {orphanedReviews.map(q => (
                      <div key={q.token} style={{ background: '#1a1a2e', border: '1px solid #222240', borderRadius: '4px', padding: '8px 10px', fontSize: '12px', marginBottom: '6px', opacity: 0.8 }}>
                        {q.on && (
                          <div style={{ color: '#886600', fontStyle: 'italic', fontSize: '11px', marginBottom: '3px', textDecoration: 'line-through' }}
                            title="anchor no longer in the prose">&ldquo;{q.on.slice(0, 60)}&rdquo;</div>
                        )}
                        <div style={{ color: '#b0b0c8', lineHeight: 1.4 }}>{q.text}</div>
                        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginTop: 4 }}>
                          <span style={{ fontSize: '10px', color: '#444' }}>{q.raised || ''}</span>
                          <button className="btn-sm" onClick={() => resolveQuestion(q.token)} style={{ color: '#4ade80', border: '1px solid #1a3a1a' }}>resolve</button>
                        </div>
                      </div>
                    ))}
                  </div>
                )}

                {/* + button on text selection */}
                {pendingSelection && !newComment && (
                  <div
                    onClick={() => {
                      setNewComment({ text: pendingSelection.text, y: pendingSelection.y })
                      setPendingSelection(null)
                      setCommentText('')
                    }}
                    style={{
                      position: 'absolute', top: pendingSelection.y - 13, left: -13,
                      width: 26, height: 26, background: '#6366f1', color: '#fff',
                      borderRadius: '50%', display: 'flex', alignItems: 'center', justifyContent: 'center',
                      cursor: 'pointer', fontSize: '18px', fontWeight: 700, lineHeight: 1,
                      boxShadow: '0 2px 8px rgba(0,0,0,0.4)', zIndex: 10,
                      border: '2px solid #1a1a2e',
                    }}
                    title="Add comment"
                  >+</div>
                )}

                {/* New comment form */}
                {newComment && (
                  <div style={{
                    position: 'absolute', top: newComment.y - 10, left: 10, right: 10,
                    background: '#1e1e3e', border: '1px solid #6366f1', borderRadius: '5px',
                    padding: '10px', zIndex: 10, boxShadow: '0 4px 16px rgba(0,0,0,0.35)',
                  }}>
                    <div style={{ fontSize: '11px', color: '#8888aa', fontStyle: 'italic', marginBottom: '6px', lineHeight: 1.3, maxHeight: '36px', overflow: 'hidden' }}>
                      &ldquo;{newComment.text.length > 80 ? newComment.text.slice(0, 80) + '\u2026' : newComment.text}&rdquo;
                    </div>
                    <textarea ref={textareaRef} value={commentText}
                      onChange={e => setCommentText(e.target.value)}
                      onKeyDown={e => {
                        if (e.key === 'Enter' && (e.metaKey || e.ctrlKey)) submitComment()
                        if (e.key === 'Escape') { setNewComment(null); setCommentText('') }
                      }}
                      placeholder="Comment... (Ctrl+Enter)"
                      style={{
                        width: '100%', padding: '6px 8px', border: '1px solid #3a3a6a',
                        borderRadius: '4px', background: '#141430', color: '#e0e0e0',
                        fontSize: '12px', resize: 'vertical', outline: 'none', fontFamily: 'inherit',
                      }}
                      rows={2}
                    />
                    <div style={{ display: 'flex', justifyContent: 'flex-end', gap: 6, marginTop: 6 }}>
                      <button onClick={() => { setNewComment(null); setCommentText('') }}
                        style={{ padding: '3px 10px', border: '1px solid #3a3a5a', borderRadius: '3px', background: 'none', color: '#777', cursor: 'pointer', fontSize: '11px' }}>
                        Cancel
                      </button>
                      <button onClick={submitComment}
                        style={{ padding: '3px 10px', border: 'none', borderRadius: '3px', background: '#6366f1', color: '#fff', cursor: 'pointer', fontSize: '11px' }}>
                        Save
                      </button>
                    </div>
                  </div>
                )}
              </div>
            </div>{/* end flex row */}
          </div>{/* end scroll container */}

          {/* A resolved question is a deleted line; there is no drawer of them.
              Git holds what was asked and answered. */}
        </div>
      ) : (
        <div style={{ flex: 1, display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center' }}>
          <div style={{ fontSize: '15px', color: '#3a3a5a' }}>Select an entry to review</div>
          <div style={{ fontSize: '12px', color: '#2a2a4a', marginTop: '6px' }}>Highlight a passage, then click + to raise a question on it</div>
        </div>
      )}
    </div>
  )
}

export default App
