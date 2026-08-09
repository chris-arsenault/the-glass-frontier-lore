const express = require('express')
const cors = require('cors')
const fs = require('fs')
const path = require('path')

const app = express()
app.use(cors())
app.use(express.json())

// The app serves one world at a time. WORLD picks which; LORE_ROOT overrides
// the whole path for a world kept outside worlds/.
const REPO_ROOT = path.resolve(__dirname, '../../../')
const WORLD = process.env.WORLD || 'glass-frontier'
const LORE_ROOT = process.env.LORE_ROOT || path.join(REPO_ROOT, 'worlds', WORLD)

// Files that define the world's shape rather than its content — they are not
// reviewed as prose.
const META_FILES = ['schema.rb', 'timeline.rb', 'pages.rb']

// The DSL files that carry content, world-root-relative.
function listFiles() {
  const files = []
  const walkDir = (dir, prefix) => {
    if (!fs.existsSync(dir)) return
    for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
      const rel = path.join(prefix, entry.name)
      if (entry.isDirectory()) {
        walkDir(path.join(dir, entry.name), rel)
      } else if (entry.name.endsWith('.rb') && !META_FILES.includes(entry.name)) {
        files.push(rel)
      }
    }
  }
  walkDir(path.join(LORE_ROOT, 'world'), 'world')
  return files.sort()
}

app.get('/api/files', (req, res) => res.json(listFiles()))

// Read a specific file
app.get('/api/file/*path', (req, res) => {
  const reqPath = Array.isArray(req.params.path) ? req.params.path.join('/') : req.params.path
  const filePath = path.join(LORE_ROOT, reqPath)
  if (!filePath.startsWith(LORE_ROOT) || !fs.existsSync(filePath)) {
    return res.status(404).json({ error: 'File not found' })
  }
  res.json({ path: reqPath, content: fs.readFileSync(filePath, 'utf-8') })
})

// --- writing the DSL --------------------------------------------------------
//
// There is no sidecar. A comment is a `question` declaration on the entity and a
// sign-off is `reviewed` / `status`, so this server edits the .rb file itself.
// It only ever inserts or removes whole declaration lines; prose is never
// touched.

const resolve = (rel) => {
  const file = path.join(LORE_ROOT, rel || '')
  if (!file.startsWith(LORE_ROOT) || !fs.existsSync(file)) return null
  return file
}

// Ruby double-quoted string body. `#{` has to go too, or a quoted passage
// containing a marker would interpolate when the world loads.
const rubyString = (text) =>
  String(text).replace(/\\/g, '\\\\').replace(/"/g, '\\"').replace(/#\{/g, '\\#{').replace(/\n+/g, ' ').trim()

// An `on:` anchor is matched against the prose a reader sees, and a marker
// becomes its own text when the world loads — so a selection spanning
// `#{ref :x, "Label"}` matches nothing. Keep the longest marker-free run, and
// drop the anchor entirely if what is left is too short to identify a passage.
// The floor guards against a scrap left behind by trimming, so it only applies
// when there was something to trim. A selection from the prose view arrives
// whole, and a short distinctive word is a fine anchor.
const ANCHOR_MIN = 12
const anchorFrom = (selection) => {
  const text = String(selection || '').replace(/\s+/g, ' ').trim()
  if (!text) return null
  if (!text.includes('#{')) return text

  const best = text.split(/#\{[^}]*\}?/).map((s) => s.replace(/\s+/g, ' ').trim())
    .sort((a, b) => b.length - a.length)[0] || ''
  return best.length >= ANCHOR_MIN ? best : null
}

const QUESTION_RE = /^(\s*)question\s+"((?:[^"\\]|\\.)*)"(.*)$/
const kwarg = (tail, name) => {
  const m = tail.match(new RegExp(`${name}:\\s*"((?:[^"\\\\]|\\\\.)*)"`))
  return m ? m[1].replace(/\\(.)/g, '$1') : null
}

const readQuestions = (file) =>
  fs.readFileSync(file, 'utf-8').split('\n').flatMap((line, i) => {
    const m = line.match(QUESTION_RE)
    if (!m) return []
    return [{ line: i, text: m[2].replace(/\\(.)/g, '$1'), raised: kwarg(m[3], 'raised'), on: kwarg(m[3], 'on') }]
  })

// Declarations sit above the prose they concern, so a new one goes in after the
// last existing declaration and before the first `prose` call.
const insertionPoint = (lines) => {
  const lastQuestion = lines.reduce((acc, l, i) => (QUESTION_RE.test(l) ? i : acc), -1)
  if (lastQuestion >= 0) return lastQuestion + 1
  const firstProse = lines.findIndex((l) => /^\s*prose\b/.test(l))
  return firstProse >= 0 ? firstProse : Math.max(lines.length - 1, 0)
}

// The entry as a reader sees it. The engine renders it, because the engine is
// what knows how a marker resolves — reimplementing that here would be a second
// answer to the same question. An anchor taken from this view matches the prose
// `make check` verifies the anchor against.
const { execFileSync } = require('child_process')
const ENTITY_ID_RE = /^\s*\w+\s+:(\w+)\s+do/m

app.get('/api/prose', (req, res) => {
  const file = resolve(req.query.file)
  if (!file) return res.status(404).json({ error: 'File not found' })

  const id = (fs.readFileSync(file, 'utf-8').match(ENTITY_ID_RE) || [])[1]
  if (!id) return res.status(422).json({ error: 'No entity declaration in this file' })

  try {
    const markdown = execFileSync(
      'ruby', [path.join(REPO_ROOT, 'lorecraft/bin/lorecraft'), 'page', id, '--world', WORLD],
      { cwd: REPO_ROOT, encoding: 'utf-8', maxBuffer: 8 << 20 }
    )
    res.json({ id, markdown })
  } catch (e) {
    res.status(500).json({ error: 'render failed', detail: String(e.stderr || e.message).slice(0, 500) })
  }
})

// One pass over the corpus for the sidebar: how many questions each entry
// carries and whether it has been read and finished.
app.get('/api/index', (req, res) => {
  const out = {}
  for (const rel of listFiles()) {
    const file = path.join(LORE_ROOT, rel)
    out[rel] = { ...readFlags(file), questions: readQuestions(file).length }
  }
  res.json(out)
})

app.get('/api/questions', (req, res) => {
  const file = resolve(req.query.file)
  if (!file) return res.status(404).json({ error: 'File not found' })
  res.json(readQuestions(file))
})

app.post('/api/questions', (req, res) => {
  const { file: rel, text, on } = req.body
  const file = resolve(rel)
  if (!file) return res.status(404).json({ error: 'File not found' })
  if (!text || !String(text).trim()) return res.status(400).json({ error: 'text required' })

  const lines = fs.readFileSync(file, 'utf-8').split('\n')
  const at = insertionPoint(lines)
  const indent = (lines[at] || '  ').match(/^\s*/)[0] || '  '
  const parts = [`${indent}question "${rubyString(text)}"`, `raised: "${today()}"`]
  const anchor = anchorFrom(on)
  if (anchor) parts.push(`on: "${rubyString(anchor)}"`)
  lines.splice(at, 0, parts.join(', '))
  fs.writeFileSync(file, lines.join('\n'))
  res.json({ ok: true, questions: readQuestions(file) })
})

app.delete('/api/questions', (req, res) => {
  const file = resolve(req.query.file)
  const at = Number(req.query.line)
  if (!file) return res.status(404).json({ error: 'File not found' })

  const lines = fs.readFileSync(file, 'utf-8').split('\n')
  if (!QUESTION_RE.test(lines[at] || '')) return res.status(409).json({ error: 'Line is not a question' })
  lines.splice(at, 1)
  fs.writeFileSync(file, lines.join('\n'))
  res.json({ ok: true, questions: readQuestions(file) })
})

// `reviewed "YYYY-MM-DD"` and `status :complete` on the entity. Both are single
// declaration lines, so a toggle is an insert or a removal.
const FLAGS = {
  reviewed: { match: /^\s*reviewed\s+"/, line: (indent) => `${indent}reviewed "${today()}"` },
  complete: { match: /^\s*status\s+:complete\b/, line: (indent) => `${indent}status :complete` },
}

const readFlags = (file) => {
  const lines = fs.readFileSync(file, 'utf-8').split('\n')
  return Object.fromEntries(
    Object.entries(FLAGS).map(([name, f]) => [name, lines.some((l) => f.match.test(l))])
  )
}

app.get('/api/review-status', (req, res) => {
  const file = resolve(req.query.file)
  if (!file) return res.status(404).json({ error: 'File not found' })
  res.json(readFlags(file))
})

app.post('/api/review-status', (req, res) => {
  const { file: rel, field } = req.body
  const file = resolve(rel)
  const flag = FLAGS[field]
  if (!file) return res.status(404).json({ error: 'File not found' })
  if (!flag) return res.status(400).json({ error: 'field must be "reviewed" or "complete"' })

  let lines = fs.readFileSync(file, 'utf-8').split('\n')
  const existing = lines.findIndex((l) => flag.match.test(l))
  if (existing >= 0) {
    lines.splice(existing, 1)
  } else {
    const at = insertionPoint(lines)
    lines.splice(at, 0, flag.line((lines[at] || '  ').match(/^\s*/)[0] || '  '))
  }
  fs.writeFileSync(file, lines.join('\n'))
  res.json(readFlags(file))
})

function today() {
  return new Date().toISOString().slice(0, 10)
}

app.listen(3457, () => {
  console.log('Review API server running on http://localhost:3457')
  console.log(`Lore root: ${LORE_ROOT}`)
  console.log('Writes `question` / `reviewed` / `status` into the DSL. Run `make check` after.')
})
