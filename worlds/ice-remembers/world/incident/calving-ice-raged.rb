# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

incident :calving_ice_raged do
  title "Calving (ice-raged)"
  source_id "calving-ice-raged"
  subkind :disaster
  summary "A catastrophic fracturing of The Frost Zenith's upper shelves, triggered by thermal ruptures in the berg's volcanic core breaching surface ice. The Calving killed hundreds in the initial collapse and forced both Aurora Stack and Nightshelf into emergency rationing and contested evacuation zones."
  status :complete
  prominence :recognized
  tags :aurora_stack
  source_kind "occurrence"
  source_subtype "disaster"
  source_culture "aurora-stack"
  source_status "historical"
  source_prominence 2.935
  source_tags({"crisis" => true, "dangerous" => true, "culture" => "aurora-stack", "ice" => true, "mundane" => true})
  source_created_at 66
  source_era "the-faction-wars"
  cultural_origin "Aurora Stack"
  world_status "historical"
  first_recorded 66

  prose(<<~'CANONICAL_PROSE', origin: :published)
    ## Event
    
    A catastrophic fracturing of the upper shelves of the Frost Zenith, the aurora-spire complex at the eastern face of Aurora Stack. Thermal ruptures in the Berg's volcanic core breached three centuries of layered ice and collapsed the eastern spires. The shelf-face fell, taking with it memory-ice preserving frozen scenes from the Clever Ice Age — archive-walls the colony had relied upon to adjudicate succession disputes. Hundreds died in the initial collapse. The designation *ice-raged* appears in contemporary records without explanation; I assume it describes the acoustic phenomenon multiple accounts reference — a sustained harmonic failure in the ice structure audible across both colonies.
    
    The disaster occurred during the Faction Wars, shortly after Light-Regent Xouhoulong of Aurora Stack ratified a compact granting the Midnight Claws, a Nightshelf criminal faction, diplomatic passage through the Berg's deep tunnels.
    
    ## Losses
    
    - **Memory-ice archives**: Irreplaceable Clever Ice Age strata, shattered into the sea
    - **Nightshelf fire-mine**: The colony's primary extraction site, destroyed by upheaval
    - **Wane∴Oncea archive**: Flooded; the Directrix Mirror, a ceremonial artifact authenticating territorial agreements, was recovered with a fissure splitting its face
    - **High-Beak Auditor Selka**: Found preserved in the eastern galleries, frozen mid-reach toward a door that no longer existed. Her waterlogged ledger contained undelivered concerns about fire-core discrepancies she had intended to raise with Xouhoulong
    
    ## Aftermath
    
    Both colonies endured three cycles of half-rations. The Flipper Accord — the trade agreement binding Aurora Stack and Nightshelf — nearly collapsed under mutual accusation: the Stack alleged Nightshelf sabotage; the Nightshelf blamed the Stack's crystal-harvesting for weakening the supporting ice. Xouhoulong resigned. Grand Auditor Qeihong assumed power amid revelations that Xouhoulong had secretly authorized Wake-Singer research in chambers whose instability may have contributed to the rupture.
  CANONICAL_PROSE
  annotation "note_1771592050832_0", anchor: "Hundreds died in the initial collapse", text: "Three hundred twelve in the Aurora census-ice. Forty-seven Nightshelf whose thermal signatures I catalogued in stratum nine and whose names appear in no Aurora record. Round numbers are memorials, not counts.", type: :skepticism, display: :popout
  annotation "note_1771592050832_1", anchor: "frozen mid-reach toward a door that no longer existed", text: "She was tracking the instability from the accounting side — extraction volumes diverging from delivery volumes, the gap widening over months. I have read the ledger. Her handwriting deteriorates across the final entries. She was reaching for the door to Xouhoulong's chambers. Xouhoulong was three levels below, in the Wake-Singer research wing. The door she reached for led to an empty room.", type: :commentary, display: :full
  annotation "note_1771592050832_2", anchor: "the Stack alleged Nightshelf sabotage; the Nightshelf blamed the Stack's crystal-harvesting for weakening the supporting ice", text: "Both partially right, fully wrong. Crystal-harvesting weakened the eastern face. Deep-mining destabilized the volcanic vents. Wake-Singer research added thermal load to chambers already compromised. Every faction's preferred culprit is the one that exonerates them.", type: :correction, display: :popout
  image "img_calving-ice-raged_1767886514624", role: :entity, url: "https://theiceremembers.com/raw/project_1765083188592/img_calving-ice-raged_1767886514624"
end
