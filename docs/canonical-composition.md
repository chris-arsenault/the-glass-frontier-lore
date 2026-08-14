# Canonical Composition and Editorial Metadata

Lorecraft states a fact once, computes what can be derived, and keeps editorial
state beside the content it governs without rendering that state as lore.

## Typed marker resolution

Every inline binding is a `Marker` subclass. A marker names the callback its
resolver must implement; renderers, validation, and lint supply different
resolvers for the same traversal.

```ruby
class StatMarker < Marker
  KIND = :stat
  def resolve(resolver) = resolver.on_stat(self)
  def plain = "[stat:#{id}]"
end
```

This keeps behavior specific to both marker and output context. A reference can
be a relative Markdown link, a wiki link, a reader route, or a validation check
without a central `case` statement that silently forgets one consumer. A
resolver missing the callback fails immediately.

## Computed time

Dates are canonical facts; elapsed spans are derived wording.

```ruby
"the ring broke #{elapsed :the_glassfall, ago: true}"
"debris has had #{elapsed :the_glassfall, approx: true} to settle"
"isolated for #{elapsed :the_glassfall, :the_rekindling}"
"Hab Meridian in #{year :now} CE"
```

All anchors use the world's timeline. Exact output uses digits, approximate
output uses one centralized rounding vocabulary, and `duration` handles lengths
with no date anchor. Lint inventories hand-typed spans so authors can distinguish
a legitimate free duration from copied timeline arithmetic.

When an event has no date, `elapsed future: "Name", about: 200` preserves the
estimate and records the missing anchor. Adding the matching dated id makes all
dependent spans exact without editing their prose.

## Transclusion

The entity a passage is about owns it. Other entries embed that prose instead
of restating it.

```ruby
#{embed :bloom_coalition}
#{embed :bloom_coalition, :tensions}
```

Every embed derives an `embeds` edge. Validation rejects an unknown target, a
shell, a section with no prose, and public composition from DM-only material.
Lint rejects cycles. The renderer resolves nested markers for the destination
format and audience.

## Entry logs

`log` records why an entry changed, what evidence corrected a fact, or which
decision settled a name.

```ruby
log "2026-08-08 — Corrected the date after the timeline boundary moved."
```

Logs remain queryable through `ruby lorecraft/bin/lorecraft log ID --world ID`
and the private editorial bundle. No reader render includes them. A historical
reason therefore cannot be mistaken for an in-world claim.

## Questions and review provenance

An unresolved judgment is a `question` on the entity. An optional `on:` anchor
quotes the rendered passage it concerns, and lint warns when that passage no
longer exists.

```ruby
question "Which office issued the seal?", raised: "2026-08-12", on: "municipal seal"
```

Delete the declaration when the question is resolved. Add a `log` only when the
reason for the resulting decision will matter later.

`reviewed "YYYY-MM-DD"` on an entity means a human read its prose. A block can
override the date and declare `drafted_by: :ai`, `:human`, or `:ai_human`.
`provenance` compares these declarations with content-aware git history and
expires a review when its prose changes.

The world can declare a default drafter so a corpus-wide truth needs one line.
Never infer a human review from an edit or set the date on a person's behalf.

## Metadata channels

The canonical DSL holds both lore and the metadata attached to it, but renderers
separate their audiences:

| Data | Public reader bundle | Private editorial bundle | CLI query |
|---|---|---|---|
| prose and known facts | yes | no | `page ID`, `facts ID` |
| typed graph and chronology | yes | no | `connections ID`, `path FROM TO`, `timeline ID`, `graph` |
| unresolved future names | name only | no | `lint`, `queue [ID]` |
| questions | no | yes | `queue [ID]` |
| entry logs | no | yes | `log ID` |
| drafting and review state | no | yes | `provenance [ID]` |
| missing expected facts | no | yes | `facts [ID]` |
| DM entry metadata | no | yes | audience-specific projections |

The reader combines the public bundle with authorized editorial records when a
reviewer signs in. The separation prevents authoring state from interrupting
encyclopedia prose while keeping it attached to stable entity ids and versioned
source.

Queries whose help lists `--audience player` apply the same public boundary.
Queries whose help lists `--format json` serialize the same typed result
directly, including diagnostic records for validation and lint; the text report
is not an interchange format.
