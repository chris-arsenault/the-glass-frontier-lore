encyclopedia :merai do
  name "Merai"
  summary "Merai are cultivated garden plants that vent root heat through hollow stems as a standing chord. The note sours near diseased grafts; cut stems provide winter groundstock and blanks for Mera's flutes."
  kind :lifeform
  subkind :plant
  status :complete
  log "2026-08-31 — Renamed Reeds to Merai; the former generic plant label did not identify the crop."
  topics :ecology, :music, :"ring-hab", :"ring-era"
  prevalence :uncommon
  appears_when all: { place: [:garden] }
  origin "Elven garden stock, bred as sentinel planting for the ring's grow galleries; the Mera terraces hold the oldest postfall beds and gave the plant its name"
  biology "A tall hollow-stemmed reed whose roots run shallow and wide among its neighbors; venting root heat through the fluted stems drives a soft standing chord, tuned by stem length and fed by the health of the root web it shares"
  lifespan "A stand cut on rotation is effectively permanent; individual stems live #{duration 3} and the great named stands predate their gardeners' grandparents"
  function "Living diagnosis: the chord's pitch and fullness report the root-web health of everything the stand touches, and a souring note names trouble by direction before any leaf admits it"
  resonance_relation "The chord rides the garden's structural band, and a practiced ear places a sour note's bearing the way a pilot places a bell"

  descriptive_identity(
    appearance: "A tall gray-green reed with fluted, open-throated stems, grown " \
                "in curved stands along bed margins; on a still day the stand " \
                "hums its chord at the edge of hearing, and against evening " \
                "cold it sings plainly.",
    behavior: "It vents root heat as tone, roots wide into its neighbors' " \
              "ground, and holds its chord while the shared web is well; " \
              "disease arriving anywhere in reach pulls the near stems flat " \
              "and sour within a day.",
    threat: "Dense roots compete with young grafts if a stand spreads past " \
            "its bed margin. Cutting too deeply also removes the stems whose " \
            "pitch carries the local root reading.",
    senses: "It reads the root web it shares — water, rot, the chemical " \
            "grammar of stressed grafts — and translates the reading into the " \
            "one channel gardeners keep open all day.",
    risks: "Damage or disease in the plant changes its chord as surely as " \
           "trouble elsewhere in the root web. Gardeners inspect the stand " \
           "itself before using a sour note to locate another sick bed."
  )

  prose <<~PROSE
    Elven growers bred merai for the ring's garden galleries. The tall hollow stems vent heat from a shallow root mat, producing a soft standing chord whose pitch varies with the condition of the shared root web. Healthy beds hold the note. Disease or water stress pulls nearby stems flat and sour within a day, and the changed section gives gardeners a bearing into the beds. The #{ref :mera, "Mera"} terraces preserved the oldest postfall stands and gave the plant its present name.

    Stands open their leaves in daylight and sing most plainly against the evening cold. Mera gardeners use that hour to walk the margins, compare neighboring sections, and inspect the plant itself before following a sour note inward. The roots must be kept within their strips so they do not compete with young grafts. Individual stems live #{duration 3}, while a stand cut on rotation continues through many generations.

    Old named stands are divided into inherited cutting strips tied to the beds they border. Families harvest their section on a posted rotation and dry the stems along terrace walls. Lower grades become winter groundstock; straight fluted lengths become instrument blanks for #{encyclopedia_ref :answering_phrase, "the Answering Phrase"}. A fresh cut temporarily thins the chord, then regrowth fills the missing notes.
  PROSE

  cue "At listening hour the gardener walks the terrace margin with her head tilted, stops at the curve where the chord runs flat and sour, and marks the third bed inward for the morning — the merai having named the bearing."
  cue "The family's cutting day: their inherited strip of the old stand harvested on rotation, the stems stacked to dry along the terrace wall, and the stand's chord audibly thinner until the regrowth fills the voice back in."
  affordance "A tended stand reports root-web trouble by pitch and bearing before visible symptoms, and its regular cutting yields foodstock and instrument reeds."
  variation "Terrace stands run the full tenure system with named stands and inherited strips; hab gallery plantings are young civic stock, tended by the gardeners' cooperative and tuned brighter for indoor bands."
  variation "Cut stems grade into winter groundstock and instrument reed, and the flute-makers' buyers walk the drying stacks each season choosing blanks by tapping — the stand's chord audible one last time, stem by stem."
end
