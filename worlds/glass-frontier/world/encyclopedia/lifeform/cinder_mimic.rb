encyclopedia :cinder_mimic do
  name "Cinder Mimic"
  kind :lifeform
  subkind :anomaly
  status :complete
  topics :ecology, :danger, :mystery, :"outer-system"
  prevalence :rare
  appears_when all: { place: [:hot] }
  summary "Cinder mimics are hot-country anomalies that pass for cinderbacks in a herd's shade cluster — plate for plate, gait for gait — while running warmer than any true animal and eating nothing anyone has seen. Herders count their herds twice, and the second count is for the one that counts back."
  origin "Documented in Ashvane's highlands since the early Rekindling; the herding cultures hold the mimics arrived with the Silent Bloom and the survey record neither confirms nor unseats them"
  biology "Reads as a cinderback to the eye at a distance and to instruments as a standing thermal anomaly with the mass reading of loose ash; feeding, breeding, and death remain undocumented"
  resonance_relation "Sits wrong in the band — a herd cluster with a mimic in it reads one voice too many to a tuner, the extra voice arriving a half-beat late"

  descriptive_identity(
    appearance: "At forty paces, a cinderback: plates, fringe, the low six-legged stance. " \
                "At four, the plates run too regular, the fringe stirs against the wind, " \
                "and the eyes — herders agree on this one detail across every account — " \
                "are attentive.",
    behavior: "It joins shade clusters and stands among the herd through the hot hours, " \
              "matching the animals' shuffles a half-beat late, and is gone from the " \
              "cluster by full dark by every credible account.",
    threat: "The record holds losses of nerve rather than blood: the mimics have harmed " \
            "neither herd nor herder across the whole documented record, and the herding " \
            "cultures' unanimous, unbudging custom of leaving them entirely alone has " \
            "kept the record's other column empty.",
    senses: "It notices being noticed — the attentive eyes turn to meet a stare from " \
            "any distance — and herders school their apprentices in the flat sideways " \
            "glance used for checking a mimic courteously.",
    risks: "The danger on record is the count: a herd with a mimic tallies one heavy, " \
           "and the herder who reaches into the cluster to cull the extra animal is " \
           "the scenario every herding culture's training exists to prevent."
  )

  prose <<~PROSE
    In the volcanic highlands where the #{encyclopedia_ref :cinderback, "cinderback"} herds shelter through the hot hours, herders count twice. The first count is stock. The second is for the mimic: the animal that stands plate for plate among the herd, low and patient in the shade cluster, matching the true beasts' shuffles a half-beat late — and running, to any instrument pointed at it, warmer than a living cinderback with the mass reading of loose ash. Cinder mimics have stood among Ashvane's herds since the early Rekindling by the survey record and since the Silent Bloom by the herders' own accounting, and the relationship the hot country has settled on is the one its cultures teach with the flat firmness of a boundary line: count it, note it, leave it be.

    The record rewards the custom. Since the record began the mimics have taken nothing — the herd losses blamed on them dissolve under audit into heat, strikes, and arithmetic — and the accounts that make the training canon are the near things: the herder who reached in to cull the uncounted animal and met the attentive eyes at arm's length, the dog sent into the cluster that came back walking backward. What the mimics are doing in the shade clusters is the highlands' standing question, and the two survey programs that maintain instruments on the herds publish the same strange stable facts on the same annual schedule — the thermal signature, the late half-beat, the empty mass reading — beneath conclusions that have disagreed politely for #{duration 60}. The herding cultures, asked, decline the question as not theirs to answer. The mimics stand in the shade because the shade is where the herd is, one elder's recorded testimony runs, and the herd is where we are, and nobody here has ever been hurt by standing still.
  PROSE

  cue "The shade cluster tallies one heavy on the second count, and the herder marks the slate, moves the water trough a little wider, and works the far side of the herd all afternoon."
  cue "Forty paces off it is a cinderback among cinderbacks; at four, the plates run too regular, the fringe stirs against the wind, and the eyes come up to meet the look."
  affordance "The mimics' three-century record of perfect harmlessness under the leave-be custom is itself the working knowledge — a herd with a counted mimic is safe to run as normal, and the surveys pay herders for cluster logs that instruments can't gather."
  pressure "Everything in the record says the custom is load-bearing — the near things all begin with someone treating the extra animal as an animal — so a mimic in the herd turns every routine cull, sale, and count into an exercise in knowing exactly which one is which."
  variation "Ashvane's mimics stand with the highland herds and are logged by generations of the same families; Crucible's ore-field crews report the same silhouette standing in machine shade, plateless, and the surveys have declined to consolidate the files."
  variation "Herding apprentices learn the sideways glance, the double count, and the elder's rule before their first season — and the highlands' one universal joke is the new hand's face on learning what the second count is for."
end
