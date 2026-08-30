encyclopedia :fold_spider do
  name "Fold Spider"
  kind :lifeform
  subkind :anomaly
  status :complete
  topics :ecology, :"fluid-reality", :danger, :mystery
  prevalence :rare
  appears_when all: { place: [:debris_field] }
  summary "Fold spiders are Deep Shear anomalies that web across the distortion pockets where distance disagrees with itself — anchoring silk through folds in space and hauling their catch across shortcuts that surveys have measured and salvage crews use at need. The spider is dangerous the way its country is dangerous: by geometry."
  origin "Documented only in the Deep Shear's distortion pockets; the survey literature treats them as native to conditions with no other known inhabitants"
  biology "A long-legged weaver that anchors silk through spatial folds; its webs span distances the surveys measure as both a hand's width and forty spans, and both measurements repeat"
  resonance_relation "Webs sit along the distortion gradients, and a web's tension readings map its pocket's folds more finely than instruments survey them"

  descriptive_identity(
    appearance: "A pale many-jointed weaver the size of spread hands, seen mostly as " \
                "motion at a web's far anchor — which may be a hand's width away and " \
                "forty spans off, both at once, in the way of its country.",
    behavior: "It webs across distortion pockets, anchoring through the folds, and " \
              "walks its own silk between points the surveys measure as distant — " \
              "hauling catch, escaping approach, and repairing storm damage by " \
              "routes that exist for the spider and the silk.",
    threat: "The web is the hazard: silk crossing a fold is a tripline into geometry, " \
            "and a crew that fouls a web has connected itself to points it " \
            "can only partly see — the Shear's standing advice is to treat fold silk like " \
            "live line, cut nothing, and back out the way in.",
    senses: "It reads its web's tension across the folds and answers disturbance from " \
            "anchors a crew's instruments place elsewhere entirely.",
    risks: "Abandoned webs outlast their weavers and keep their folds — charted old " \
           "webs serve claim crews as measured shortcuts, and uncharted ones serve " \
           "the incident ledgers."
  )

  prose <<~PROSE
    In the Deep Shear's distortion pockets, where the #{ref :deep_shear, "surveys"} record distance disagreeing with itself, something has learned to build with the disagreement. Fold spiders web across the pockets, anchoring silk through the folds themselves: a strand runs from a wreck's rail to an anchor the eye puts a hand's width away and the rangefinder puts at forty spans, both instruments repeating their answers on every pass, and the spider walks its own silk between the two readings with the unconcern of a creature at home. The webs are the Shear's strangest cartography. A web's strands lie along its pocket's folds, tension varying with the distortion's grain, and survey crews charting a pocket read established webs the way pilots read kite lines — the silk finds and holds the folds more finely than instruments map them.

    The working relationship is the Shear's usual bargain of hazard and use. Fold silk fouled is a tripline into geometry — a crew snagged on a web is connected to anchors it can only partly see, and the standing advice, written in the claim ledgers' plainest hand, is to treat fold silk as live line: cut nothing, back out the way in. Charted webs, especially the abandoned ones that outlast their weavers and keep their folds, serve the deep crews as measured shortcuts — cargo walked along old silk routes crossing a pocket in strides that the long way measures in shifts — and the crews that use them observe the courtesies their trade has settled on with the webs' builders: approach slow, haul steady, and leave the live webs their catch, because the spider that reads its silk's tension across the folds answers disturbance from directions the instruments file under elsewhere.
  PROSE

  cue "The silk strand runs taut from the wreck's rail to an anchor point the eye calls close and the rangefinder calls forty spans out, and both keep saying so."
  cue "The claim crew's chart marks the pocket's old webs in a different ink, and the day's route walks two of them like bridges."
  affordance "Established webs map and bridge the distortion pockets at once — tension lines finer than any instrument survey, and charted old silk that crosses a pocket in strides where the long way costs shifts."
  pressure "Fouled silk connects a crew to geometry it can only partly see, so every web is approached as live line — and the shortcut arithmetic that makes old webs valuable is exactly what tempts crews onto uncharted ones."
  variation "The great pocket webs of the outer Shear span distortions no crew crosses otherwise and are charted by name; the small webs of the fringe pockets fold a corridor's width and catch mostly the unwary."
  variation "The survey literature's standing dispute is whether the spiders make the folds or find them, and the two camps' instruments hang on the same webs, disagreeing."
end
