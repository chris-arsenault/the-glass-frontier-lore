import React, { useState, useEffect, useRef, useCallback, useMemo } from 'react'
import { marked } from 'marked'

const API = 'http://localhost:3457/api'

function buildTree(files) {
  const root = { __files: [], __dirs: {} }
  for (const f of files) {
    const parts = f.split('/')
    let node = root
    for (let i = 0; i < parts.length; i++) {
      if (i === parts.length - 1) {
        node.__files.push({ name: parts[i], path: f })
      } else {
        if (!node.__dirs[parts[i]]) node.__dirs[parts[i]] = { __files: [], __dirs: {} }
        node = node.__dirs[parts[i]]
      }
    }
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

function TreeNode({ node, path, depth, currentFile, onSelect, collapsed, onToggle, reviewCounts, filter, manualStatus }) {
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
              collapsed={collapsed} onToggle={onToggle} reviewCounts={reviewCounts} filter={filter} manualStatus={manualStatus} />
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
              {manualStatus && manualStatus[f.path] && (() => {
                const fl = manualStatus[f.path]
                const r = !!fl.reviewed, c = !!fl.complete
                if (r && c) return <span style={{ color: '#4ade80', fontSize: '10px', flexShrink: 0, lineHeight: 1 }} title="Reviewed + Complete">&#x2713;</span>
                if (r && !c) return <span style={{ color: '#f59e0b', fontSize: '10px', flexShrink: 0, lineHeight: 1 }} title="Reviewed, needs work">&#x25cb;</span>
                if (!r && c) return <span style={{ color: '#555', fontSize: '10px', flexShrink: 0, lineHeight: 1 }} title="Complete, not reviewed">&#x2500;</span>
                return null
              })()}
              <span style={{ flex: 1, overflow: 'hidden', textOverflow: 'ellipsis', whiteSpace: 'nowrap' }}>
                {f.name.replace(/\.md$/, '')}
              </span>
              {reviewCounts[f.path] > 0 && (
                <span style={{
                  background: '#f59e0b', color: '#000', borderRadius: '8px',
                  padding: '0 5px', fontSize: '9px', fontWeight: 700, flexShrink: 0,
                }}>{reviewCounts[f.path]}</span>
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
  const [content, setContent] = useState('')
  const [reviews, setReviews] = useState([])
  const [filter, setFilter] = useState('')
  const [collapsed, setCollapsed] = useState(new Set())
  const [pendingSelection, setPendingSelection] = useState(null)
  const [newComment, setNewComment] = useState(null)
  const [commentText, setCommentText] = useState('')
  const [commentPositions, setCommentPositions] = useState({})
  const [showResolved, setShowResolved] = useState(false)
  const [activeComment, setActiveComment] = useState(null)
  const [autoStatus, setAutoStatus] = useState({})
  const [manualStatus, setManualStatus] = useState({})
  const [overlaps, setOverlaps] = useState([])
  const [showOverlaps, setShowOverlaps] = useState(false)

  const scrollRef = useRef(null)
  const contentRef = useRef(null)
  const textareaRef = useRef(null)

  useEffect(() => {
    fetch(`${API}/files`).then(r => r.json()).then(setFiles)
    fetch(`${API}/reviews`).then(r => r.json()).then(setReviews)
    fetch(`${API}/review-status`).then(r => r.json()).then(d => { setAutoStatus(d.auto || {}); setManualStatus(d.manual || {}) })
    fetch(`${API}/overlaps`).then(r => r.json()).then(setOverlaps)
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
      .md h1 { font-size: 1.5em; margin: 0.8em 0 0.4em; color: #e0e0ff; border-bottom: 1px solid #2a2a4a; padding-bottom: 6px; }
      .md h2 { font-size: 1.25em; margin: 0.8em 0 0.3em; color: #d0d0f0; }
      .md h3 { font-size: 1.05em; margin: 0.6em 0 0.2em; color: #c0c0e0; }
      .md p { margin: 0.4em 0; }
      .md ul, .md ol { margin: 0.4em 0; padding-left: 1.5em; }
      .md li { margin: 0.15em 0; }
      .md strong { color: #e0e0ff; }
      .md em { color: #c8c8e8; }
      .md a { color: #818cf8; text-decoration: none; }
      .md a:hover { text-decoration: underline; }
      .md code { background: #1a1a3e; padding: 1px 4px; border-radius: 3px; font-size: 0.9em; }
      .md hr { border: none; border-top: 1px solid #2a2a4a; margin: 1em 0; }
      .md blockquote { border-left: 3px solid #3a3a6a; margin: 0.4em 0; padding: 0.2em 0.8em; color: #a0a0c0; }
      .md table { border-collapse: collapse; margin: 0.4em 0; }
      .md th, .md td { border: 1px solid #2a2a4a; padding: 4px 8px; font-size: 0.9em; }
      .md th { background: #1a1a3e; }
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
    // Only highlight active reviews (not stale ones whose file has been auto-reviewed)
    const rd = autoStatus[currentFile]
    const fileRevs = reviews.filter(r => r.file === currentFile && r.highlight && r.status === 'open' && (!rd || r.timestamp > rd))
    for (const rev of fileRevs) {
      applyHighlight(contentRef.current, rev.highlight, rev.id)
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
  }, [content, reviews, currentFile, autoStatus])

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

  const loadFile = async (filePath) => {
    const res = await fetch(`${API}/file/${filePath}`)
    const data = await res.json()
    setCurrentFile(data.path)
    setContent(data.content)
    setPendingSelection(null)
    setNewComment(null)
    setActiveComment(null)
  }

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
    const res = await fetch(`${API}/reviews`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ file: currentFile, highlight: newComment.text, comment: commentText.trim() }),
    })
    const review = await res.json()
    setReviews(prev => [...prev, review])
    setNewComment(null)
    setCommentText('')
    window.getSelection()?.removeAllRanges()
  }

  const resolveReview = async (id) => {
    const res = await fetch(`${API}/reviews/${id}`, {
      method: 'PATCH',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ status: 'resolved' }),
    })
    const updated = await res.json()
    setReviews(prev => prev.map(r => r.id === id ? updated : r))
  }

  const deleteReview = async (id) => {
    await fetch(`${API}/reviews/${id}`, { method: 'DELETE' })
    setReviews(prev => prev.filter(r => r.id !== id))
  }

  const acceptOverlap = async (sectionA, sectionB, reason) => {
    await fetch(`${API}/overlaps/accept`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ section_a: sectionA, section_b: sectionB, reason }),
    })
    setOverlaps(prev => prev.filter(o =>
      !(([o.section_a, o.section_b].sort().join('|')) === [sectionA, sectionB].sort().join('|'))
    ))
  }

  const toggleFlag = async (field) => {
    if (!currentFile) return
    const res = await fetch(`${API}/review-status`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ file: currentFile, field }),
    })
    const data = await res.json()
    const st = data.status || {}
    setManualStatus(prev => {
      const next = { ...prev }
      if (Object.keys(st).length === 0) {
        delete next[data.file]
      } else {
        next[data.file] = st
      }
      return next
    })
  }

  const filteredFiles = filter
    ? files.filter(f => f.toLowerCase().includes(filter.toLowerCase()))
    : files
  const tree = useMemo(() => buildTree(filteredFiles), [filteredFiles])

  const reviewCounts = useMemo(() => {
    const c = {}
    for (const r of reviews) if (r.status === 'open') c[r.file] = (c[r.file] || 0) + 1
    return c
  }, [reviews])

  const fileReviews = reviews.filter(r => r.file === currentFile)
  const openReviews = fileReviews.filter(r => r.status === 'open')
  const resolvedReviews = fileReviews.filter(r => r.status === 'resolved')

  // Stale = auto-reviewed after comment was created (fixes were applied)
  const fileAutoDate = currentFile ? autoStatus[currentFile] : null
  const fileFlags = (currentFile && manualStatus[currentFile]) || {}
  const isReviewed = !!fileFlags.reviewed
  const isComplete = !!fileFlags.complete
  const activeReviews = openReviews.filter(r => !fileAutoDate || r.timestamp > fileAutoDate)
  const staleReviews = openReviews.filter(r => fileAutoDate && r.timestamp <= fileAutoDate)

  // Resolve vertical overlaps in comment positions (active only)
  const resolvedPositions = useMemo(() => {
    const items = activeReviews
      .map(r => ({ id: r.id, y: commentPositions[r.id] ?? -1 }))
      .filter(it => it.y >= 0)
      .sort((a, b) => a.y - b.y)
    const GAP = 90
    for (let i = 1; i < items.length; i++) {
      if (items[i].y < items[i - 1].y + GAP) items[i].y = items[i - 1].y + GAP
    }
    const out = {}
    for (const it of items) out[it.id] = it.y
    return out
  }, [activeReviews, commentPositions])

  const orphanedReviews = activeReviews.filter(r => !(r.id in commentPositions))
  const renderedHtml = useMemo(() => content ? marked.parse(content) : '', [content])

  const findFileForEntity = (entityId) => {
    return files.find(f => f.endsWith(`/${entityId}.md`) || f.endsWith(`${entityId}.md`)) || ''
  }

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
            collapsed={collapsed} onToggle={toggleCollapsed} reviewCounts={reviewCounts} filter={filter} manualStatus={manualStatus} />
        </div>
        <div style={{ borderTop: '1px solid #2a2a4a', padding: '6px 10px', fontSize: '10px' }}>
          <div style={{ color: '#555', marginBottom: overlaps.length > 0 ? 6 : 0 }}>
            {reviews.filter(r => r.status === 'open').length} open / {reviews.length} total
          </div>
          {overlaps.length > 0 && (
            <button onClick={() => { setShowOverlaps(!showOverlaps); if (!showOverlaps) setCurrentFile(null) }}
              style={{ width: '100%', padding: '5px 8px', border: '1px solid #4a3a1a', borderRadius: '4px', background: showOverlaps ? '#2a2a1a' : '#1a1a10', color: '#f59e0b', cursor: 'pointer', fontSize: '11px', textAlign: 'left' }}>
              {overlaps.length} section overlap{overlaps.length !== 1 ? 's' : ''} to review
            </button>
          )}
        </div>
      </div>

      {/* Main */}
      {showOverlaps ? (
        <div style={{ flex: 1, display: 'flex', flexDirection: 'column', overflow: 'hidden' }}>
          <div style={{ padding: '8px 20px', borderBottom: '1px solid #2a2a4a', background: '#14142a', flexShrink: 0 }}>
            <span style={{ fontSize: '13px', color: '#f59e0b' }}>Section Overlaps</span>
            <span style={{ fontSize: '11px', color: '#555', marginLeft: 8 }}>
              {overlaps.length} pair{overlaps.length !== 1 ? 's' : ''} — accept or fix
            </span>
          </div>
          <div style={{ flex: 1, overflowY: 'auto', padding: '12px 20px' }}>
            {overlaps.map((o, i) => (
              <div key={i} style={{ background: '#1a1a30', border: '1px solid #262648', borderRadius: '5px', padding: '12px', marginBottom: '10px' }}>
                <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start', marginBottom: '6px' }}>
                  <div>
                    <span style={{ color: '#e0e0ff', fontSize: '13px', fontWeight: 500 }}>
                      {o.entity_a}:<span style={{ color: '#818cf8' }}>{o.heading_a}</span>
                    </span>
                    <span style={{ color: '#555', margin: '0 8px' }}>&harr;</span>
                    <span style={{ color: '#e0e0ff', fontSize: '13px', fontWeight: 500 }}>
                      {o.entity_b}:<span style={{ color: '#818cf8' }}>{o.heading_b}</span>
                    </span>
                  </div>
                  <div style={{ display: 'flex', gap: 6, alignItems: 'center', flexShrink: 0 }}>
                    <span style={{ fontSize: '12px', color: o.similarity > 0.93 ? '#f87171' : '#f59e0b', fontFamily: 'monospace' }}>
                      {o.similarity.toFixed(3)}
                    </span>
                    <span style={{ fontSize: '9px', color: '#555', textTransform: 'uppercase' }}>{o.space}</span>
                  </div>
                </div>
                <div style={{ display: 'flex', gap: 6, marginTop: '8px' }}>
                  <button onClick={() => acceptOverlap(o.section_a, o.section_b, 'Legitimate overlap')}
                    style={{ padding: '3px 10px', border: '1px solid #2a4a2a', borderRadius: '3px', background: 'none', color: '#4ade80', cursor: 'pointer', fontSize: '10px' }}>
                    Accept
                  </button>
                  <button onClick={() => { setShowOverlaps(false); loadFile(o.entity_a.includes('/') ? o.entity_a : findFileForEntity(o.entity_a)) }}
                    style={{ padding: '3px 10px', border: '1px solid #2a2a4a', borderRadius: '3px', background: 'none', color: '#818cf8', cursor: 'pointer', fontSize: '10px' }}>
                    View {o.entity_a}
                  </button>
                  <button onClick={() => { setShowOverlaps(false); loadFile(o.entity_b.includes('/') ? o.entity_b : findFileForEntity(o.entity_b)) }}
                    style={{ padding: '3px 10px', border: '1px solid #2a2a4a', borderRadius: '3px', background: 'none', color: '#818cf8', cursor: 'pointer', fontSize: '10px' }}>
                    View {o.entity_b}
                  </button>
                </div>
              </div>
            ))}
            {overlaps.length === 0 && <div style={{ color: '#555', fontSize: '13px' }}>No unresolved overlaps.</div>}
          </div>
        </div>
      ) : currentFile ? (
        <div style={{ flex: 1, display: 'flex', flexDirection: 'column', overflow: 'hidden' }}>
          <div style={{ padding: '8px 20px', borderBottom: '1px solid #2a2a4a', display: 'flex', alignItems: 'center', justifyContent: 'space-between', background: '#14142a', flexShrink: 0, gap: 8 }}>
            <span style={{ fontSize: '13px', color: '#9090b0', flex: 1 }}>{currentFile}</span>
            {staleReviews.length > 0 && (
              <span style={{ fontSize: '10px', color: '#666', fontStyle: 'italic' }}>
                {staleReviews.length} stale
              </span>
            )}
            {activeReviews.length > 0 && (
              <span style={{ fontSize: '11px', color: '#555' }}>
                {activeReviews.length} active
              </span>
            )}
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
                <div ref={contentRef} className="md"
                  style={{ padding: '20px 28px', lineHeight: 1.7, fontSize: '14px', maxWidth: '700px' }}
                  onMouseUp={handleMouseUp}
                  dangerouslySetInnerHTML={{ __html: renderedHtml }}
                />
              </div>

              {/* Comment gutter - pinned to right edge */}
              <div className="gutter"
                style={{ width: '280px', flexShrink: 0, position: 'relative', borderLeft: '1px solid #222240', background: '#131328', minHeight: maxY + 200 + 'px' }}>

                {/* Positioned active comments */}
                {activeReviews.filter(r => r.id in resolvedPositions).map(r => (
                  <div key={r.id} id={`gc-${r.id}`}
                    className={`gutter-card${activeComment === r.id ? ' active' : ''}`}
                    onClick={() => {
                      setActiveComment(r.id)
                      const mark = contentRef.current?.querySelector(`mark[data-review-id="${r.id}"]`)
                      if (mark) {
                        mark.scrollIntoView({ behavior: 'smooth', block: 'center' })
                        mark.classList.add('active')
                        setTimeout(() => mark.classList.remove('active'), 1500)
                      }
                    }}
                    style={{
                      position: 'absolute', top: resolvedPositions[r.id], left: 10, right: 10,
                      background: '#1a1a30', border: '1px solid #262648', borderRadius: '4px',
                      padding: '8px 10px', fontSize: '12px', cursor: 'pointer',
                    }}>
                    {r.highlight && (
                      <div style={{ color: '#d97706', fontStyle: 'italic', fontSize: '11px', lineHeight: 1.3, marginBottom: '4px', overflow: 'hidden', display: '-webkit-box', WebkitLineClamp: 2, WebkitBoxOrient: 'vertical' }}>
                        &ldquo;{r.highlight.length > 70 ? r.highlight.slice(0, 70) + '\u2026' : r.highlight}&rdquo;
                      </div>
                    )}
                    <div style={{ color: '#c8c8e0', lineHeight: 1.4 }}>{r.comment}</div>
                    <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginTop: '6px' }}>
                      <span style={{ fontSize: '10px', color: '#444' }}>{new Date(r.timestamp).toLocaleDateString()}</span>
                      <span>
                        <button className="btn-sm" onClick={e => { e.stopPropagation(); resolveReview(r.id) }}
                          style={{ color: '#4ade80', border: '1px solid #1a3a1a' }}>resolve</button>
                        <button className="btn-sm" onClick={e => { e.stopPropagation(); deleteReview(r.id) }}
                          style={{ color: '#f87171', border: '1px solid #3a1a1a', marginLeft: 3 }}>delete</button>
                      </span>
                    </div>
                  </div>
                ))}

                {/* Orphaned (highlight text not found in current doc) */}
                {orphanedReviews.length > 0 && (
                  <div style={{ position: 'absolute', top: (allPositionValues.length > 0 ? maxY + 110 : 16), left: 10, right: 10 }}>
                    <div style={{ fontSize: '9px', color: '#444', textTransform: 'uppercase', letterSpacing: '0.5px', marginBottom: '4px' }}>Unanchored</div>
                    {orphanedReviews.map(r => (
                      <div key={r.id} style={{ background: '#1a1a2e', border: '1px solid #222240', borderRadius: '4px', padding: '8px 10px', fontSize: '12px', marginBottom: '6px', opacity: 0.65 }}>
                        {r.highlight && (
                          <div style={{ color: '#d97706', fontStyle: 'italic', fontSize: '11px', marginBottom: '3px' }}>&ldquo;{r.highlight.slice(0, 60)}&rdquo;</div>
                        )}
                        <div style={{ color: '#b0b0c8', lineHeight: 1.4 }}>{r.comment}</div>
                        <div style={{ display: 'flex', justifyContent: 'flex-end', gap: 4, marginTop: 4 }}>
                          <button className="btn-sm" onClick={() => resolveReview(r.id)} style={{ color: '#4ade80', border: '1px solid #1a3a1a' }}>resolve</button>
                          <button className="btn-sm" onClick={() => deleteReview(r.id)} style={{ color: '#f87171', border: '1px solid #3a1a1a' }}>delete</button>
                        </div>
                      </div>
                    ))}
                  </div>
                )}

                {/* Stale comments (file reviewed after comment was created) */}
                {staleReviews.length > 0 && (
                  <div style={{ position: 'absolute', top: (allPositionValues.length > 0 || orphanedReviews.length > 0 ? maxY + 110 + orphanedReviews.length * 80 : 16), left: 10, right: 10 }}>
                    <div style={{ fontSize: '9px', color: '#444', textTransform: 'uppercase', letterSpacing: '0.5px', marginBottom: '4px' }}>Stale (file reviewed)</div>
                    {staleReviews.map(r => (
                      <div key={r.id} style={{ background: '#16162a', border: '1px dashed #222240', borderRadius: '4px', padding: '8px 10px', fontSize: '12px', marginBottom: '6px', opacity: 0.4 }}>
                        {r.highlight && (
                          <div style={{ color: '#886600', fontStyle: 'italic', fontSize: '11px', marginBottom: '3px', textDecoration: 'line-through' }}>&ldquo;{r.highlight.slice(0, 60)}&rdquo;</div>
                        )}
                        <div style={{ color: '#888', lineHeight: 1.4 }}>{r.comment}</div>
                        <div style={{ display: 'flex', justifyContent: 'flex-end', gap: 4, marginTop: 4 }}>
                          <button className="btn-sm" onClick={() => deleteReview(r.id)} style={{ color: '#f87171', border: '1px solid #3a1a1a' }}>delete</button>
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

          {/* Resolved comments drawer */}
          {resolvedReviews.length > 0 && (
            <div style={{ borderTop: '1px solid #2a2a4a', background: '#14142a', flexShrink: 0 }}>
              <button onClick={() => setShowResolved(!showResolved)}
                style={{ padding: '6px 20px', border: 'none', background: 'none', color: '#6366f1', cursor: 'pointer', fontSize: '11px', width: '100%', textAlign: 'left' }}>
                {showResolved ? '\u25bc' : '\u25b6'} {resolvedReviews.length} resolved comment{resolvedReviews.length !== 1 ? 's' : ''}
              </button>
              {showResolved && (
                <div style={{ maxHeight: '200px', overflowY: 'auto', padding: '0 20px 10px' }}>
                  {resolvedReviews.map(r => (
                    <div key={r.id} style={{ display: 'flex', gap: 10, alignItems: 'flex-start', padding: '6px 0', borderBottom: '1px solid #1a1a30', opacity: 0.5, fontSize: '12px' }}>
                      <div style={{ flex: 1 }}>
                        {r.highlight && <span style={{ color: '#d97706', fontStyle: 'italic' }}>&ldquo;{r.highlight.slice(0, 50)}&rdquo; </span>}
                        <span style={{ color: '#999' }}>{r.comment}</span>
                      </div>
                      <button className="btn-sm" onClick={() => deleteReview(r.id)}
                        style={{ color: '#f87171', border: '1px solid #3a1a1a', flexShrink: 0 }}>delete</button>
                    </div>
                  ))}
                </div>
              )}
            </div>
          )}
        </div>
      ) : (
        <div style={{ flex: 1, display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center' }}>
          <div style={{ fontSize: '15px', color: '#3a3a5a' }}>Select a file to review</div>
          <div style={{ fontSize: '12px', color: '#2a2a4a', marginTop: '6px' }}>Highlight text, then click + to comment</div>
        </div>
      )}
    </div>
  )
}

export default App
