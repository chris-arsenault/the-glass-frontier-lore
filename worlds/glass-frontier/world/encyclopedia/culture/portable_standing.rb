encyclopedia :portable_standing do
  name "Portable Standing"
  kind :culture
  subkind :collective_standing
  status :complete
  topics :"social-structure", :trade, :household
  prevalence :uncommon
  available_globally
  summary "Portable standing is an itinerant worker's witnessed record, carried in an oilcloth road book signed by each host at departure. Recognized signatures turn an unknown traveler into a documented history of work and conduct."
  integration "A road-book entry carries the local standing of its signer; hosts vouch for travelers, and travelers preserve an annotated record of the houses and towns along their circuit"
  formal_register "The book is 'offered' at a door and 'signed' at a departure, in fixed forms — the host's line states work done, conduct, and the date — and the oldest closing formula, 'passed well', carries the weight settled trades put in a sealed letter"

  descriptive_identity(
    manner: "Travelers offer the book two-handed at arrival, settle every " \
            "commitment before departure, and wait while the host records " \
            "work, conduct, date, and signing hand.",
    appearance: "The road book itself — oilcloth-bound, thumbed, its pages a " \
                "decade of hands and stamps — carried where a settled trader " \
                "would keep a ledger, and offered at doors with the small " \
                "two-handed formality the custom has settled on.",
    hospitality: "A traveler with a well-signed book receives bunk, board, " \
                 "and trust on the recognized hands already in its pages. " \
                 "The current host joins that chain by signing at departure."
  )

  prose <<~PROSE
    #{encyclopedia_ref :circuiter, "Circuiters"}, #{encyclopedia_ref :midwife, "route midwives"}, traveling #{encyclopedia_ref :descender, "Descenders"}, and other circuit workers carry an oilcloth road book. At each departure, the host records the work completed, conduct observed, date, and signing hand. A new host reads for hands and house marks already known on the circuit, then extends a bunk, board, credit, or access appropriate to those signatures. *Passed well* is the customary closing line.

    Every entry also spends the signer's local standing. A flattering or forged line is challenged when the traveler reaches a host who knows the named house. Circuit guilds add certification pages, preserve retired books, and compare disputed entries with their archives. Travelers annotate how each house received the book, producing a route record of reliable hosts, closed doors, and towns where the signing custom has changed. Apprentices sew their first blank volume before joining a circuit and learn the offering and departure forms at their guild table.
  PROSE

  cue "The stranger at the door offers the oilcloth book two-handed; the householder reads three pages of hands she recognizes, and the bunk, the board, and the evening's work are settled before the traveler's name comes up."
  cue "At departure, the host records work, conduct, and date, then closes with *passed well* while the apprentice watches the signing form."
  affordance "A well-signed road book gives an itinerant worker access to lodging, credit, and household trust before the host knows them personally."
  pressure "A false entry damages both traveler and signer when the next host checks the hand, so guild archives preserve retired books for comparison."
  variation "Menders, route midwives, keeners, threaders, and the courier trades all keep the custom with their own guild pages; crews that travel together — a tripline barge, a shade-crawler string — sometimes keep a joint book, signed for the company."
  variation "Retired books enter guild archives and settle disputes like precedent — and the reading of a famous book aloud at a guild supper, stop by stop through a long working life, is the circuit trades' favorite form of eulogy."
end
