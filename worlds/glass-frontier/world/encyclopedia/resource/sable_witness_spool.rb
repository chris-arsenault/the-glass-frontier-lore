encyclopedia :sable_witness_spool do
  name "Sable Witness Spool"
  aka "witness spool", "four-voice spool"
  kind :resource
  subkind :data
  status :complete
  topics :archives, :governance, :"signal-freq"
  prevalence :uncommon
  appears_when any: { place: [:archive, :waterway] }
  summary "Sable witness spools are spoken-record media that preserve one account in four voices at once — the witness and three sworn readers recorded together — so any later tampering must alter four interleaved voices and shows itself. Courts across the system take a spool as testimony that cannot quietly change."
  function "Tamper-evident spoken records: one account, four interleaved voices, any alteration visible as disagreement"
  grades "Court-grade spools cut with sworn readers; trade-grade with any three adults; and the family spools whose readers are chosen for love rather than law"
  availability "Cut at spool houses along the Sable Crescent and in Verathi, Hab Meridian, and the Underlayers; blank stock is Crescent-made and travels"

  descriptive_identity(
    appearance: "A palm-width spool of layered recording thread, wound on a bone or " \
                "ceramic core, its rim notched with the four voices' names and the " \
                "cutting house's mark. Played, it speaks in four voices braided a " \
                "phrase apart.",
    working: "The witness speaks the account phrase by phrase, and three readers repeat " \
             "each phrase in turn onto the same interleaved thread — one cutting, four " \
             "voices, a single braided record that plays back as a slow round.",
    risks: "The format's strength is the braid: altering the account means altering " \
           "four voices in interleave, and every known attempt has produced the " \
           "audible disagreement the design exists to make loud."
  )

  prose <<~PROSE
    The Sable Crescent, which trusts recordings the way other regions trust stone, invented the record that argues with its own forgers. A witness spool preserves one account in four voices: the witness speaks phrase by phrase, and three readers — sworn officers for a court-grade cutting, any three adults for a trade one — repeat each phrase in turn onto the same interleaved thread. The result plays back as a slow braided round, the account walking forward four voices at a time, and the braid is the security: a tamperer must alter four voices in interleave, matching pitch, pace, and the tiny honest stumbles of each, and every documented attempt has produced instead the audible disagreement the format was built to make loud. #{encyclopedia_ref :sable_backecho, "Backecho"} country adds its own grim endorsement — a fifth voice entering a braid announces itself instantly.

    Spools carry the system's speech that must stay said. Courts cut them for testimony that will outlive its witness; the factor houses spool the great settlements; deathbed accounts, boundary agreements, and the confessions that end feuds go onto four voices in rooms where everyone understands what the braiding means. The custom's social face is the readers: to be asked to read someone's spool is a formal honor with obligations attached — readers may be called, years later, to affirm their voice — and the family-grade spools, cut with readers chosen for love rather than law, are the Crescent's dearest heirlooms: a grandmother's account of the founding flood, braided with three dead friends, playable forever in four voices that agreed.
  PROSE

  cue "The account moves phrase by phrase around the cutting room — witness, then three readers in turn — and the finished spool's rim is notched with all four names while the voices are still warm."
  cue "In court, the spool plays its slow four-voice round, and both counsels listen for the disagreement that would be the only argument worth making."
  affordance "A spool is testimony that cannot quietly change — four braided voices, tamper-loud by design, honored by courts system-wide — and the reader custom binds living witnesses to the record for as long as they can answer."
  pressure "The format buys permanence with ceremony: four people in a room, phrase by phrase, hours for a long account — and the reader's obligation follows for life, which makes accepting the honor a decision families discuss first."
  variation "Court cuttings use rostered sworn readers and archive the spools with custody chains; trade cuttings grab three adults off the dock and are honored anyway, braiding being braiding."
  variation "Family spools choose readers for love, and the Crescent's estate inventories list them beside the proof crocks — played at namings, guarded in feuds, and read aloud in four voices by the descendants when the thread finally wears."
end
