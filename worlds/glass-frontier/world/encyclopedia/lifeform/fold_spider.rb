encyclopedia :fold_spider do
  name "Shearweaver"
  kind :lifeform
  subkind :anomaly
  status :complete
  log "2026-08-31 — Renamed Fold Spider to Shearweaver; the established shear root places the animal in the debris culture that charts its webs, while weaver names the behavior that makes it useful there."
  topics :ecology, :"fluid-reality", :danger, :mystery
  prevalence :rare
  appears_when all: { place: [:debris_field] }
  summary "Shearweavers are pale Deep Shear animals that anchor their silk through distortion pockets where distance disagrees with itself. They repair storm-torn webs, haul their catch along shortcuts through the folds, and answer disturbance from anchors a crew's instruments place somewhere else."
  origin "Documented in the Deep Shear's distortion pockets; survey literature treats them as organisms native to the pockets' contradictory geometry"
  biology "A long-legged weaver that anchors silk through spatial folds; its webs span distances the surveys measure as both a hand's width and forty spans, and both measurements repeat"
  resonance_relation "Webs sit along the distortion gradients, and a web's tension readings map its pocket's folds more finely than instruments survey them"

  descriptive_identity(
    appearance: "A pale many-jointed weaver the size of spread hands, seen mostly as " \
                "motion at a web's far anchor — a point the eye may put a hand's width " \
                "away while the rangefinder holds it at forty spans.",
    behavior: "It webs across distortion pockets, anchoring through the folds, and " \
              "walks its own silk between points the surveys measure as distant — " \
              "hauling catch, escaping approach, and repairing storm damage by " \
              "routes that exist for the spider and the silk.",
    threat: "A snagged strand transfers a crew's movement through anchors it cannot all " \
            "see. Claim crews treat fold silk as live line: cut nothing and back out " \
            "along the approach.",
    senses: "It reads its web's tension across the folds and answers disturbance from " \
            "anchors a crew's instruments place elsewhere entirely.",
    risks: "Abandoned webs outlast their weavers and keep their folds. Charted old " \
           "webs serve claim crews as measured shortcuts; an uncharted strand can " \
           "draw a suit or cargo line toward an unseen anchor."
  )

  prose <<~PROSE
    Shearweavers live in the #{ref :deep_shear, "distortion pockets"} where distance gives two repeatable answers. Their silk anchors through the folds themselves: one strand may run from a wreck's rail to a point the eye puts a hand's width away and the rangefinder holds at forty spans. The pale, many-jointed animal walks between those readings on its own line. It repairs storm-torn strands, hauls captured animals toward an anchor, and turns toward tension entering the web from beyond a crew's sight.

    Each web follows the grain of its pocket. Survey crews chart the strands the way pilots read kite lines, using their tension to map folds more finely than instruments manage alone. The survey literature remains divided over whether a spider finds an existing fold or makes one: both sets of measurements come from the same webs and repeat on later passes.

    Claim crews distinguish live webs from abandoned routes. Around a live web they approach slowly, haul steadily, and leave the spider's catch in place; the animal follows tension toward a disturbance by whichever folded route reaches it. Old webs outlast their builders and retain their folds, so crews mark them as shortcuts that cross in strides what an unfurled route measures in shifts. A snagged strand transfers movement through every anchor it touches. The ledgers therefore treat fold silk as live line: cut nothing and back out along the approach.
  PROSE

  cue "The silk strand runs taut from the wreck's rail to an anchor point the eye calls close and the rangefinder calls forty spans out, and both keep saying so."
  cue "The claim crew's chart marks the pocket's old webs in a different ink, and the day's route walks two of them like bridges."
  affordance "The tension of an established web maps a distortion pocket more finely than instruments alone, and charted old silk crosses in strides what the unfurled route measures in shifts."
  pressure "A shearweaver follows tension toward a disturbance from whichever anchor reaches it through the web; crews approach slowly, haul steadily, and leave prey caught on live silk in place."
  variation "Outer Shear spiders build great pocket webs across distortions no crew otherwise crosses; fringe spiders fold a corridor's width and catch whatever enters it."
  variation "Live webs show fresh repairs and carry catch toward the spider's anchors; abandoned webs retain the same folds and become charted routes for claim crews."
end
