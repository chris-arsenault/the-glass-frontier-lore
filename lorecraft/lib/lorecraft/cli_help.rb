# frozen_string_literal: true

module Lorecraft
  # Task-sized documentation for the command line. The CLI should let a person
  # or an agent discover the next useful query without reading the executable or
  # loading the whole corpus into context.
  module CLIHelp
    EXE = "ruby lorecraft/bin/lorecraft"

    COMMANDS = {
      "worlds" => {
        summary: "List the worlds in worlds.yml and show the default.",
        usage: "worlds",
        body: <<~TEXT,
          Use this before assuming a world id. A scaffold appears in the list but
          is skipped by repository-wide content checks and reader-data builds.
        TEXT
      },
      "search" => {
        summary: "Find canonical entities when the stable id is unknown.",
        usage: "search QUERY [--kind KIND] [--tag TAG] [--limit N] [--audience all|player] [--at now|YEAR] [--format text|json] [--world ID]",
        body: <<~TEXT,
          Search titles, aliases, tags, subkinds, and resolved entry summaries.
          Results are ranked and bounded, and include the stable id and canonical
          source path for the next query. Player audience excludes DM entries,
          shells, and non-reader kinds. The default limit is 12; the maximum is 100.
        TEXT
      },
      "connections" => {
        summary: "Show every typed edge touching one entity.",
        usage: "connections ID [--at now|YEAR] [--audience all|player] [--format text|json] [--world ID]",
        body: <<~TEXT,
          Inspect incoming and outgoing relationships after finding or rendering
          an entry. Each row includes the neighbor's stable id, title, type, source
          path, complete interval, and whether it is live at the selected year.
          The establishing moment or named relation is shown when available.
        TEXT
      },
      "path" => {
        summary: "Find a bounded shortest path through live typed edges.",
        usage: "path FROM TO [--at now|YEAR] [--audience all|player] [--max-hops N] [--format text|json] [--world ID]",
        body: <<~TEXT,
          Traverse relationships in either direction while preserving and showing
          each edge's canonical direction. Only edges live at the selected year
          participate. active_during, emerged_during, created_during,
          disappeared_during, and mentions are excluded so shared structural
          nodes do not manufacture an uninformative shortcut. The default is 6
          hops and the maximum is 20.
        TEXT
      },
      "schema" => {
        summary: "Inspect the selected world's loaded schema.",
        usage: "schema [kinds | kind NAME | relations | relation NAME | tags | sections] [--format text|json] [--world ID]",
        body: <<~TEXT,
          Query the ontology that validation will enforce after shared craft and
          world extensions are loaded. Kind detail includes subkinds and fact
          shapes. Relation detail includes category, domain, range, cardinality,
          time behavior, inverse, symmetry, and exclusions when declared.
        TEXT
      },
      "guide" => {
        summary: "Read one authoritative craft or world guidance file.",
        usage: "guide [list | NAME] [--format text|json] [--world ID]",
        body: <<~TEXT,
          List the guidance available for the selected world, or print one file
          with its canonical repo-relative path. guide world reads the world's
          CLAUDE.md. The short aliases voice, naming, method, and canon prefer a
          matching world guide and fall back to the relevant shared guide.
          Content is read from Markdown, not copied here.
        TEXT
      },
      "page" => {
        summary: "Render one entry as reviewable Markdown on stdout.",
        usage: "page ID [--audience all|player] [--world ID]",
        body: <<~TEXT,
          Use this for the present-day reader text of one known entry. It resolves
          references, transclusions, relationship markers, and computed dates.
          The source DSL remains authoritative; read the entry file before editing.
        TEXT
      },
      "timeline" => {
        summary: "Show every state-changing effect that touches one entity.",
        usage: "timeline ID [--audience all|player] [--format text|json] [--world ID]",
        body: <<~TEXT,
          Use this to inspect every change to an entity and which moments or named
          relations establish those changes. Output is chronological and written
          to stdout. The default all audience includes DM effects; player filters
          them. This is an effect strip, not a state-at-year view or encyclopedia
          prose.
        TEXT
      },
      "log" => {
        summary: "Show entry-history records that never render for readers.",
        usage: "log [ID] [--world ID]",
        body: <<~TEXT,
          With an id, show why that entry's facts or wording changed. Without an
          id, show every entry log. Logs record settled editorial history, not
          facts about the fictional world.
        TEXT
      },
      "queue" => {
        summary: "Assemble open questions and computed findings.",
        usage: "queue [ID] [--format text|json] [--world ID]",
        body: <<~TEXT,
          Start here when choosing work. The report combines question declarations
          stored on entries with current lint findings; it is a view, not a tracker
          or source file. Give an entry id to keep only that entry's questions and
          computed findings whose messages name it.
        TEXT
      },
      "facts" => {
        summary: "Report expected fact coverage by kind, subkind, and entry.",
        usage: "facts [ID] [--at now|YEAR] [--format text|json] [--world ID]",
        body: <<~TEXT,
          Use this before filling an infobox or adding a repeated field. It shows
          which declared facts resolve at the selected year and names missing
          expected values. Give an entry id to see each resolved or missing value
          for that entry. Missing values should stay missing until known.
        TEXT
      },
      "topology" => {
        summary: "Measure typed-edge coverage and list thin entries.",
        usage: "topology [--world ID]",
        body: <<~TEXT,
          Use this for local graph health. It separates structural nodes from
          prominence tiers and distinguishes disconnected entries from entries
          waiting on future entities. It considers relationships across all time.
        TEXT
      },
      "web" => {
        summary: "Test whether less-prominent entries remain connected.",
        usage: "web [--world ID]",
        body: <<~TEXT,
          Use this after topology when the world may depend on famous hubs. The
          report removes mythic, then mythic and renowned, entities and lists the
          remaining components. See craft/connecting-entities.md before repairing.
        TEXT
      },
      "provenance" => {
        summary: "Report who drafted prose and whether human reviews still cover it.",
        usage: "provenance [ID] [--format text|json] [--world ID]",
        body: <<~TEXT,
          Review state comes from the DSL and git history. A review expires when
          its prose changes. Never add a human review date unless that person read
          the rendered words. Give an entry id to inspect only blocks it owns.
        TEXT
      },
      "validate" => {
        summary: "Check hard structural and audience invariants.",
        usage: "validate [--format text|json] [--world ID]",
        body: <<~TEXT,
          Validation checks ids, typed relations, domains and ranges, temporal
          causality, cardinality, controlled vocabularies, fact types, subkinds,
          provenance shapes, and public-to-DM leaks. It exits nonzero on a problem.
        TEXT
      },
      "lint" => {
        summary: "Report lore-quality errors, warnings, futures, and span inventory.",
        usage: "lint [--format text|json] [--world ID]",
        body: <<~TEXT,
          Lint checks rules that need the assembled graph or rendered prose. Errors
          exit nonzero; warnings, future names, and conversion inventory remain
          visible without failing the command. Use make check to run validation
          and lint together.
        TEXT
      },
      "render" => {
        summary: "Generate the directory-shaped Markdown projection.",
        usage: "render OUT_DIR [--audience all|player] [--at now|YEAR] [--world ID]",
        body: <<~TEXT,
          This compatibility and inspection target is generated from the DSL. It
          is not canonical input. The default audience is all; select player before
          sharing output that must exclude DM material.
        TEXT
      },
      "wiki" => {
        summary: "Generate a flat, player-only GitHub wiki export.",
        usage: "wiki OUT_DIR [--at now|YEAR] [--world ID]",
        body: <<~TEXT,
          The export includes entry pages, authored pages, indexes, tags, timeline,
          causality, and a sidebar. It excludes DM entries, non-reader kinds, and
          shells. The public React reader, not this export, is the deployed site.
        TEXT
      },
      "graph" => {
        summary: "Write or print the graph JSON projection.",
        usage: "graph [OUT_FILE] [--audience all|player] [--at now|YEAR] [--world ID]",
        body: <<~TEXT,
          The projection contains nodes and every relationship interval allowed by
          the audience. Each edge says whether it is live at the selected year. If
          OUT_FILE is omitted, JSON is written to stdout.
        TEXT
      },
      "stats" => {
        summary: "Count entities, moments, named relations, effects, and kinds.",
        usage: "stats [--world ID]",
        body: <<~TEXT,
          Use this for a compact corpus inventory. Counts describe loaded DSL state,
          not generated pages and not prose quality.
        TEXT
      },
    }.freeze

    TOPICS = %w[model workflow authoring schema-authoring markers entry time audience composition review].freeze

    module_function

    def render(topic = nil)
      return overview if topic.nil? || topic.empty?
      return command(topic, COMMANDS.fetch(topic)) if COMMANDS.key?(topic)

      public_send(topic.tr("-", "_")) if TOPICS.include?(topic)
    end

    def overview
      commands = COMMANDS.map do |name, doc|
        "  #{name.ljust(12)} #{doc.fetch(:summary)}"
      end.join("\n")

      <<~TEXT
        Lorecraft exposes a typed world through task-sized queries. Generated
        Markdown and JSON are views; worlds/<id>/world/ is the source of truth.

        Usage:
          #{EXE} COMMAND [ARGS] [OPTIONS]
          #{EXE} help COMMAND
          #{EXE} help TOPIC

        Content commands select a world with --world ID, LORECRAFT_WORLD, or
        worlds.yml. Command help lists the selectors each command uses.

        Read only the context the task needs:
          discover       worlds, guide, search, schema
          inspect entry  page, connections, timeline, log, facts
          inspect graph  path, topology, web, graph, stats
          editorial      queue, provenance
          verify         validate, lint
          export         render, wiki

        Commands:
        #{commands}

        Topics:
          model        why the DSL is the canonical store
          workflow     a context-efficient editing sequence
          authoring    entry and relationship shapes
          schema-authoring  declaring kinds, subkinds, facts, and relations
          markers      references, composition, and computed time
          entry        one entry's canonical shape and local queries
          time         dated facts, effects, and computed spans
          audience     public, DM, and editorial boundaries
          composition  ownership and transclusion
          review       questions, logs, provenance, and human review

        The repository Makefile supplies the normal gates and multi-world builds.
        Run `make check WORLD=<id>` after an edit and `make check-all` before handoff.
        Bounded inspection commands that list --format can emit native JSON for
        callers that should not parse their text reports.
      TEXT
    end

    def command(name, doc)
      <<~TEXT
        #{name} - #{doc.fetch(:summary)}

        Usage:
          #{EXE} #{doc.fetch(:usage)}

        #{doc.fetch(:body).strip}
      TEXT
    end

    def model
      <<~TEXT
        Lorecraft context model

        The Ruby files under worlds/<id>/world/ hold prose and structured facts in
        one canonical model. Loading them produces an in-memory graph and timeline.
        Commands then project the slice needed for a task: an id search, one
        authoritative guide, the live schema, one rendered page, one entry's
        neighborhood, or a bounded route through typed edges.

        This extends an LLM's effective working context without fine-tuning. The
        model can discover an unfamiliar world's vocabulary and constraints at run
        time, query current state, and receive validator feedback. It does not need
        every page in its prompt, and generated indexes or editorial records do not
        become accidental canon.

        That separation reduces context poisoning from stale outputs, unrelated
        entries, and private material. The canonical DSL remains the authority
        behind every query.

        Markdown remains a useful reader format. It is not the canonical store
        because links alone cannot enforce relation types, time, audience, fact
        shapes, or whether two copies of a passage have diverged.

        The boundary is deliberate: Lorecraft validates structure and selected
        prose rules. It does not prove that free prose is true, complete, or good.
        Human review and source reading still matter.
      TEXT
    end

    def workflow
      <<~TEXT
        Context-efficient workflow

        1. Run `#{EXE} worlds` to select the tenant.
        2. Run `#{EXE} guide world --world ID`, then `guide list` and only the
           craft or world guide relevant to the task.
        3. Run `queue --world ID` when choosing work. Use `search QUERY` when the
           subject's stable id is unknown.
        4. Render the subject with `page ID`; use `timeline ID` and `log ID` only
           when the task concerns history or prior decisions.
        5. Use `schema kind NAME` or `schema relation NAME` when an edit depends
           on the loaded ontology. Use `connections ID` for the local graph and
           `path FROM TO` only when the route between two entries matters.
        6. Read the canonical entry and relevant neighbor sources. Use facts,
           topology, or web only when the task concerns those dimensions.
        7. Edit the DSL, preserving the distinction between canon, editorial
           questions, and generated output.
        8. Run `make check WORLD=ID`. Use `make check-all` before repository-wide
           handoff.

        Do not treat build/, a wiki export, a search result, or an old research
        report as canonical when the DSL can answer the question directly.
      TEXT
    end

    def authoring
      <<~TEXT
        Entry shape

          npc :inez_bell do
            name "Inez Bell"
            subkind :official
            tags :governance
            prominence :marginal
            occupation "Municipal seal and voter-roll keeper"
            prose "Works at #{'#{ref :cairo_ridge, "Cairo Ridge"}.'}"
          end

          relate :bell_at_ridge, :located_in, :inez_bell, :cairo_ridge

        One entity file owns the thing's static facts and prose. Typed relations
        state traversable connections. Moments and genesis blocks own changes over
        time. Questions and logs describe the entry's editorial state, never the
        fictional world. See lorecraft/README.md and docs/lorecraft-spec.md.
      TEXT
    end

    def schema_authoring
      <<~TEXT
        Schema shape

          extend_kind :npc do
            field :born, type: :year
            relation_field :based_in, relation: :located_in, cardinality: :many
            subkind :official do
              field :jurisdiction, type: :text, expected: false
            end
          end

          relation :located_in, category: :spatial, temporal: true,
                                domain: :npc, range: :geographic_location

        The shared schema declares kinds, subkinds, reusable fact fields, effect
        verbs, and relation types. A world's schema adds its controlled tags,
        sections, fields, and setting-specific relations. Validation rejects
        unknown ids, invalid typed facts, unknown subkinds and tags, relation
        domain or range errors, and explicitly banned generic relations.

        Free prose and undeclared auxiliary static attributes remain flexible;
        do not describe the entire Ruby DSL as statically typed.
      TEXT
    end

    def markers
      <<~TEXT
        Inline markers

          #{'#{ref :id, "label"}'}              link a known entity
          #{'#{rel :governs}'}                  render live relation targets
          #{'#{future "Name"}'}                 name an unwritten thing
          #{'#{embed :id, :section}'}           reuse owned prose
          #{'#{elapsed :event, ago: true}'}      compute a dated span
          #{'#{year :event}'}                    render an absolute year
          #{'#{duration 80}'}                    spell an unanchored length

        Markers defer resolution until validation or rendering, when the engine
        knows the world, audience, and year. Use ref for an existing node, future
        for a missing one, and embed when another entry owns the passage. Never
        copy timeline arithmetic into prose.
      TEXT
    end

    def entry
      <<~TEXT
        Entry-focused work

        Use search to find the stable id, page to inspect present-day resolved
        prose, and connections to inspect its typed neighborhood at a selected
        year. facts, queue, provenance, timeline, and log all accept the same id
        when that dimension matters.

        The entity's Ruby file remains canonical. Read it before editing because
        rendered prose omits DSL fields, questions, logs, and source placement.
        Query `schema kind NAME` before adding a repeated fact or subkind.
      TEXT
    end

    def time
      <<~TEXT
        Time model

        Canon stores dated events and interval boundaries. Moment effects and
        named relations produce state at a selected year. search, connections,
        path, facts, graph, render, and wiki support --at. page always renders
        the present, while timeline reports every effect rather than one year's
        state.

        Prose derives spans with elapsed and absolute dates with year. Use
        duration only for a length that has no chronological anchor. A missing
        event date uses an elapsed future marker until the event is established.
        Do not type a span that the timeline can calculate.
      TEXT
    end

    def audience
      <<~TEXT
        Audience boundaries

        Public entries state what players and NPCs can know. DM entries and
        DM-only blocks hold hidden truth. --audience player excludes DM material
        from supported queries and projections; all is the editorial default.

        Questions, entry logs, drafting declarations, expired reviews, and
        missing expected facts are editorial state. They never render as lore.
        Validation rejects public references or embeds that cross into DM truth.
      TEXT
    end

    def composition
      <<~TEXT
        Composition

        The entity a passage describes owns it. Another entry uses
        #{'#{embed :owner}'} or #{'#{embed :owner, :section}'} instead of copying
        the prose. The engine derives an embeds edge and resolves nested markers
        for the selected time and audience.

        Validation rejects missing targets, shells, absent sections, and public
        embeds of DM material. Lint rejects cycles. Use connections ID to inspect
        the resulting local composition graph. Run `lorecraft guide composition`
        for the full authoritative document.
      TEXT
    end

    def review
      <<~TEXT
        Review state

        question records an unresolved judgment on the entry. Delete it when
        resolved and add log only when the reason for the decision will matter
        later. queue ID reads questions and matching computed findings.

        reviewed means a human read the words on that date. provenance ID reports
        who drafted each owned block and expires a read when its prose changes.
        Never set reviewed on a person's behalf. status :complete states that the
        entry is finished; it does not imply a human review.
      TEXT
    end
  end
end
