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

// The DSL files that carry content, world-root-relative — the same key space as
// review-status.json and `lorecraft review`.
app.get('/api/files', (req, res) => {
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
  res.json(files.sort())
})

// Read a specific file
app.get('/api/file/*path', (req, res) => {
  const reqPath = Array.isArray(req.params.path) ? req.params.path.join('/') : req.params.path
  const filePath = path.join(LORE_ROOT, reqPath)
  if (!filePath.startsWith(LORE_ROOT) || !fs.existsSync(filePath)) {
    return res.status(404).json({ error: 'File not found' })
  }
  res.json({ path: reqPath, content: fs.readFileSync(filePath, 'utf-8') })
})

// Comments moved into the DSL as `question` declarations on the entity, so that
// a comment cannot come unstuck from the prose it is about. Reading returns
// nothing and writing is refused rather than recreating a file the engine no
// longer reads — a second source is exactly what the move eliminated.
const COMMENTS_RETIRED = {
  error: 'Review comments live in the DSL now',
  detail: 'Add `question "...", raised: "YYYY-MM-DD", on: "<the passage>"` to the entity, ' +
          'then `make queue WORLD=<id>`.',
}

app.get('/api/reviews', (req, res) => res.json([]))
app.post('/api/reviews', (req, res) => res.status(410).json(COMMENTS_RETIRED))
app.patch('/api/reviews/:id', (req, res) => res.status(410).json(COMMENTS_RETIRED))
app.delete('/api/reviews/:id', (req, res) => res.status(410).json(COMMENTS_RETIRED))

// Review state moved onto the content too: `reviewed "YYYY-MM-DD"` and
// `status :complete` on the entity, audited by `lorecraft provenance`. The
// toggles wrote a JSON the engine no longer reads, so they are refused rather
// than recreating it.
const STATUS_RETIRED = {
  error: 'Review state lives in the DSL now',
  detail: 'Set `reviewed "YYYY-MM-DD"` and `status :complete` on the entity, ' +
          'then `make provenance WORLD=<id>`.',
}

app.get('/api/review-status', (req, res) => res.json({ auto: {}, manual: {} }))
app.post('/api/review-status', (req, res) => res.status(410).json(STATUS_RETIRED))

app.listen(3457, () => {
  console.log('Review API server running on http://localhost:3457')
  console.log(`Lore root: ${LORE_ROOT}`)
  console.log('Comments and review state live in the DSL; run `make queue` / `make provenance`.')
})
