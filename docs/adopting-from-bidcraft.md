# What to Adopt from Bidcraft

Bidcraft (`../opm-clarity/bidcraft/`) is Lorecraft forked for proposals: the lore
concepts were purged, the temporal model was deleted, and four mechanisms were
built that Lorecraft does not have. Three of them are worth taking, one is worth
taking later, and one is worth taking in principle but not in form.

The case for all of it is the same. This engine exists so that a fact is stated
once and composed everywhere, and Lorecraft currently only delivers that for
cross-references. Everything else — a number, an elapsed span, a passage that
belongs in three entries — is retyped, and retyped facts drift. On 2026-08-08 a
single wrong year turned out to be seventeen wrong elapsed spans across ten
files, all of them hand-authored restatements of two dates the timeline already
knew.

## 1. Markers as objects, with a resolver protocol

**This is the enabling refactor; everything else lands on top of it.**

Lorecraft's `Markers.scan` yields a Hash and every consumer re-decides what to do
with a `case` on `b[:kind]` — `strip`, the wiki renderer, the linter and the
validator each carry their own. Adding a marker kind means finding all of them.

Bidcraft turned each kind into a `Marker` subclass with two methods:

```ruby
class StatMarker < Marker
  KIND = :stat
  def resolve(resolver) = resolver.on_stat(self)   # double dispatch
  def plain = "[stat:#{id}]"                        # resolver-free display text
end
```

`resolve` is double dispatch because the same marker renders differently per
target — a stat in a linked entity page, an inlined document and a flattened
workshop card are three answers to one marker. Four collaborators implement the
protocol, and the fourth is the interesting one: **the validator is a resolver
too.** "Validating a marker" and "rendering a marker" are the same traversal with
different `on_*` bodies, so `ProseValidator` has no `case` on kind either.

For us the payoff is that a new computed marker costs a subclass and one method
per resolver, and a resolver that forgot one fails loudly (`NotImplementedError`)
instead of falling through a `case` to the wrong branch.

## 2. Computed spans: `elapsed`, `span`, `year`

Bidcraft's `stat` entity is the pattern: a value lives on one entity, every use
site writes `#{stat :st_x}`, and resolving a decision means editing one place.
Our equivalent need is temporal, and here we have what Bidcraft threw away — a
real timeline with fixed era boundaries, `year_for(:now)`, and a year on every
moment.

So the number should never be typed:

```ruby
"The orbital ring broke #{elapsed from: :the_glassfall}."
# → "295 years ago"

"debris that has had #{elapsed from: :the_glassfall, precision: :coarse} to settle"
# → "nearly three centuries"

"communities that evolved in isolation for #{span :the_glassfall, :the_rekindling}"
# → "a hundred and sixty-five years"

"Hab Meridian in #{year :now} is one of the most stable institutions in the system"
# → "2435 CE"
```

Anchors resolve through the same `Timeline#year_for` the graph queries already
use, so `from:` accepts an absolute year, `{era:, year:}`, a moment id, or an
entity id (resolving to its genesis moment). One class does the arithmetic:

```ruby
Elapsed = Struct.new(:from_year, :to_year) do
  def years  = to_year - from_year
  def exact  = "#{years} years"
  def coarse = ...   # the vocabulary below
end
```

`coarse` is the part that earns its keep, because a rounding vocabulary fixed in
one place is a rounding vocabulary that cannot drift:

| Span | Renders |
|---|---|
| under 75 years | "fifty-five years" (nearest five) |
| 75–125 | "a century", "over a century" |
| 125–175 | "a century and a half" |
| 175+ | "nearly three centuries", "over two centuries" |

**And then the linter bans the literals.** A check that flags `two centuries`,
`sixty years`, `130 years ago` and their spelled-out forms in prose, pointing the
author at the marker, is what makes this DRY rather than merely available. That
check is the whole difference between a feature nobody uses and a class of defect
that cannot recur.

## 3. Transclusion: `embed`

The composition primitive, and the thing this repository is nominally for.

```ruby
#{embed :bloom_coalition}              # the target's :main prose, in place
#{embed :bloom_coalition, :tensions}   # one named section of it
```

Today a fact that belongs in three entries is typed three times — the Coalition's
dissolution clause is written out in `bloom_coalition`, `displacement_council`
and `tempered_accord`, and the three will diverge. With `embed`, one entity owns
the passage and the others transclude it. Our `prose ..., section: :x` already
names sections, so the target side needs no change.

Three properties to take with it:

- **Every embed derives an `embeds` edge.** The composition web joins the graph
  without anyone declaring it, so `make topology` counts it and the
  prominence-reach check can treat "A transcludes B" as the connection it is.
- **Compile-time refusal:** unknown target, empty transclusion, cycle.
- **Audience safety at the composition layer.** Bidcraft refuses to embed
  internal-only prose into customer-facing output. That is exactly our DM-leak
  rule, enforced where the leak would happen rather than after the fact.

## 4. `log` entries — history that is data, not prose

`log "2026-08-08 — corrected from 2438; predates the timeline extension"` on the
entity. Compiled, queryable, rendered nowhere a reader looks. We currently have
nowhere to put that sentence except a work-tracking file that loses its
connection to the entity, or the prose itself, where it does not belong.

## 5. Prose provenance — later, and worth it

Bidcraft declares per block: `origin:` (`:verbatim` / `:adapted` /
`:synthesized` / `:authored` / `:structural`), `from:` naming source entities,
`drafted_by:` (`:ai` / `:human` / `:ai_human`), and `reviewed:`.

For a corpus that is largely AI-drafted and governed by voice rules a human has
to check, `drafted_by` and `reviewed` are the right shape — and they would
replace the review tracker, which keys review state to file paths outside the
world and therefore broke when the repository was reorganised. Block-level state
that moves with the block survives that for free, and per-block granularity beats
per-file.

Deferred because it touches every `prose` call in the corpus and would migrate
the review JSON a second time. Take it after the composition work, not before.

## 6. Metadata as a side channel — the principle, not the docx

Bidcraft renders every computed annotation into Word comments: seven named
comment authors so a reviewer can filter by lineage, provenance, guidance,
compliance gate, template. We do not want docx. The transferable lesson is
narrower and we should take it: **`⟦UNVERIFIED⟧` used to sit inline and
interrupt the sentence, so they moved it into the comment and left the prose
clean.**

Our equivalent inline interruption is the `[future:Name]` stub. The wiki render
has two channels available for it — HTML comments in the generated markdown, and
a Lineage block on internal entity pages — and the body text should keep neither.

## Sequence

1. Markers → objects and the resolver protocol. No behaviour change; tests pin it.
2. `elapsed` / `span` / `year`, the coarse vocabulary, and the linter check that
   bans hand-typed spans. Then delete the seventeen literals.
3. `embed` transclusion with derived `embeds` edges and audience safety.
4. `log` entries.
5. Provenance and `reviewed:`, retiring the git-mtime review tracker.
6. Metadata out of body prose in the wiki render.

Steps 1 and 2 are one piece of work and pay for themselves immediately. Step 3 is
the one that changes how the corpus is authored.
