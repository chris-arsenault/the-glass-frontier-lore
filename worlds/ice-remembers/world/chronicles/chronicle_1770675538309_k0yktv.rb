# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

chronicle :chronicle_1770675538309_k0yktv do
  source_id "chronicle_1770675538309_k0yktv"
  title "Fire Keeps, Fire Takes"
  summary "\"The Scar-Mouth Song\" is a fragmented folk song sung by fire-tenders working deep in the mines below Scar☽ Lucamlinaecius, attributed to a vanished courier named ☽'voidae. The song recounts the mysterious fate of three readers who encountered a luminescent book kept in the mines, each of whom disappeared after reading it, with the third vanishing during the Long Dark when strange phenomena involving ice and light occurred. The book remains in the mines, glowing in darkness and waiting, while the names of those who kept it are now merely labor-shifts and fading marks on stone."
  status :complete
  format :document
  focus :single
  narrative_style :folk_song
  focal_era :the_faction_wars
  ticks from: 38, to: 49
  temporal_description "a short episode during the The Faction Wars (11 ticks)"
  touched_eras :the_faction_wars
  entrypoint :the_misted_skull
  entities :the_misted_skull, :shadow_samsiavae, :faction_midnight_claws, :drift_coalesce_glacial
  events "sys-control_collapse:faction_midnight_claws-38", "act-ideology_conquers:mandatum-absconditu-41", "sys-devout_believer_detector:faction_midnight_claws-41", "tpl-ice_memory_thaw-49"
  relationships "the-misted-skull:shadow-samsiavae:stored_at", "faction_midnight_claws:shadow-samsiavae:controls"
  roles({the_misted_skull: {role: "song-subject", primary: true}, shadow_samsiavae: {role: "cultural-origin", primary: false}, faction_midnight_claws: {role: "song-subject", primary: false}})

  prose(<<~'CANONICAL_CHRONICLE', origin: :published)
    # The Scar-Mouth Song
    
    **Collector's Note:**
    Sung in fragments by fire-tenders on deep shifts below Scar☽ Lucamlinaecius, near the mine called the Scar-mouth. Parts attributed to a vanished courier, ☽'voidae. No complete version survives. Considered unlucky to sing above mid-depth.
    
    ---
    
    Down where the Scar-mouth draws its breath
    and rendered fat stains stone,
    where cleansing-scars run brittle-bright
    and fire-cores hum like bone—
    a book waits wrapped in biolume cloth
    upon its shelf, alone.
    Three notches scored along the spine:
    three readers. Sent below. All gone.
    
    > *Read it in the dark or not at all—*
    > *the pages only wake*
    > *where flame won't reach. Fire keeps, fire takes.*
    > *Who comes back from silence?*
    
    The claw-marks on the eastern wall
    still glow but growing thin—
    the ones who moved through dark like blood
    through veins beneath the skin.
    They kept the book, they kept the mine,
    they kept what couldn't last.
    Now all their names are labour-shifts.
    The scratches dim. The Claws have passed.
    
    > *Read it in the dark or not at all—*
    > *the pages only wake*
    > *where flame won't reach. Fire keeps, fire takes.*
    > *Who comes back from silence?*
    
    They say there's ice that grows from light—
    aurora in the bone,
    a cold that blooms where fire should live
    and makes your breath its own.
    The third went down during the Long Dark.
    The dead were speaking clear.
    The cloth came back refolded neat.
    The reader wasn't here.
    
    > *Read it in the dark or not at all—*
    > *the pages only wake*
    > *where flame won't reach. Fire keeps, fire takes.*
    > *Who* came *back from silence?*
    
    Down where the Scar-mouth draws its breath,
    the cloth is folded still.
    The pages glow. The dark is warm.
    The book waits. And it will.
  CANONICAL_CHRONICLE
  annotation "note_1771578827840_0", anchor: "The third went down during the Long Dark", text: "Every element here maps to Walking testimony preserved in the deep ice: departure without violence, the veil thinning, the dead speaking clearly, and an absence that leaves no body. The cloth refolded neatly — that calm, deliberate quality recurs in every Walking account I have catalogued. And the refrain's tense shift in the final verse, from 'Who comes back' to 'Who *came* back' — the fire-tenders know that some Walking victims return. The song does not name the Walking. At depth, you do not need to. Everyone singing already knows.", type: :commentary, display: :full
  annotation "note_1771578827840_1", anchor: "the ones who moved through dark like blood", text: "Ostensibly the Midnight Claws. But tunnel gangsters do not move through darkness like blood through veins beneath the skin — that is the language of something *embedded* in the Berg's structure, not walking through it. The Claws are the surface reading. The fire-tenders singing this at depth, during shifts where the dark presses close, know what else moves down there. They gave it a familiar name so they could sing about it without singing about it.", type: :skepticism, display: :popout
  image "img_chronicle_1770675538309_k0yktv_1772878670934", role: :cover, url: "https://theiceremembers.com/raw/project_1765083188592/img_chronicle_1770675538309_k0yktv_1772878670934"
  image "img_the-misted-skull_1772879146697", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_the-misted-skull_1772879146697", anchor: "---\n\nDown where the Scar-mouth draws its breath\nand rendered fat stains stone,\nwhere cleansing-scars run brittle-bright\nand fire-cores hum like bone—\na book waits wrapped in biolume cloth\nupon its shelf, alone.", anchor_index: 284, caption: "The Scar-Mouth's Keeper: A tome of forgotten readers, waiting in the dark.", size: :large, reference_id: "imgref_1772835725944_0"
  image "img_the-misted-skull_1772879159627", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_the-misted-skull_1772879159627", anchor: "Fire keeps, fire takes.*\n> *Who comes back from silence?*\n\nThey say there's ice that grows from light—\naurora in the bone,\na cold that blooms where fire should live\nand makes your breath its own.", anchor_index: 1103, caption: "The Long Dark's Price: Where fire-keepers descend and silence answers back.", size: :large, reference_id: "imgref_1772835725944_1"
end
