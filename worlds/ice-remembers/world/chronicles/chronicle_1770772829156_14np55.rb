# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

chronicle :chronicle_1770772829156_14np55 do
  source_id "chronicle_1770772829156_14np55"
  title "The Barkeep Removes Nothing"
  summary "At the Frost-Glass Tavern in Second Spire Landing, a weathered notice board displays a help-wanted posting for a geothermal engineer at the Third Spire docks, alongside local rumors of strange hunt-songs and a scarred orca with seventeen beaks returning to the waters. The Luminaries' Watchers announce reduced crystal rations and closed recharging stations, while personal notices reveal growing unease—including a plea for aurora-adept certification, a report of a drowned man appearing at the ice-wall, and a cryptic warning in non-flipper script suggesting an ominous presence or reckoning. The postings collectively suggest a community under environmental and spiritual strain, with tensions between official authority, local folklore, and something unnamed emerging from the darkness."
  status :complete
  format :document
  focus :single
  narrative_style :tavern_notices
  focal_era :the_orca_incursion
  ticks from: 143, to: 167
  temporal_description "an extended arc during the The Orca Incursion (24 ticks)"
  touched_eras :the_orca_incursion
  entrypoint :dawn_mandate
  entities :dawn_mandate, :loc_still_pools, :threk_bone_day, :clear_sky_mandate, :thung_gnark_krul, :dawn_marked
  events "tpl-crisis_legislation-146", "tpl-orca_war_ritual-143", "tpl-crisis_legislation-167"
  relationships "clear-sky-mandate:loc_still_pools:originated_in", "dawn-mandate:loc_still_pools:originated_in", "dawn-marked:clear-sky-mandate:subsumes", "dawn-marked:dawn-mandate:subsumes", "thung-gnark-krul:clear-sky-mandate:related_to"
  roles({dawn_mandate: {role: "rumor-subject", primary: false}, loc_still_pools: {role: "job-poster", primary: false}, threk_bone_day: {role: "rumor-subject", primary: false}, clear_sky_mandate: {role: "establishment", primary: false}, thung_gnark_krul: {role: "mysterious-poster", primary: false}})

  prose(<<~'CANONICAL_CHRONICLE', origin: :published)
    ---
    
    # THE FROST-GLASS TAVERN — SECOND SPIRE LANDING
    
    Board warped with age and cold. Pin-holes so dense the lower-left corner is mostly splinter. Three aurora-crystal slivers wedged into the frame cast a thin, unreliable glow. One notice near the top has been frozen to the wood since last thaw and no one bothers anymore. Smells of brine and old fish-fat. The barkeep replaces nothing. The barkeep removes nothing.
    
    ---
    
    **HELP WANTED — GEOTHERMAL ENGINEER OR EQUIVALENT**
    
    Skilled flipper needed at the far edge. Crater-rim work. Steam-vent maintenance—pressure calibration, mineral-flow assessment, thermal gradient mapping. MUST be willing to travel without charts. Duration: indefinite. Payment in warm-water fish, quantity negotiable. Crystals neither accepted nor required.
    
    Inquire at the Third Spire docks. Ask for the courier with the copper-stained satchel. Do not ask twice. Do not bring Watchers.
    
    *[Written in neat, deliberate script on hide-paper. No name. No seal. A faint smell of sulfur.]*
    
    ---
    
    **LOCAL TALK**
    
    Yunaosha zhie'Haven swears on her dead clutch-mate she felt the hunt-songs change pitch three nights back. Not the usual bone-ache hum from the shore—something deeper, like the ice was singing back. Says her grandmother told her about a ritual the pods do. Bones arranged in spirals. Shamans who don't come up again. Says three shaman-pods lost their minds doing it and the aurora flickered out for a full count of sixty.
    
    Jouqouong Nael'Crag says Yunaosha drinks too much brine-wine and the ice cracks on its own.
    
    Jouqouong also hasn't slept in four nights and won't say why.
    
    Shore-watch confirmed a scarred bull orca—left flank, deep gashes, lists when he turns—hunting within sight of the Stack wall again. Seventeen beaks on his harness, they say. *Seventeen.* The one they wrote the Clear-sky into law over. He comes back and he comes back and the sky stays clouded and Council stays silent and we stay—
    
    *[The rest is smeared. Flipper-print visible in the ink.]*
    
    ---
    
    **OFFICIAL ANNOUNCEMENT — LUMINARIES' WATCHERS**
    
    Crystal rations adjusted per Dawn-Marked §4, subsection: Long Dark Provisions. Household allotment reduced to TWO (2) standard aurora-crystals per quarter-cycle, effective immediately. Recharging stations at First and Fourth Spire remain CLOSED until sky clears. Unauthorized twilight trading subject to full penalty under consolidated statute.
    
    Shore-watch rotation posted at the Beacon-Keepers' hall. Sacrifice-position volunteers still needed for the south wall. Excellent views.
    
    *[Stamped with the Luminaries' aurora-seal. Someone has drawn a crude anatomical glyph beneath it.]*
    
    ---
    
    **PERSONAL NOTICES**
    
    SEEKING CERTIFICATION — Can any registered aurora-adept witness and certify a manifestation for purposes of restored voice? I can demonstrate. I CAN. The lite is there, it is faint but it is mine and I will not be marked dark by keepers who watch too eager. I have currency. Crystals accepted.
    — Chemou Nael'Arch, Fourth Spire, berth 16
    
    *posted under clear sky; read in the dark*
    
    Has anyone else seen Tivven near the lower fishery at night? He drowned in the Third Spire collapse. I know he drowned. But he stood at the ice-wall and looked at me and his beak moved like he was counting something.
    — no name given
    
    ---
    
    **CURIOUS POSTING**
    
    *[Pinned in the lower corner. The script is blocky, pressed too hard, shaped by something that isn't a flipper. Someone has drawn a crude fluke-mark beside it. Someone else has tried to tear it down. It remains.]*
    
    YOU COUNT YOUR DEAD BY BEAKS. WE COUNT OURS BY THE HUNTS THAT TASTE HOLLOW. THERE IS A WORD FOR WHAT COMES AFTER BONE-DAY. YOU DO NOT HAVE IT YET.
    
    *No one claims this notice.*
  CANONICAL_CHRONICLE
  annotation "note_1771586529530_0", anchor: "Sacrifice-position volunteers still needed for the south wall. Excellent views.", text: "Sacrifice positions are the death-posts in penguin counter-tactics against coordinated orca assault — volunteers stationed where herder-pods funnel prey toward killing zones, holding ground long enough for everyone behind them to evacuate. Hunt-songs coordinate the approach at frequencies that crack concentration before the finishers arrive. Survival arithmetic for these posts is not published because publishing it would end recruitment. 'Excellent views' is the driest line in this entire collection. Whoever wrote it knew exactly what they were asking for and could not resist. I would like to find their name in the ice. I suspect I won't.", type: :commentary, display: :full
  annotation "note_1771586529530_1", anchor: "three shaman-pods lost their minds doing it and the aurora flickered out for a full count of sixty", text: "This matches the intelligence record of Threk Boneday with a precision tavern gossip has no business possessing. Three shaman-pods, the mind-loss, the aurora disruption — Yunaosha's grandmother either witnessed the aftermath firsthand or someone with Nightshelf intelligence access has been remarkably indiscreet over brine-wine. Jouqouong's four sleepless nights suggest he heard it too and is coping less poetically.", type: :skepticism, display: :popout
  annotation "note_1771586529530_2", anchor: "WE COUNT OURS BY THE HUNTS THAT TASTE HOLLOW", text: "Orca written language on a penguin tavern board. Someone tried to tear it down. It remains. The barkeep removes nothing. I find myself admiring a policy that, by sheer obstinate indifference, has preserved the only first-person orca testimony in this entire collection. 'Hunts that taste hollow' is not a phrase that belongs to a creature the chronicles reduce to kill-counts and harness-beaks. But then, at least two of the legendary raids were retaliatory. We have never been interested in what their grief sounds like.", type: :tangent, display: :full
  image "img_chronicle_1770772829156_14np55_1772879488256", role: :cover, url: "https://theiceremembers.com/raw/project_1765083188592/img_chronicle_1770772829156_14np55_1772879488256"
  image "img_dawn-mandate_1772881436981", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_dawn-mandate_1772881436981", anchor: "Board warped with age and cold", anchor_index: 54, caption: "The Frost-Glass Tavern notice board—where the colony's desperation and fear crystallize into written word.", size: :medium, reference_id: "imgref_1772835791793_0"
  image "img_dawn-mandate_1772897957821", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_dawn-mandate_1772897957821", anchor: "scarred bull orca—left flank, deep gashes, lists when he turns", anchor_index: 1634, caption: "The returning predator: seventeen beaks, one law, and a sky that refuses to answer.", size: :large, reference_id: "imgref_1772835791793_1"
  image "img_dawn-mandate_1772881459491", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_dawn-mandate_1772881459491", anchor: "stood at the ice-wall and looked at me and his beak moved", anchor_index: 3180, caption: "The drowned return: Tivven at the threshold, counting something the living cannot name.", size: :large, reference_id: "imgref_1772835791793_2"
end
