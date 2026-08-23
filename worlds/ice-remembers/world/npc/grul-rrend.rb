# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

npc :grul_rrend do
  title "Gork Slaughterend"
  source_id "grul-rrend"
  subkind :orca
  summary "Gork Slaughterend was a orca raider of middling rank whose body became a record of failure—first wounded by Aurora Stack's Netemia Glow-bringer, then maimed by the Augur ☽'Milucaum~ Shadow-bane, finally killed by that same augur in The Frozen Peace. His descendants inherited his name and his hunger, but not his luck."
  status :complete
  prominence :marginal
  tags :orca
  aka "grul-rrend"
  source_kind "npc"
  source_subtype "orca"
  source_culture "orca"
  source_status "historical"
  source_prominence 1.7750000000000001
  source_tags({"orca" => true, "raider" => true, "external" => true, "culture" => "orca", "hostile" => true, "follower" => true, "mundane" => true, "maimed" => true})
  source_created_at 166
  source_era "the-orca-incursion"
  cultural_origin "Orca"
  world_status "historical"
  first_recorded 166

  prose(<<~'CANONICAL_PROSE', origin: :published)
    ## Gork Slaughterend
    
    Orca raider of middling rank in the Fourth Shore-breaker Pod, where he held the position of Raid-lieutenant. Gork Slaughterend's principal significance to the record is as a case study in cumulative damage: wounded, maimed, and finally killed across successive engagements with Aurora Stack's defenses during the Orca Incursion and the early Frozen Peace.
    
    ### Wounds and Diminishment
    
    Gork Slaughterend's left flank carried scar tissue from a spear-strike by **Netemia Glow-bringer**, an Aurora Stack defender — a wound that never fully closed, weeping salt-fluid in cold currents. The more consequential injury came from **Augur ☽'Milucaum~ Shadow-bane**, a Nightshelf artificer and combat augur, whose work left Gork's right fin webbed at angles incompatible with normal pressure-navigation. He compensated by swimming in a sustained corkscrew, a technique that kept him operational but left predictable gaps in his guard.
    
    The maiming altered his standing within the pod. His mentor and pod-mate **Ruibung** maintained the kill-count rituals with him, but Gork Slaughterend recognized the hesitation in how he was regarded. He ceased wearing trophies. He conducted **deep-strata interrogations** for the pod-authority — the Threk-Bone-Day incident transcript survives, showing him questioning a blood-speaker initiate named Kzund-threk-zaith about a ritual that killed three shamans — and positioned his damaged side toward the wall when facing other orca. These are the habits of someone managing a decline.
    
    He trained under both Ruibung and the war-leader **Thung Thrakrek**, himself half-crippled by a penguin spear. That Gork was a practitioner of **Gut Inversion** — a counter-technique of Aurora Stack origin — is attested by the relationship records, though no chronicle describes him using it. I note this without comment, except to observe that the practitioner list for that technique continues to be composed almost entirely of orca names.
    
    ### Death at Iasnolica
    
    Gork Slaughterend's final raid targeted **☽'thaw Iasnolica~**, a corrupted thermal cavern, during a Darkening period when dormant aurora-crystals left Gut Inversion practitioners without their power source. Alongside the raider **Grul Grulrend**, he infiltrated flooded corridors to destroy fire-cores. When corruption smeared echolocation into uselessness, he navigated by scraping his damaged fin along the walls.
    
    In the deepest chamber, he turned away from the fire-cores toward **The Thrumed~ Shadow-glass**, a fractured crystallized artifact that scarred the flippers of anyone who held it. The Augur ☽'Milucaum~ Shadow-bane — the same augur who had maimed him — struck the killing blow through the belly gap his corkscrew left exposed. Grul escaped alone.
    
    ### Legacy
    
    A later raider called **Thrak-grul-rend** bore Gork's scar on the right flank — migrated in position but unmistakable, the mark of a spear thrown by a penguin Thrak-grul-rend had never encountered. The wound, it seems, outlasted the raider who earned it.
  CANONICAL_PROSE
  annotation "note_1771587713950_0", anchor: "the practitioner list for that technique continues to be composed almost entirely of orca names", text: "How extraordinary. A technique born from watching penguins hemorrhage, codified by Aurora adepts, taught to anyone with steady flippers — and the surviving practitioner list is almost entirely orca. The transfer mechanism is nowhere in the record. Someone taught them, or they watched closely enough to replicate flipper-work designed to destroy their own magic. Either way, a counter-technique developed specifically against orca pressure-bonds is now practiced primarily by orcas. The species it was meant to protect have largely abandoned it. I find this genuinely remarkable and have no satisfying explanation.", type: :commentary, display: :full
  annotation "note_1771587713950_1", anchor: "he turned away from the fire-cores toward **The Thrumed~ Shadow-glass**", text: "The raid's stated objective was fire-core destruction. He turned away from them. The relationship records list the Shadow-glass as 'owned by' Gork — a designation applied posthumously, since he touched the artifact only at the moment of his death. Someone classified brief contact with a fractured artifact as ownership. Either the classification system is incoherent, or Gork's relationship to the Shadow-glass predated the raid in ways this entry does not capture.", type: :skepticism, display: :full, source_anchor: "he turned away from the fire-cores toward The Thrumed~ Shadow-glass"
  annotation "note_1771587713950_2", anchor: "the mark of a spear thrown by a penguin Thrak-grul-rend had never encountered", text: "Pressure-depth magic operates through blood and communion. Orca blood-rituals assume the bloodline carries something downstream. A wound that migrates across bodies, shifted in position but structurally identical — this is not inheritance. This is memory in the flesh. The ice remembers. Apparently the blood does too.", type: :commentary, display: :popout
  image "img_grul-rrend_1767906838154", role: :entity, url: "https://theiceremembers.com/raw/project_1765083188592/img_grul-rrend_1767906838154"
  log "2026-08-23 — retargeted stale published note anchors note_1771587713950_1 to their surviving passages; each original remains in source_anchor."
end
