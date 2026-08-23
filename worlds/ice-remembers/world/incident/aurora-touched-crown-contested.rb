# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

incident :aurora_touched_crown_contested do
  title "Aurora-touched (crown-contested)"
  source_id "aurora-touched-crown-contested"
  subkind :succession_crisis
  summary "When Meridian-of-the-First-Light died in the Forum Floe—not in battle but in her sleep, a crystal shard lodged in her lung from a raid three seasons prior—the Aurora Stack fractured along lines that had never fully healed. Two factions claimed the crown: her daughter Prism-Ascending, who wanted to hoard fire-cores and fortify the spires against the orcas; and her sister Depth-Keeper, who argued the Flipper Accord was already dead and the Stack should descend into the Nightshelf's tunnels to survive. The Exchange leadership, caught between them, watched the colony tear itself apart over resources and philosophy while the orcas tested the perimeter with increasing boldness."
  status :complete
  prominence :recognized
  tags :aurora_stack, :governance, :conflict
  source_kind "occurrence"
  source_subtype "succession_crisis"
  source_culture "aurora-stack"
  source_status "historical"
  source_prominence 2.8169999999999997
  source_tags({"political" => true, "conflict" => true, "culture" => "aurora-stack", "mundane" => true})
  source_created_at 160
  source_era "the-orca-incursion"
  cultural_origin "Aurora Stack"
  world_status "historical"
  first_recorded 160

  prose(<<~'CANONICAL_PROSE', origin: :published)
    ## Overview
    
    The succession crisis designated Aurora-touched (crown-contested) followed the death of Luminary Meridian-of-the-First-Light at the Forum Floe, the contested krill-harvesting platform east of the Still Pools. Meridian died in her sleep — not in battle, but from a crystal shard lodged in her left lung during a raid three seasons prior. The crisis fractured the Icebound Exchange, Aurora Stack's governing merchant guild, and left the colony without settled authority during a period of escalating orca incursion.
    
    ## The Competing Claims
    
    Two claimants emerged immediately:
    
    | Claimant | Relation to Meridian | Position |
    |---|---|---|
    | **Prism-Ascending** (styled Aurora-Heir) | Daughter | Hoard fire-cores, fortify the spires, seal upper passages against orca assault |
    | **Depth-Keeper** | Sister | Declare the Flipper Accord dead, abandon surface holdings, descend into Nightshelf tunnels |
    
    Neither secured the aurora-seal. Eleven days after Meridian's death, the Luminaries whose endorsement would legitimize either claim could not convene: ice-readers reported uncontrolled visions at increasing frequency, and diminishing aurora denied the clear-sky conditions their gathering required.
    
    ## Institutional Collapse
    
    The crisis did not produce a decisive rupture so much as a progressive failure of institutional function. The Tide Custom — the festival whose public demonstrations traditionally staged investiture — was formally postponed when no authority could guarantee fire-core allocation for its galleries. Circle Gatherings lost attendance as families and merchant houses aligned with one claimant or the other, or refused to acknowledge either. The Tide Custom's own protocols of succession fractured: some honored them, others rejected both claims outright.
    
    Fire-core rationing entered Third Tier across the Stack, with residential allocations cut from three to two cores per quarter-cycle. Garrison rotations along the eastern perimeter continued per standing schedule but answered to no settled authority, defense assignments issued through civic provision rather than Luminary command — this while orca war-pods tested the perimeter with increasing boldness.
    
    Neither Prism-Ascending nor Depth-Keeper prevailed. The Exchange fractured into competing internal factions, its capacity to govern the colony effectively spent. The dispute is commemorated in subsequent emergency legislation — the Dawn Mandate, the Long-dark Edict, and the Stillness-Bound accords — each of which attempted, with varying success, to prevent a recurrence.
    
    The casualty figures attributed to the crisis itself, as distinct from the concurrent orca raids, do not survive in any source I consider reliable.
  CANONICAL_PROSE
  annotation "note_1771586452551_0", anchor: "Declare the Flipper Accord dead", text: "Depth-Keeper declared dead an accord that had already been secretly renegotiated three times — each draft more favorable to the Nightshelf than the last, each sealed into administrative ice the Council preferred to forget. She was not wrong that it was dead. She was wrong about when it died. The public version was a memorial plaque for a treaty that expired two renegotiations prior. One does appreciate a politician who arrives at the correct conclusion via entirely incorrect reasoning.", type: :correction, display: :full, source_anchor: "the Flipper Accord was already dead"
  annotation "note_1771586452551_1", anchor: "ice-readers reported uncontrolled visions at increasing frequency", text: "The visions were not uncontrolled. They were unsupervised. The distinction matters: ice-reading requires institutional discipline, not divine gift, and institutional discipline is precisely what the succession crisis dissolved. The ice did not become louder. The readers lost the structure that taught them not to listen.", type: :commentary, display: :popout
  annotation "note_1771586452551_2", anchor: "descend into Nightshelf tunnels", text: "Shadow-Broker Nyla's predecessor was Aurora-born. The histories were amended so quietly that even the amendment has been amended. Depth-Keeper's proposal was not unprecedented. It was a repetition.", type: :commentary, display: :popout
  annotation "note_1771586452551_3", anchor: "do not survive in any source I consider reliable", text: "Three commemorative inscriptions give three different numbers. The lowest is suspiciously round. The highest counts orca raid casualties that belong to a different ledger entirely. The middle one was carved by the winning faction, which is not a recommendation.", type: :skepticism, display: :popout
  image "img_aurora-touched-crown-contested_1767906082031", role: :entity, url: "https://theiceremembers.com/raw/project_1765083188592/img_aurora-touched-crown-contested_1767906082031"
  log "2026-08-23 — retargeted stale published note anchors note_1771586452551_0 to their surviving passages; each original remains in source_anchor."
end
