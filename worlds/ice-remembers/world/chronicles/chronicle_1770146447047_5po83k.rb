# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

chronicle :chronicle_1770146447047_5po83k do
  source_id "chronicle_1770146447047_5po83k"
  title "Wanted: Lovumruius~ Domina"
  summary "The Shadow Parliament issues a high-priority recovery warrant for Lovumruius~ Domina, a materially compromised merchant operating unauthorized fire-core extraction and trade routes in restricted underground territories. The primary objective is recovering the fragmented Dagger☽ Vaesacsorius~, a seal-artifact of which Domina possesses the central shard, with recovery taking precedence over detainment. A substantial reward of forty full-burn fire-cores is offered for successful recovery, with strict operational security protocols and warnings against direct engagement in deep-shaft locations."
  status :complete
  format :document
  focus :single
  narrative_style :wanted_notice
  focal_era :the_orca_incursion
  ticks from: 27, to: 176
  temporal_description "an epic saga during the The Orca Incursion (149 ticks)"
  touched_eras :the_orca_incursion
  entrypoint :lovumruius_domina
  entities :lovumruius_domina, :ofund_guild, :dagger_vaesacsorius, :the_whispered_shrift, :the_bra_conflictu
  events "act-claim_victory:the-cell-owl-sworn-153", "act-raid:ofund-guild-144", "act-seize_control:ofund-guild-173", "act-seize_control:ofund-guild-176"
  relationships "dagger-vaesacsorius:ofund-guild:owned_by", "lovumruius-domina:ofund-guild:member_of", "ofund-guild:the-whispered-shrift:controls"
  roles({lovumruius_domina: {role: "wanted-subject", primary: true}, ofund_guild: {role: "issuing-authority", primary: false}, dagger_vaesacsorius: {role: "victim", primary: false}, the_whispered_shrift: {role: "victim", primary: false}})

  prose(<<~'CANONICAL_CHRONICLE', origin: :published)
    ---
    
    # ◈ WANTED — RECOVERY PRIORITY — MATERIAL HAZARD ◈
    
    **By order of the Shadow Parliament; Office of the Night-Assessor; Writ ☽-IV-83; wartime standing authority.**
    
    ---
    
    **SUBJECT:** Lovumruius~ Domina. Merchant-rank; formerly chartered. ☽'ofund' remnant; fire-shrine claimant without charter.
    
    **ALIASES ON FILE:** The Domina; Ice-Witnessed; "Only Losses."
    
    **IDENTIFYING MARKS:** Medium build; charcoal leather merchant's coat, brass fittings deliberately dulled. Fire-core amulet worn at throat — touches only when making oaths; *do not handle.* Flippers bear geometric frost-scarring consistent with Vum∴tenebra exposure; scarring luminesces in proximity to active fire-cores. Speaks in prices — will quote cost before meaning. Fluent in coded ledger notation. Known tunnel-navigator; possesses route knowledge below Fissure-Gate depth, including restricted passages. Materially compromised. **Last sighted:** The Whispered Shrift~, three leagues below Nightfall Shelf; thermal reading 18.2, unaccounted. Mining heat without charter.
    
    **OFFENSES ON RECORD:**
    
    Unauthorized fire-core extraction at site designated material hazard (☽-restricted; depth-shrine; status: *fire tended without permission*). The Whispered Shrift~ has changed hands three times since Incursion; current tenders work without authority ∴ subject works with them. Distribution of Mandatum∴absconditu through coded ledgers post-☽'slew Ravium~. Seizure of trade-passage rights at The Fissured Smelt~ from E'frostlings without charter ratification. Seizure of The Corpse Current from Wake-Singer remnants; no sealed authority presented. Raid conducted against Cell (owl-sworn) installations during prior thermal-vent engagements — retaliatory action resulting in Cell counter-claim; ☽'ofund' Guild holdings forfeit. Operation of trade routes authenticated by a seal that authenticates nothing. Continued use of ☽'ofund' Guild charter designations; guild status pending review. What the ice witnessed during her elevation is not entered into official record.
    
    **RECOVERY PRIORITY:** Dagger☽ Vaesacsorius~ — seal-artifact, shadow-steel, fragmented across three vault locations. Subject possesses central shard (☽'ofund' vault, third nested lock); Threshold holds the pommel-piece; the blade-tip location is not entered into official record. Subject possesses knowledge of all fragment positions. Recovery supersedes detainment. Repeat: *recovery supersedes detainment.*
    
    **REWARD:** Forty fire-cores, full-burn grade; drawn from Parliament reserves. Information leading to location: twelve fire-cores. Report to Night-Assessor ☽'toterus 'born at Thrall☽ Vavmastius rotating hall; after-tide hours only. Wartime standing codes apply. Foedus∴vincu authentication required. No Aurora Stack intermediaries. No standard guild channels. Do not use names she would recognize. This is Nightshelf business.
    
    **CAUTION:** Subject is materially compromised. Subject survived the collapsed shafts. Subject built ☽'ofund' into something that outlasted what broke others. That operational history is the threat assessment. Do not engage in enclosed chambers below Fissure-Gate depth. Do not accept trade-oaths. Do not handle any artifact she carries. Pressure-depth exposure protocol applies. Do not speak your true name. If subject speaks a name you do not recognize — *leave.*
    
    ---
    
    *[Seal: broken spiral glyph, three fracture-lines visible ◈ ash-mark present ◈ Night-Assessor ☽'toterus 'born ◈ Writ burns at reading]*
  CANONICAL_CHRONICLE
  annotation "note_1771588446193_0", anchor: "No Aurora Stack intermediaries. No standard guild channels.", text: "Two civilizations share the Berg — Aurora Stack above, worshipping sky-lights, Nightfall Shelf below, mining fire from volcanic depths — bound by a trade accord because neither survives without the other's exports. This writ was issued during the Orca Incursion, when that interdependence should be tightest. Yet Aurora contact is listed as a contamination vector alongside unsecured guild channels. The Nightshelf's institutional distrust does not relax under existential threat; it calcifies. I have read all three secret renegotiations of the Flipper Accord. In none does either side call the other trustworthy. Only necessary.", type: :commentary, display: :full
  annotation "note_1771588446193_1", anchor: "Foedus∴vincu authentication required", text: "A pact that leaves no impression in the deep ice — none — now serves as the required credential for responding to this writ. If the Foedus∴vincu does not exist, the requirement is itself the screening mechanism: only someone already inside the fiction would know how to perform the authentication. The Parliament is not checking credentials. It is checking belief.", type: :skepticism, display: :popout
  annotation "note_1771588446193_2", anchor: "What the ice witnessed during her elevation is not entered into official record", text: "This formula appears twice — once for her elevation, once for the blade-tip's location. Same phrasing, same legal weight. But notice what the first one concedes: the ice *did* witness it. Someone knows where that memory is preserved and has chosen not to transcribe it. In a notice that catalogues every other detail of her life down to when she touches her amulet, these are the two things they will not write. One is a person's history. The other is a weapon's position. I wonder which one frightens them more.", type: :skepticism, display: :popout
  image "img_chronicle_1770146447047_5po83k_1772879012428", role: :cover, url: "https://theiceremembers.com/raw/project_1765083188592/img_chronicle_1770146447047_5po83k_1772879012428"
  image "img_lovumruius-domina_1772880376550", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_lovumruius-domina_1772880376550", anchor: "charcoal leather merchant's coat, brass fittings deliberately dulled", anchor_index: 400, caption: "Lovumruius~ Domina: The Domina", size: :medium, reference_id: "imgref_1772835693315_0"
  image "img_lovumruius-domina_1772880436122", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_lovumruius-domina_1772880436122", anchor: "Dagger☽ Vaesacsorius~ — seal-artifact, shadow-steel, fragmented", anchor_index: 2059, caption: "Recovery Priority: Dagger☽ Vaesacsorius~", size: :small, reference_id: "imgref_1772835693315_1"
  image "img_lovumruius-domina_1772880434052", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_lovumruius-domina_1772880434052", anchor: "Report to Night-Assessor ☽'toterus 'born at Thrall☽ Vavmastius", anchor_index: 2577, caption: "The Threshold: Where Nightshelf Business Conducts", size: :medium, reference_id: "imgref_1772835693315_2"
end
