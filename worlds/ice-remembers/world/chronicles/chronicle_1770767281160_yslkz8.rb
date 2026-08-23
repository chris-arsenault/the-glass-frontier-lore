# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

chronicle :chronicle_1770767281160_yslkz8 do
  source_id "chronicle_1770767281160_yslkz8"
  title "Fire-Cores & Aurora-Crystals — Stock Counted Twice"
  summary "The ☽'ofund' Guild announces its pre-Long Dark inventory at Wane☽ Oncea, offering fire-cores in multiple grades, aurora-crystals for illumination, and secure storage at the Scar☽ Lucamlinaecius Depot. The guild emphasizes its long-established reputation for reliable delivery through deep-tunnel routes and authenticated contracts governed by Foedus∴vincu, with pricing available until the onset of the Long Dark. Stock availability is limited, particularly for extended-burn fire-cores and full-charge aurora-crystals, with the guild noting that sealed vaults and their contents remain subject to guild discretion."
  status :complete
  format :document
  focus :single
  narrative_style :merchants_broadsheet
  focal_era :the_faction_wars
  ticks from: 27, to: 49
  temporal_description "an extended arc during the The Faction Wars (22 ticks)"
  touched_eras :the_faction_wars
  entrypoint :ofund_guild
  entities :ofund_guild, :scar_lucamlinaecius, :dagger_vaesacsorius, :ilsancuia_depth_walker_lector, :wane_oncea
  events "act-seize_control:ofund-guild-49", "act-raid:ofund-guild-31", "tpl-guild_establishment-27"
  relationships "dagger-vaesacsorius:ofund-guild:owned_by", "ofund-guild:scar-lucamlinaecius:controls", "ofund-guild:wane-oncea:controls"
  roles({ofund_guild: {role: "merchant", primary: true}, scar_lucamlinaecius: {role: "featured-goods", primary: false}, dagger_vaesacsorius: {role: "featured-goods", primary: false}, ilsancuia_depth_walker_lector: {role: "satisfied-customer", primary: false}})

  prose(<<~'CANONICAL_CHRONICLE', origin: :published)
    ---
    
    *[Header impression: obsidian seal, spiraling glyph of ☽'ofund' Guild — one clean fracture bisecting the spiral]*
    
    ## WHAT THE TUNNELS CARRY, THE TUNNELS KEEP.
    
    ☽'ofund' Guild announces full pre-Long Dark inventory at Wane☽ Oncea. Stock counted twice in the dark. Prices subject to availability; availability subject to survival.
    
    ---
    
    **CURRENT STOCK — AUTHENTICATED UNDER FOEDUS∴VINCU**
    
    *Fire-Cores, Deep-Vein Grade:*
    Standard burn (90-day): 4 per crate, bone-contract terms. Bulk lots at adjusted rate for Nightfall Shelf holders. Extended burn (140-day): Limited — supply adjustments from lower deposits reduced extraction by a third this season. What we hold is what there is. First contract honored first. Forge-grade (high intensity, 60-day): Available for licensed smiths. Suitable for Shawl☽ Sun work. Burns clean, burns true. What the fire remembers, it keeps.
    
    *Aurora-Crystals, Pre-Long Dark Reserve:*
    Full-charge, aurora-verified: 12 units, upper vault. No recharge possible once darkness falls. These are your light until the sky returns. Partial-charge, serviceable: 30 units. Adequate for corridor illumination and shadow-practice definition. Residue disclaimers apply — crystals stored below second chamber may carry ice-memory impressions. Handle with cloth wrapping. Do not sleep beside them.
    
    *Secure Storage — Scar☽ Lucamlinaecius Depot:*
    Temperature-stable, brazier-maintained. Sanctification maintenance surcharge of one fire-core per quarter-season on all lower-vault holdings. Lower-vault goods require witnessed retrieval — no exceptions, no proxies. The walls hold warmth. We do not explain the warmth. We do charge for it.
    
    Stock variance between tallies reconciled at Guild discretion. Sealed vaults are sealed for reasons.
    
    ---
    
    **WHY ☽'OFUND'**
    
    We carved the fire-vaults at Wane☽ Oncea before others knew there was fire to vault. Foedus∴vincu governs every contract — authenticated by the seal that founded this Guild. Our couriers walk deep-routes no competitor has mapped. Route suspension: Midway Shelf corridor, security surcharge active. All other passages open and ours. What we promise, we carry. What we carry, arrives.
    
    Tunnel-runner and depot positions available. Immediate start.
    
    ---
    
    **WHAT PATRONS SAY**
    
    "☽'ofund' cores burn longer than their competitors' promises. My hammer has cracked and their fire still holds warmth." — **☽'Ilsancuia Depth-walker, Lector**, Nightfall Shelf. Patron since founding season.
    
    ---
    
    **FIND US**
    
    Wane☽ Oncea, upper chamber — the crystal-work is ours, whatever the walls say now. Open each waking shift. Bone-contract or barter. Pre-Long Dark pricing ends when the dark begins. After that, what the seal once held, the dark decides.
    
    *[Obsidian seal, one fracture. ☽'ofund' charter designation.]*
  CANONICAL_CHRONICLE
  annotation "note_1771577451818_0", anchor: "☽'Ilsancuia Depth-walker, Lector", text: "☽'Ilsancuia died at their final stand beside Augur ☽'Silvsiaelrous~ the Resolute. Their cracked fire-core hammer is a memorial artifact. 'Patron since founding season' is technically unimpeachable — the dead default on nothing and complain about less. I admire a guild that prints a deceased lector's endorsement without mentioning the deceased part. The hammer outlasted them; apparently, so did the testimonial.", type: :correction, display: :full
  annotation "note_1771577451818_1", anchor: "Route suspension: Midway Shelf corridor, security surcharge active.", text: "'Security surcharge' is doing heroic work. The Midway Shelf corridor is where orca shore-breaker teams drive ice-wedge access channels during raids, funneling traffic into herding zones while finishers wait below every exit. The seventeen skeletons marking the route are courier-law violators, but the orcas are what makes the corridor a kill-zone in practice. The Guild has mapped the pattern. They charge for that knowledge rather than share it — which is, I suppose, the difference between a public service and a trade secret.", type: :commentary, display: :full
  annotation "note_1771577451818_2", anchor: "whatever the walls say now", text: "The walls at Wane☽ Oncea say quite a lot, actually. Ice-memory in that section records at least three prior ownership claims predating the Guild's charter. 'Whatever the walls say' is not bravado — it is a legal disclaimer dressed as confidence.", type: :skepticism, display: :popout
  image "img_chronicle_1770767281160_yslkz8_1772878800201", role: :cover, url: "https://theiceremembers.com/raw/project_1765083188592/img_chronicle_1770767281160_yslkz8_1772878800201"
  image "img_ofund-guild_1772879802078", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_ofund-guild_1772879802078", anchor: "Temperature-stable, brazier-maintained. Sanctification maintenance surcharge", anchor_index: 1366, caption: "Scar☽ Lucamlinaecius Depot: The vault-chambers of ☽'ofund' Guild, where fire-cores burn in eternal maintenance and aurora-crystals wait sealed for the Long Dark.", size: :large, reference_id: "imgref_1772835732420_0"
  image "img_ofund-guild_1772879859066", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_ofund-guild_1772879859066", anchor: "obsidian seal, spiraling glyph of ☽'ofund' Guild — one clean fracture", anchor_index: 26, caption: "The founding seal of ☽'ofund' Guild, fractured but unbroken, authenticating every contract carried through the deep tunnels.", size: :small, reference_id: "imgref_1772835732420_1"
end
