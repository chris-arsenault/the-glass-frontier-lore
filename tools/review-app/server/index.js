const express = require('express')
const cors = require('cors')
const path = require('path')
const { spawnSync } = require('child_process')

const HOST = '127.0.0.1'
const PORT = Number(process.env.REVIEW_PORT || 3457)
const REPO_ROOT = path.resolve(__dirname, '../../../')
const WORLD = process.env.WORLD || 'glass-frontier'
const REVIEW_API = path.join(REPO_ROOT, 'lorecraft/tools/review_api.rb')
const ALLOWED_ORIGINS = new Set([
  'http://localhost:3456',
  'http://127.0.0.1:3456',
  'http://localhost:26000',
  'http://127.0.0.1:26000',
  'http://localhost:5173',
  'http://127.0.0.1:5173',
])

function statusFor(code) {
  if (code === 'stale_source') return 409
  if (code === 'unknown_entity' || code === 'unknown_question') return 404
  if (code === 'invalid_request' || code === 'invalid_question') return 400
  return 422
}

function invoke(action, payload = {}) {
  const result = spawnSync(
    'ruby', [REVIEW_API, action, '--world', WORLD],
    {
      cwd: REPO_ROOT,
      encoding: 'utf-8',
      input: JSON.stringify(payload),
      maxBuffer: 16 << 20,
    }
  )
  const raw = result.status === 0 ? result.stdout : result.stderr
  let parsed
  try {
    parsed = JSON.parse(String(raw || '').trim())
  } catch {
    parsed = {
      status: 'error',
      code: 'review_api_failure',
      message: String(raw || result.error || 'review API failed').slice(0, 1000),
      details: {},
    }
  }
  if (result.status !== 0) {
    const error = new Error(parsed.message)
    error.payload = parsed
    throw error
  }
  return parsed
}

function createApp(run = invoke) {
  const app = express()
  app.use(cors({
    origin(origin, callback) {
      if (!origin || ALLOWED_ORIGINS.has(origin)) return callback(null, true)
      return callback(new Error('origin is not allowed'))
    },
  }))
  app.use(express.json({ limit: '64kb' }))

  const send = (res, action, payload) => {
    try {
      res.json(run(action, payload))
    } catch (error) {
      const body = error.payload || {
        status: 'error', code: 'review_api_failure', message: error.message, details: {},
      }
      res.status(statusFor(body.code)).json(body)
    }
  }

  app.get('/api/entries', (_req, res) => send(res, 'entries', {}))
  app.get('/api/entries/:id', (req, res) => send(res, 'entry', { id: req.params.id }))
  app.post('/api/entries/:id/questions', (req, res) => {
    send(res, 'add-question', { ...req.body, id: req.params.id })
  })
  app.delete('/api/entries/:id/questions/:token', (req, res) => {
    send(res, 'resolve-question', {
      id: req.params.id, token: req.params.token, revision: req.body.revision,
    })
  })
  app.put('/api/entries/:id/review-status/:field', (req, res) => {
    const action = {
      reviewed: 'set-reviewed',
      complete: 'set-complete',
    }[req.params.field]
    if (!action) {
      return res.status(400).json({
        status: 'error', code: 'invalid_request', message: 'unknown review-status field', details: {},
      })
    }
    return send(res, action, { ...req.body, id: req.params.id })
  })

  return app
}

if (require.main === module) {
  createApp().listen(PORT, HOST, () => {
    console.log(`Review API server running on http://${HOST}:${PORT}`)
    console.log(`World: ${WORLD}`)
    console.log('Writes are entity-addressed, revision-checked, validated, and atomic.')
  })
}

module.exports = { ALLOWED_ORIGINS, HOST, PORT, createApp, statusFor }
