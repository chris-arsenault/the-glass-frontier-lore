encyclopedia :ash_skater do
  name "Skirr"
  kind :lifeform
  subkind :animal
  status :complete
  log "2026-08-31 — Renamed Ash Skater to Skirr; the prior descriptive compound did not supply a setting name."
  topics :ecology, :"outer-system", :navigation
  prevalence :uncommon
  appears_when all: { place: [:hot] }
  summary "Skirr are long-legged hot-country grazers whose splayed ceramic feet and narrow mineral fins carry them across Ashvane's ash pans and Crucible's hot ground. Flocks skim mineral blooms in the cool hours, bend away from weak crust, and scatter ahead of a pressure front; a cornered skirr sheds cutting flakes from its fins."
  origin "Native hot-country stock, ranging across Ashvane and Crucible wherever heat and mineral growth leave open ground"
  biology "A light-bodied runner on splayed three-toed feet with ceramic soles and narrow mineral fins along the legs and flanks; the feet spread its weight across thin crust, while the fins shed heat and steady the animal in moving pressure"
  lifespan "#{duration 10}; pan flocks hold seasonal ranges and cross between pans on the cool hours"
  function "Mineral-bloom grazer whose turn lines and abandoned feeding grounds give pan crews an independent reading of crust movement"
  principal_accommodation "Working pans leave flocks unhunted, keep wagons out of their feeding lines, and give a trapped animal room to run before its fins shed"

  descriptive_identity(
    appearance: "A crane-tall ash-gray runner on broad three-toed feet, with " \
                "pale ceramic soles and thin mineral fins laid flat along its " \
                "shins and flanks. A moving flock looks like one broken line " \
                "skimming the pan.",
    behavior: "Flocks feed in single file, taking one bite of mineral bloom " \
              "per stride. They travel between feeding pans in the cool hours, " \
              "fan apart when the air pressure turns, and regroup downwind.",
    threat: "A cornered skirr flares its fins and shakes loose a spray of " \
            "sharp mineral flakes before it runs. Pan hands open an escape " \
            "lane instead of closing around one.",
    senses: "The feet register heat, crust thickness, and the give ahead of a " \
            "break. The fins lift at the leading edge of a pressure front, " \
            "often before loose ash begins to move.",
    risks: "A turn-back marks crust that will not carry a person or wagon. A " \
           "completed crossing proves only that the surface carried a skirr " \
           "at that hour, so crews pair track lines with poles and heat readings."
  )

  prose <<~PROSE
    Pan crews call the animal a skirr for the line its feet leave across loose mineral crust. The body is crane-tall and light, carried on three-toed feet whose pale ceramic soles spread each stride. Narrow mineral fins lie against the legs and flanks. They vent heat in still air, then lift to steady the animal when a pressure front begins to move the ash.

    Flocks graze the mineral blooms of #{ref :ashvane, "Ashvane"} and the hot ground around #{ref :crucible, "Crucible"}, feeding at speed in single file. Each animal takes one strike of bloom per stride. The line travels in the cool hours, fans apart when the pressure changes, and reforms downwind. A trapped skirr flares its fins and shakes loose their brittle edges in a spray that cuts exposed skin and cooling cloth. Pan hands clear an escape lane and wait for the animal to choose it.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Reading a Flock"
    Skirr feel heat, thickness, and the give ahead of a break through their feet. A flock bends around weak ground before it reaches the visible fracture, leaving a clean turn line in the ash. Pan crews glass the morning tracks from the edge, rope off feeding ground the flocks have abandoned, and copy seasonal range changes beside their crust surveys.

    The track reading is limited by the animal's weight. A turn-back closes ground to boots and wagons. A completed crossing establishes that the crust carried one light animal at that hour, so a crew still sounds the line and takes a heat reading before a load follows it. Working pans leave the flocks unhunted because every feeding run produces another set of tracks.
  PROSE

  cue "A dozen skirr cross the far bloom in single file, then bend around one bare patch and leave a clean crescent of tracks for the survey crew to copy."
  cue "The flock's mineral fins rise together in still air. Loose ash starts moving a few breaths later, and the line fans apart downwind of the approaching front."
  affordance "Turn lines and abandoned feeding pans give crews a second crust survey, while seasonal changes in a flock's range show which pans are becoming hotter or less stable."
  pressure "Closing around a skirr makes it flare and shed cutting flakes. Handlers open one clear lane, protect their cooling cloth, and let the animal leave under its own power."
  variation "Ashvane flocks keep broad seasonal ranges and feed in long lines across open pans."
  variation "Crucible-front records describe solitary skirr with broader mineral fins that hold a pressure front longer before they drop back to the ground."
end
