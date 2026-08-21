artifact :bloom_relics do
  name "Bloom Relics"
  subkind :relic
  path "player/artifacts/relics/bloom-relics.md"
  reviewed "2026-03-19"
  tags :resonance, :danger
  prominence :recognized
  log "2026-08-21 — Defined Bloom relic formation as a boundary pinning one existing physical relationship into an exposed object. The effect follows the object's prior function and local conditions; repeated activation is not required."

  prose <<~PROSE, section: :significance, heading: "Significance"
    Individually unique artifacts of exceptional power circulate through the system's economy as objects of extreme value. Some survive from before the Glassfall. Others form at active Bloom boundaries. Current workshops cannot manufacture either class on demand.

    **Intact ringglass** is covered in the #{ref :ringglass, "ringglass entry"}: ring-era crystal whose surviving configurations exceed current replication methods.

    **#{ref :bloom_zones, "Bloom Zone"} relics** form when ordinary material is caught across a changing boundary. They include impossible geometry, crystals that hold narrow bandwidths without tuning, and machines whose altered function emerges only through testing. The #{ref :karet_spool, "Karet Spool"}, a freight winch whose finite line preserves one traversed route through changing space, has a documented recovery and custody record.

    **Named relics** circulate through official custody, private collections, and black-market catalogues. Claims include books that improve their readers' fortune and a spear said to pass through every tested material. Neither claim has a public chain of custody comparable to the Karet Spool. Buyers pay for demonstrated behavior, credible provenance, or the chance that a story will survive examination.
  PROSE
  prose <<~PROSE, section: :mechanics, heading: "Formation"
    A forming relic begins with an object whose parts already sustain a coherent relationship: a winch holds tension along a line, a seal keeps two pressures apart, a relay carries one signal, a bearing constrains motion around an axis. When a Bloom boundary crosses the object, the changing geometry can pin that relationship while the surrounding material changes.

    The altered object continues what it was doing under a narrower and less ordinary rule. A pinned seal may divide spaces that no longer meet cleanly. A relay may hold one frequency after its transmitter is gone. The effect does not grant an unrelated ability, and it ends where the object's surviving material can no longer carry the relationship.

    Formation follows the object's structure, the load on it, and the local boundary. Those conditions make the result patterned without making it predictable. Two identical machines exposed at different moments can produce different relics; most exposed objects produce none. Unlike intact ring-era equipment, a Bloom relic is accidental, tied to one site and event, and rarely repairable once its altered material is spent.
  PROSE
end

relate :rel_bloom_relics_manifests_at_bloom_zones, :manifests_at, :bloom_relics, :bloom_zones do
  prose "The distorted reality of the #{ref :bloom_zones, "Bloom Zones"} produces Bloom relics. Each one's properties must be tested separately because no general model predicts them."
end
relate :rel_bloom_relics_derived_from_resonance, :derived_from, :bloom_relics, :resonance do
  prose "They register as #{ref :resonance, "resonance"} artifacts of relic magnitude, behaving in ways standard ringglass theory says they shouldn't."
end
