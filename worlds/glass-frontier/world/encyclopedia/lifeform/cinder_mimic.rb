encyclopedia :cinder_mimic do
  name "Khar Mimic"
  kind :lifeform
  subkind :anomaly
  status :complete
  log "2026-08-31 — Renamed Cinder Mimic to Khar Mimic; the title now states its relation to the khar."
  topics :ecology, :danger, :mystery, :"outer-system"
  prevalence :rare
  appears_when all: { place: [:hot] }
  summary "Khar mimics are hot-country anomalies that take a khar's plates, gait, and place within a shade cluster while reading as loose ash and excess heat to instruments. Herders identify them by a second count and leave the extra animal undisturbed."
  origin "Documented in Ashvane's highlands since the early Rekindling; herding accounts place their arrival with the Silent Bloom, while the survey record contains no dated first sighting"
  biology "Reads as a khar to the eye at a distance and to instruments as a standing thermal anomaly with the mass reading of loose ash; feeding, breeding, and death remain undocumented"
  resonance_relation "Sits wrong in the band — a herd cluster with a mimic in it reads one voice too many to a tuner, the extra voice arriving a half-beat late"

  descriptive_identity(
    appearance: "At forty paces, a khar: plates, fringe, the low six-legged stance. " \
                "At four, the plates run too regular, the fringe stirs against the wind, " \
                "and the eyes — herders agree on this one detail across every account — " \
                "are attentive.",
    behavior: "It joins shade clusters and stands among the herd through the hot hours, " \
              "matching the animals' shuffles a half-beat late, and is gone from the " \
              "cluster by full dark by every credible account.",
    threat: "Herders keep the shade cluster intact around a mimic, work from the far side, " \
            "and avoid sending dogs or culling hands toward the extra animal. Documented " \
            "encounters under this practice record no injury to herd or herder.",
    senses: "It notices being noticed — the attentive eyes turn to meet a stare from " \
            "any distance — and herders school their apprentices in the flat sideways " \
            "glance used for checking a mimic courteously.",
    risks: "A herd with a mimic tallies one heavy. Training requires the herder to mark " \
           "the extra position before a cull, sale, or movement separates the cluster."
  )

  prose <<~PROSE
    In the volcanic highlands where the #{encyclopedia_ref :cinderback, "khar"} herds shelter through the hot hours, herders count twice. The first count is stock. The second is for the mimic: the animal that stands plate for plate among the herd, low and patient in the shade cluster, matching the true beasts' shuffles a half-beat late — and running, to any instrument pointed at it, warmer than a living khar with the mass reading of loose ash. Khar mimics have stood among Ashvane's herds since the early Rekindling by the survey record and since the Silent Bloom by the herders' own accounting, and the relationship the hot country has settled on is the one its cultures teach with the flat firmness of a boundary line: count it, note it, leave it be.

    Annual herd-loss audits attribute suspected mimic losses to heat, strikes, or a mistaken count. Training accounts instead preserve close approaches: a herder who reached toward an uncounted animal and met its eyes at arm's length, and a dog that entered the cluster and returned walking backward. Two survey programs publish the same thermal signature, late half-beat, and loose-ash mass reading while maintaining different models of the mimic's function. Herders retain the observed rule in one elder's recorded words: the mimic stands where the shade is, the shade stands where the herd is, and the herd is left whole.
  PROSE

  cue "The shade cluster tallies one heavy on the second count, and the herder marks the slate, moves the water trough a little wider, and works the far side of the herd all afternoon."
  cue "Forty paces off it is a khar among khars; at four, the plates run too regular, the fringe stirs against the wind, and the eyes come up to meet the look."
  affordance "A marked mimic remains with the shade cluster while the herd runs normally, and survey programs pay herders for count and movement logs that fixed instruments cannot gather."
  pressure "Before a cull, sale, or movement, the herder uses the second count and sideways glance to mark the mimic's position and works the herd from the far side."
  variation "Ashvane's mimics stand with highland herds and are logged by generations of the same families; Crucible's ore-field crews keep a separate file on plateless silhouettes standing in machine shade."
  variation "Herding apprentices learn the sideways glance, double count, and leave-whole rule before their first season, then make both counts under a senior's eye."
end
