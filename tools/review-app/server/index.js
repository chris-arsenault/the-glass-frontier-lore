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
const AUTO_STATUS_FILE = path.join(LORE_ROOT, 'work-tracking', 'review-status.json')
const MANUAL_STATUS_FILE = path.join(LORE_ROOT, 'work-tracking', 'manual-review-status.json')

// Files that define the world's shape rather than its content — they are not
// reviewed as prose. Mirrors Lorecraft::ReviewTracker::META_FILES so that a
// path stored here is a path the CLI also recognizes.
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

// Get review status (both auto and manual)
app.get('/api/review-status', (req, res) => {
  const auto = fs.existsSync(AUTO_STATUS_FILE) ? JSON.parse(fs.readFileSync(AUTO_STATUS_FILE, 'utf-8')) : {}
  const manual = fs.existsSync(MANUAL_STATUS_FILE) ? JSON.parse(fs.readFileSync(MANUAL_STATUS_FILE, 'utf-8')) : {}
  res.json({ auto, manual })
})

// Toggle a review flag on a file
// Body: { file, field: "reviewed" | "complete" }
// Each field is an independent toggle. Stores timestamp when set, removes when toggled off.
app.post('/api/review-status', (req, res) => {
  const { file, field } = req.body
  if (!file || !field) return res.status(400).json({ error: 'file and field required' })
  if (!['reviewed', 'complete'].includes(field)) return res.status(400).json({ error: 'field must be "reviewed" or "complete"' })
  let status = {}
  if (fs.existsSync(MANUAL_STATUS_FILE)) {
    status = JSON.parse(fs.readFileSync(MANUAL_STATUS_FILE, 'utf-8'))
  }
  if (!status[file]) status[file] = {}
  if (status[file][field]) {
    delete status[file][field]
  } else {
    status[file][field] = new Date().toISOString()
  }
  if (Object.keys(status[file]).length === 0) delete status[file]
  fs.writeFileSync(MANUAL_STATUS_FILE, JSON.stringify(status, null, 2) + '\n')
  res.json({ file, status: status[file] || {} })
})

app.listen(3457, () => {
  console.log('Review API server running on http://localhost:3457')
  console.log(`Lore root: ${LORE_ROOT}`)
  console.log('Comments live in the DSL as `question` on the entity; run `make queue`.')
})
