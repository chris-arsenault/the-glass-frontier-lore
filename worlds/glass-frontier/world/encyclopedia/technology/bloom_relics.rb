encyclopedia :bloom_relics do
  name "Bloom Relics"
  summary "Bloom relics are unique objects formed when a changing Bloom boundary fixes part of an ordinary object's existing function under an altered physical rule. Current workshops cannot manufacture them on demand or reliably repair their spent material."
  kind :technology
  subkind :anomalous_artifact
  reviewed "2026-03-19"
  status :complete
  topics :resonance, :danger
  prevalence :rare
  available_globally
  log "2026-08-21 — Defined Bloom relic formation as a boundary pinning one existing physical relationship into an exposed object. The effect follows the object's prior function and local conditions; repeated activation is not required."

  cue "An ordinary working object carries some mark of the boundary that crossed it: geometry that should not close, crystal that holds one narrow bandwidth with no tuning, or changed behavior that shows only under test."
  cue "No two Bloom relics are alike."
  affordance "Each relic can be tested from its old job: a seal divides, a relay carries one signal, and a bearing holds an axis under a narrower physical rule."
  pressure "Every use spends the altered material, and no workshop can restore it once spent."
  variation "Some relics carry impossible geometry or crystal that holds a narrow bandwidth without tuning."
  variation "Some are machines whose altered function emerges only through testing."

  descriptive_identity(
    appearance:
      "An ordinary working object — a winch, a seal, a relay, a bearing " \
      "— carrying some mark of the boundary that crossed it: geometry " \
      "that should not close, crystal that holds one narrow bandwidth " \
      "with no tuning, a machine whose changed behavior shows only under " \
      "test. No two are alike.",
    handling:
      "What a relic does follows from its old job, narrowed under a " \
      "stranger rule, so each one has to be tested separately — no " \
      "general model predicts them. They move through the economy as " \
      "goods of extreme value, priced by demonstrated behavior and " \
      "credible custody, from official holdings to black-market " \
      "catalogues.",
    risks:
      "Every use spends the altered material, and once it is spent no " \
      "workshop can restore it; the effect ends where the surviving " \
      "material stops carrying the pinned relationship. Named relics " \
      "without a public chain of custody may be nothing but a story " \
      "that has not yet failed examination.",
  )

  prose <<~PROSE, section: :significance, heading: "Significance"
    Individually unique artifacts of exceptional power circulate through the system's economy as objects of extreme value. Some survive from before the Glassfall. Others form at active Bloom boundaries. Current workshops cannot manufacture either class on demand.

    **Intact ringglass** is covered in the #{encyclopedia_ref :ringglass, "ringglass entry"}: ring-era crystal whose surviving configurations exceed current replication methods.

    **#{ref :bloom_zones, "Bloom Zone"} relics** form when ordinary material is caught across a changing boundary. They include impossible geometry, crystals that hold narrow bandwidths without tuning, and machines whose altered function emerges only through testing. The #{ref :karet_spool, "Karet Spool"}, a freight winch whose finite line preserves one traversed route through changing space, has a documented recovery and custody record.

    **Named relics** circulate through official custody, private collections, and black-market catalogues. Claims include books that improve their readers' fortune and a spear said to pass through every tested material. Neither claim has a public chain of custody comparable to the Karet Spool. Buyers pay for demonstrated behavior, credible provenance, or the chance that a story will survive examination.
  PROSE
  prose <<~PROSE, section: :mechanics, heading: "Formation"
    A forming relic begins with an object whose parts already sustain a coherent relationship: a winch holds tension along a line, a seal keeps two pressures apart, a relay carries one signal, a bearing constrains motion around an axis. When a Bloom boundary crosses the object, the changing geometry can pin that relationship while the surrounding material changes.

    The altered object continues what it was doing under a narrower and less ordinary rule. A pinned seal may divide spaces that no longer meet cleanly. A relay may hold one frequency after its transmitter is gone. The effect does not grant an unrelated ability, and it ends where the object's surviving material can no longer carry the relationship.

    Formation follows the object's structure, the load on it, and the local boundary. Those conditions make the result patterned without making it predictable. Two identical machines exposed at different moments can produce different relics; most exposed objects produce none. Unlike intact ring-era equipment, a Bloom relic is accidental, tied to one site and event, and rarely repairable once its altered material is spent.
  PROSE

end
