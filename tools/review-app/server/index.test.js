const test = require('node:test')
const assert = require('node:assert/strict')
const { ALLOWED_ORIGINS, HOST, createApp, statusFor } = require('./index')

test('server binds only to loopback and restricts browser origins', () => {
  assert.equal(HOST, '127.0.0.1')
  assert(ALLOWED_ORIGINS.has('http://localhost:26000'))
  assert(!ALLOWED_ORIGINS.has('https://example.com'))
})

test('stale revisions map to conflict responses', () => {
  assert.equal(statusFor('stale_source'), 409)
  assert.equal(statusFor('invalid_question'), 400)
})

test('routes pass entity identity and revision to the Ruby boundary', async () => {
  const calls = []
  const app = createApp((action, payload) => {
    calls.push([action, payload])
    return { written: true, entry: { id: payload.id, revision: 'sha256:new' } }
  })
  const server = app.listen(0, HOST)
  await new Promise(resolve => server.once('listening', resolve))
  const port = server.address().port

  try {
    const response = await fetch(`http://${HOST}:${port}/api/entries/alpha/review-status/complete`, {
      method: 'PUT',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ id: 'beta', revision: 'sha256:old', value: true }),
    })

    assert.equal(response.status, 200)
    assert.deepEqual(calls, [[
      'set-complete',
      { id: 'alpha', revision: 'sha256:old', value: true },
    ]])
  } finally {
    await new Promise(resolve => server.close(resolve))
  }
})
