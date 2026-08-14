# Local Lore Review App

This app reads rendered entries and writes only Lorecraft review declarations.
It is a trusted local tool, separate from the deployed read-only editorial API.

## Run

Install the local dependencies once, then choose one world from `worlds.yml`:

```sh
cd tools/review-app
npm ci
WORLD=dry-war npm run dev
```

Vite serves the browser on `http://localhost:3456`. The Express bridge listens
on `http://127.0.0.1:3457`. It binds only to loopback, has no user
authentication, and permits the declared local development origins. Do not
expose either process beyond the local machine.

## Write contract

The entry list and detail API address entities by stable id. A detail response
contains the exact entity source slice, rendered prose, direct questions and
their tokens, and a SHA-256 revision for the complete source file. Every write
must send that revision.

The Ruby bridge permits four changes:

- add one literal `question`, with an optional prose anchor;
- resolve the question identified by its exact digest token;
- set or remove one literal `reviewed` date;
- set or remove literal `status :complete`.

Setting `reviewed` asserts that the current human operator read the rendered
entry. `complete` records authoring state and does not imply human review.

`Lorecraft::SourceEdit` uses Prism to find one literal entity declaration and
refuses computed identities, computed review values, duplicates, and ambiguous
question sources. `Lorecraft::ReviewEditor` applies the candidate in memory,
reloads the full world, runs validation and error-level lint, then atomically
replaces the source while preserving its file mode. It reads and returns UTF-8
source, but revisions and syntax offsets remain byte-exact. A dry run performs
the same staging and returns a diff without writing.

A stale revision returns HTTP 409. Unknown entities or questions return 404;
invalid requests and question text return 400; other refused source shapes or
invalid candidates return 422. Failures do not fall back to text search or line
numbers and do not write partial source.

## Verify

After a review session, check the selected world and the local app boundary:

```sh
make -C ../.. check WORLD=dry-war
make -C ../.. test review-check
```

`make review-check` runs the Express boundary tests and builds the Vite client.
