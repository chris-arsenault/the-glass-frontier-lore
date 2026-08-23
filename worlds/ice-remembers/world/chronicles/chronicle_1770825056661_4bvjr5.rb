# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

chronicle :chronicle_1770825056661_4bvjr5 do
  source_id "chronicle_1770825056661_4bvjr5"
  title "Glow-Fissure Incursion Assessment"
  summary "The Shadow-Walk Detachment ☽'Tertius conducted deep reconnaissance of the Glow-Fissure following the dissolution of the Midnight Claws and transfer of guard authority to the Fire Keepers, but the mission resulted in significant casualties with only five of eight operatives returning and two rendered non-responsive. The investigation revealed that the Wake-Singers, led by Vel'keth, have breached through the Fissure's base and descended past the third descent into unmapped passages, with something non-human subsequently returning that communicates in hunt-song frequencies. Acting Lead Caelius~ assessed the Glow-Fissure as a critical threat to the colony's foundation and recommended sealing the second descent and abandoning the third, warning against further deep reconnaissance while noting the loss of the Thaw-Paths Medallion and the dangerous properties of Shadow-Broker Nyla's Crystalline Spiral technique."
  status :complete
  format :document
  focus :single
  narrative_style :field_report
  focal_era :the_great_thaw
  ticks from: 0, to: 21
  temporal_description "an extended arc during the The Great Thaw (21 ticks)"
  touched_eras :the_great_thaw
  entrypoint :loc_nightfall_shelf
  entities :loc_nightfall_shelf, :loc_glow_fissure, :faction_wake_singers, :npc_nyla, :medallion_of_pathway, :glacial_crystalline_spiral
  events "tpl-magic_discovery-21", "act-spread_corruption:loc_glow_fissure-5"
  relationships "faction_wake_singers:loc_glow_fissure:desecrated", "glacial-crystalline-spiral:loc_nightfall_shelf:manifests_at", "loc_glow_fissure:loc_nightfall_shelf:corrupted_by", "loc_nightfall_shelf:loc_glow_fissure:corrupted_by", "loc_nightfall_shelf:loc_glow_fissure:adjacent_to", "medallion-of-pathway:faction_wake_singers:owned_by", "npc_nyla:glacial-crystalline-spiral:practitioner_of", "npc_nyla:loc_nightfall_shelf:leader_of", "npc_nyla:loc_nightfall_shelf:resident_of"
  roles({loc_nightfall_shelf: {role: "enemy-force", primary: true}, loc_glow_fissure: {role: "terrain-assessed", primary: false}, faction_wake_singers: {role: "reporting-unit", primary: false}, npc_nyla: {role: "enemy-force", primary: false}, medallion_of_pathway: {role: "strategic-asset", primary: false}, glacial_crystalline_spiral: {role: "capability-observed", primary: false}})

  prose(<<~'CANONICAL_CHRONICLE', origin: :published)
    ---
    
    **FIELD REPORT — RESTRICTED**
    **Classification:** DEEP-WATCH / PRIORITY VERMILLION
    **Date:** 7th rotation, sub-winter thaw-shift. Long Dark thinning confirmed.
    **Reporting Unit:** Shadow-Walk Detachment ☽'Tertius, Nightfall Shelf Interior Reconnaissance
    **Reporting Officer:** Caelius~, Acting Lead, ☽'Tertius
    **Addressed to:** Fire Keeper Senior Authority, Nightfall Shelf — or whoever currently holds operational command.
    
    *[Marginal note, later hand: No one held it. —R.]*
    
    ---
    
    **MISSION & STATUS**
    
    ☽'Tertius tasked with deep reconnaissance of Glow-Fissure perimeter sectors following transfer of guard authority from dissolved Midnight Claws to Fire Keeper rotation. Mission: assess breach integrity, confirm or deny Wake-Singer presence below third descent, evaluate defensive posture. Unit deployed at strength eight. Five returned. Two are non-responsive. One is speaking, but not in any language we use.
    
    ---
    
    **OBSERVATIONS**
    
    Nightfall Shelf command structure is functionally incoherent. Shadow-Broker Nyla's confession — three hours under aurora-light, thirty winters of ledger-perfect crime laid bare — removed the only authority the deep tunnels recognized. The Midnight Claws are dissolved under Iudicium∴culum. Fire Keepers now hold Fissure guard posts on the same three-day rotation the Claws used. They were not trained for this. Corruption readings at sub-third descent have increased measurably since the transfer. Aurora-crystal reserves in the bioluminescent corridor system are adequate for [BLANK] rotations at current consumption. *[Marginal note: Number was here. Redacted before first copy. —R.]*
    
    The Glow-Fissure: ambient temperature at upper reaches holds at 20.6°. Below second descent, instruments read colder than exterior ice despite volcanic proximity. At third descent — the depth where reports stop — temperature readout ceased to function. The blue-green pulse is visible from sub-third market stalls. Pulse interval has shortened from twelve-count to seven since Wake-Singer breach. Acoustic signature in the 14–22 Hz range is continuous. At depth it resolves into something rhythmic. We recorded it. Playback produces the rhythm but not the *effect*. The effect requires presence.
    
    Nyla is reported to have used the ☽'glacial Crystalline~ Spiral at or near the Fissure prior to her confession. Observed evidence: recursive ice-fracture patterns at second descent, spiraling formations that hold sealed moments. We recovered one. It contained a scream that three team members identified as belonging to three different penguins. Area of effect: unclear. Duration: the formations do not decay. Practitioner cost: every operative who has attempted to map the Spiral's parameters has subsequently been unable to remember the results. *[Marginal note, different hand: All true. I was the fourth. —SOURCE DECEASED]*
    
    ---
    
    **ENCOUNTERS**
    
    The Wake-Singers breached through the corruption-scar at the Fissure's base. Vel'keth reportedly led forty chanters — three independent sources confirmed forty; one source reported seventy — into unmapped passages via deep-route tunnels opened under the Foedus∴vincu pact. They descended past third descent and have not resurfaced. On the ninth day following breach, something came back up speaking in frequencies consistent with hunt-song but structured as language. It was not Vel'keth. It addressed us by unit designation. We withdrew.
    
    *[Marginal note: Nyla stood seven feet tall. She did not. She stood as tall as any of us. That is what was terrifying. —R.]*
    
    ---
    
    **TACTICAL ASSESSMENT**
    
    Existing counter-doctrine assumes orca threat vectors from shoreline. The Wake-Singers have inverted this. They are below us. No fortification addresses a threat rising through the colony's own foundation. The Glow-Fissure is simultaneously a wound, a door, and — we assess with low confidence — a mouth. The Thaw-Paths Medallion, relevant to mapping deep-route vectors, is listed as removed from Stillness-Bound custody by Frost-ward Yunjoushong zhu'Eyrie. Current location: UNVERIFIED. Last known position: Midway Shelf approach. Carrier has not reported.
    
    ---
    
    **RECOMMENDATIONS**
    
    Abandon third descent. Seal second descent with fire-core charges and accept the mineral loss. Reclassify the Glow-Fissure from terrain feature to active threat. Locate the Thaw-Paths Medallion or accept that its intelligence value is now hostile. Request Aurora Stack consultation on the Crystalline Spiral — if any practitioner survives who can remember what it does.
    
    Do not send another team to the depth where reports stop.
    
    *[Final marginal note, undated: They sent another team. —R.]*
  CANONICAL_CHRONICLE
  annotation "note_1771575234543_0", anchor: "Long Dark thinning confirmed", text: "Buried in the date-header like a weather notation. During the Long Dark the boundary between living world and ice-memory thins — the dead speak more clearly, abilities enhance but resist control, presences surface unbidden. Every anomaly Caelius~ catalogues downstream — acoustic signatures resolving into language at depth, a sealed moment containing a scream three penguins each claimed as their own, something returning from below that knew their unit designation — these are veil-thinning phenomena. The Glow-Fissure sits atop deep ice-memory. During thinning it amplifies. Extraordinary that ☽'Tertius filed this as tactical reconnaissance rather than a veil-event report. Perhaps they knew no one would act on a veil report.", type: :commentary, display: :full
  annotation "note_1771575234543_1", anchor: "three independent sources confirmed forty; one source reported seventy", text: "Three sources agreeing on a round number in unmapped passages during an active incursion is not corroboration. It is consensus. The lone dissenter reporting seventy is probably the only honest count in the set: 'I couldn't see clearly but there were more than they're saying.'", type: :skepticism, display: :popout
  annotation "note_1771575234543_2", anchor: "thirty winters of ledger-perfect crime laid bare", text: "If the Great Thaw is the focal era, thirty winters of shadow infrastructure predates it entirely. The ice beneath Aurora Stack contains Midnight Claws administrative records from before any Thaw-era date marker I can identify. The shadow economy did not emerge during the Thaw. The Thaw emerged around it. Source contamination is possible but the simpler reading is that the Nightshelf's institutional skeleton is older than the optimistic founding narrative admits.", type: :temporal, display: :popout
  image "img_chronicle_1770825056661_4bvjr5_1772878712768", role: :cover, url: "https://theiceremembers.com/raw/project_1765083188592/img_chronicle_1770825056661_4bvjr5_1772878712768"
  image "img_loc_nightfall_shelf_1772879409951", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_loc_nightfall_shelf_1772879409951", anchor: "Unit deployed at strength eight. Five returned.", anchor_index: 798, caption: "Shadow-Walk Detachment ☽'Tertius reconnaissance descent into the Glow-Fissure", size: :large, reference_id: "imgref_1772835720941_0"
  image "img_loc_nightfall_shelf_1772879424855", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_loc_nightfall_shelf_1772879424855", anchor: "Shadow-Broker Nyla's confession — three hours under aurora-light", anchor_index: 1005, size: :large, reference_id: "imgref_1772835720941_1"
  image "img_loc_nightfall_shelf_1772879522375", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_loc_nightfall_shelf_1772879522375", anchor: "recursive ice-fracture patterns at second descent, spiraling formations", anchor_index: 2359, size: :medium, reference_id: "imgref_1772835720941_2"
  image "img_loc_nightfall_shelf_1772879477921", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_loc_nightfall_shelf_1772879477921", anchor: "something came back up speaking in frequencies consistent with hunt-song", anchor_index: 3245, size: :large, reference_id: "imgref_1772835720941_3"
end
