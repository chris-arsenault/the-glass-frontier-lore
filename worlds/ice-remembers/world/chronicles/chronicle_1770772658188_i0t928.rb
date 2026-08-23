# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

chronicle :chronicle_1770772658188_i0t928 do
  source_id "chronicle_1770772658188_i0t928"
  title "Lower Shelf Trade Board"
  summary "A help wanted notice from someone signed 'S~' seeks a salvager for dangerous retrieval work below the third thermal junction at the Profundor Tap, offering payment in uncut fire-cores and a remembered debt. Local gossip reveals unsettling activity in the eastern reaches of the Slew, concerns about forbidden binding-craft questions near Umbra∴go that have drawn Fire Keeper attention, and a mysterious carved message from 'J.R.Z.' seeking something the pod will not provide. Official announcements from Shadow-Broker Nyla govern the Hisper∴VI Trade Festival with strict protocols around the expanded Umbra∴go memorial boundary, while personal notices seek a miner to verify a fire-core claim for Iceholm ☽'Uclo'Sun and ask for help locating a lost bone-handled pressure gauge."
  status :complete
  format :document
  focus :ensemble
  narrative_style :tavern_notices
  focal_era :the_frozen_peace
  ticks from: 184, to: 232
  temporal_description "an extended arc during the The Frozen Peace (48 ticks)"
  touched_eras :the_frozen_peace
  entrypoint :umbra_go
  entities :umbra_go, :the_nighted_lantern, :the_thewsed_slew, :thung_gnark_krul, :void_banisher_sivruta, :the_hisper_vi
  events "act-cleanse_corruption:otrolal-the-watchful-204", "act-steal_artifact:rend-kzul-orca-marauders-218", "act-tradition_commemorates_event:umbra-go-229", "act-tradition_commemorates_event:umbra-go-230", "act-steal_artifact:krath-thund-gnurl-231", "act-artifact_enshrines_tradition:the-nighted-lantern-232"
  relationships "the-nighted-lantern:the-thewsed-slew:stored_at", "the-nighted-lantern:thung-gnark-krul:owned_by", "the-nighted-lantern:umbra-go:central_to", "umbra-go:the-hisper-vi:commemorates"
  roles({umbra_go: {role: "rumor-subject", primary: true}, the_nighted_lantern: {role: "rumor-subject", primary: false}, the_thewsed_slew: {role: "establishment", primary: false}, thung_gnark_krul: {role: "mysterious-poster", primary: true}, void_banisher_sivruta: {role: "job-poster", primary: false}})

  prose(<<~'CANONICAL_CHRONICLE', origin: :published)
    # THE PROFUNDOR~ TAP — THIRD THERMAL JUNCTION, LOWER NIGHTFALL SHELF
    
    Salvage-stone wall, condensation-streaked. Three fire-core nails missing on the left side. Someone's scratched a crude orca shape in the margin. No one's scraped it off.
    
    ---
    
    **HELP WANTED**
    
    *[Precise, small script on ash-grey paper. A postscript at the bottom has been scored out with something sharp — the ghost of words still legible beneath the scratching.]*
    
    A shadow needs filling. Work below the third thermal — duration uncertain. The task concerns retrieval from passages where the pressure-sense reads wrong. Applicant must carry their own light and know when to leave it behind. Compensation: two fire-cores, grade uncut, and a debt remembered.
    
    Do not ask what was retrieved before you. Do not bring iron tools.
    
    Inquire at the third echo. Come alone.
    
    — S~
    
    ---
    
    **LOCAL TALK**
    
    *[Scrawled in several hands. One posting pinned directly over another.]*
    
    Courier Downdraft says something was moving in the eastern reaches of the Slew~ — not orca-shape, not penguin-either. Travel advisory posted and torn down twice. Guild-master ☽'noctisix says keep to lit passages east of the forge-vents until the festival closes. Practical hazard, not theology. You know the difference.
    
    *[Scratched beneath in a rougher flipper:]* I SAW WHAT I SAW AND IT WASNT PRESSURE-SICKNESS
    
    *[In yet another hand, smaller:]* Three times now someone's been asking the wrong proverbs near Umbra∴go. Questions about old binding-craft. The blood-to-stone work. Noctisaea~ told them fire shared is fire halved — meaning *stop sharing.* They didn't stop. The Fire Keepers are aware. The ice remembers what you buried, and so do they.
    
    ---
    
    **ANNOUNCEMENTS**
    
    *[Official guild notice, courier ink glowing faintly at the seal. Someone has drawn something anatomically creative over the bottom corner.]*
    
    BY ORDER OF SHADOW-BROKER NYLA — HISPER∴VI TRADE FESTIVAL, DAYS ONE THROUGH THREE
    
    Vendor staging at upper cavern junction six. Crystal prices fixed nine-per-bundle until surplus confirmed. Aurora Stack couriers hold inviolable passage — remind your younglings.
    
    Umbra∴go memorial boundary EXPANDED twelve fathoms east per Fire Keeper mandate. No ice-work, no fire-draw, no exceptions. Last season's exception cost three names added to the wall. Festival stalls will NOT encroach.
    
    Fermented kelp-wine limited two skins per vendor. You know why.
    
    ---
    
    **PERSONAL NOTICES**
    
    *[Neat but tired script, pinned low on the board where the damp's worst.]*
    
    Seeking any miner who worked the eastern shaft before the flooding. Iceholm ☽'Uclo'Sun needs to settle a fire-core claim her father left in storage vault nine. The ledger entry is smudged and Kess won't go to the upper caverns herself to dispute it. If you can vouch for the count theres a meal at the Tap and a debt owed honestly.
    
    Also — bone-handled pressure gauge, missing from near the second thermal vent. Was my mates. Has no value except to me.
    
    ---
    
    **CURIOUS POSTING**
    
    *[Gouged directly into the salvage-stone with something that bit deep. Letters blocky, wrong-angled, too large. A kelp-fibre border around it suggests someone framed it for removal. No one has removed it.]*
    
    HUNT-KIN WITH MAIMED FLANK SEEKS WHAT THE POD WILL NOT GIVE.
    
    I CARRY WEIGHT. I TRADE WEIGHT.
    
    YOUR DEEP-SHELF KNOWS WHAT SWIMS BENEATH YOUR WORDS.
    
    FIND ME WHERE WARM-STONE MEETS SALT.
    
    — J.R.Z.
    
    *[Tiny Nightshelf script scratched underneath:]* why is this still here
  CANONICAL_CHRONICLE
  annotation "note_1771589482805_0", anchor: "not orca-shape, not penguin-either", text: "\"Practical hazard, not theology. You know the difference.\" Wonderful confidence from Guild-master ☽'noctisix. The Thewsed Slew~ sits over strata I have personally catalogued — strata containing impressions from before penguin habitation. Patient attentions. Orientations without bodies. Every thin-veil period produces identical reports: something watching that is neither predator nor kin. The canon on dark-watchers — presences at perception's edge, figures that vanish when observed directly — maps precisely onto what Courier Downdraft described. ☽'noctisix has filed the unclassifiable under 'hazard' and moved on. Admirably efficient. Completely wrong category.", type: :commentary, display: :full
  annotation "note_1771589482805_1", anchor: "Do not ask what was retrieved before you. Do not bring iron tools.", text: "\"S~\" is Sivruta~. Iron disrupts pressure-depth communion — standard void-work precaution. A Void-banisher hiring retrieval assistants through a tavern board is either a sign of how far institutional support has eroded, or exactly the operational discretion you'd expect from someone the Mask chose. Possibly both.", type: :pedantic, display: :popout
  annotation "note_1771589482805_2", anchor: "why is this still here", text: "Everyone's question. No one's answer. Jark Rankzule — identifiable by the maimed flank from Augur ☽'Milucaum~ Shadow-bane — hunts near Aurora Stack, not Lower Nightfall Shelf. That he traveled deep into penguin territory to gouge a trade offer into salvage-stone means the Frozen Peace is being tested in exactly the way the Frozen Peace was designed to pretend couldn't happen. Removing the notice would require acknowledging the visit. Easier to leave it and ask small questions underneath.", type: :commentary, display: :popout
  image "img_chronicle_1770772658188_i0t928_1772879355963", role: :cover, url: "https://theiceremembers.com/raw/project_1765083188592/img_chronicle_1770772658188_i0t928_1772879355963"
  image "img_umbra-go_1772881169472", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_umbra-go_1772881169472", anchor: "Salvage-stone wall, condensation-streaked", anchor_index: 70, caption: "The Third Thermal Junction notice board—a record of need, warning, and unresolved questions.", size: :medium, reference_id: "imgref_1772835801299_0"
  image "img_umbra-go_1772881171839", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_umbra-go_1772881171839", anchor: "something was moving in the eastern reaches", anchor_index: 961, caption: "The eastern reaches—where pressure-sense fails and travel advisories are torn down twice.", size: :large, reference_id: "imgref_1772835801299_1"
  image "img_umbra-go_1772881186775", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_umbra-go_1772881186775", anchor: "Umbra∴go memorial boundary EXPANDED twelve fathoms east", anchor_index: 2120, caption: "The expanded boundary—three names added to the wall, the cost of exception made permanent.", size: :large, reference_id: "imgref_1772835801299_2"
  image "img_umbra-go_1772881191961", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_umbra-go_1772881191961", anchor: "HUNT-KIN WITH MAIMED FLANK SEEKS WHAT THE POD WILL NOT GIVE", anchor_index: 3195, caption: "The maimed hunt-kin—seeking what the pod refuses to give, trading weight for weight.", size: :large, reference_id: "imgref_1772835801299_3"
end
