encyclopedia :ravel_clampweed do
  name "Signal Mat"
  summary "Signal mat is a hull-seam plant that clamps its roots and leaves during signal tides, then opens in the slack. Its roots caulk joints, while changes in the foliage reveal where a seam is working loose."
  kind :lifeform
  subkind :plant
  status :complete
  log "2026-08-31 — Renamed Claspweed to Signal Mat; the established signal root governs the plant's tide response, while mat names its continuous growth along a seam."
  topics :ecology, :"signal-freq", :"ring-hab"
  prevalence :uncommon
  appears_when all: { place: [:sealed_hab] }
  origin "Ring-era seam planting — the maintenance flora records list it among the seeded tenders, and the Ravel habs' populations descend from the original plantings"
  biology "A low, tough, mat-forming plant rooted in hull seams and joints; its grip tissue clamps the root mat rigid under signal-tide pull and relaxes in slack water, while the leaf mat above opens and closes on the same rhythm"
  lifespan "Established signal-mat runs are effectively permanent under tending — the named old runs along the Ravel spine predate their habs' current populations"
  function "Living seam maintenance: the roots caulk and bind the joints they hold, the clamping rides out the tides that work seams loose, and the mat's condition maps seam health for any crew that reads foliage"
  resonance_relation "The grip answers the signal tides directly — clamping with the pull's strength, releasing in slack — and signal mat closes ahead of the tide's arrival by a margin the hab almanacs print beside the instrument forecasts"

  descriptive_identity(
    appearance: "Low gray-green mats running along seams and joint lines like " \
                "mortar gone alive, leaves shingled flat when closed, opening " \
                "in slack water to a soft nap that greens the hull's bones.",
    behavior: "It grips when the tides pull — the whole mat clamping rigid in " \
              "a slow visible wave — and opens in the slack to feed on light " \
              "and condensation; the closing runs ahead of the tide itself, " \
              "seam by seam, down a hab's length.",
    threat: "An untrimmed mat grows across inspection lines and access panels. " \
            "Removing a mature run also exposes the seam it has caulked and " \
            "must be coordinated with repair work.",
    senses: "It feels the signal tides before instruments post them, and its " \
            "root mats know their seams' condition intimately enough that " \
            "the foliage above reports it — lush over sound joints, thin and " \
            "yellowing over seams working loose.",
    risks: "A yellowing run may reflect poor light or water as well as a " \
           "working seam. Crews inspect the leaves, roots, and joint together " \
           "before stripping and re-bedding the plant."
  )

  prose <<~PROSE
    Signal mat appears in recovered ring maintenance lists as seeded hull tenders. Each plant runs low along seams and joints, where its roots fill small gaps and bind to both faces. When the #{encyclopedia_ref :signal_tides, "signal tides"} pull, grip tissue locks root and leaf into a rigid splint. The closing passes down a long run as a visible wave. In slack conditions the shingled leaves open to take light and condensation.

    The plant begins closing before the tide reaches the hab. Almanacs print the local lead time beside instrument forecasts, and dock offices watch both. Foliage adds a second observation: sound, well-lit joints usually support dense green runs, while working seams thin or yellow the roots above them. Light, water, and disease can produce similar foliage, so seam crews inspect plant and joint together.

    Tenders trim mats away from access panels, divide crowded runs, and re-bed cuttings after repair. Removing a mature mat exposes the seam it caulked and is done with temporary sealant already prepared. Named runs along the Ravel spine predate their current crews; newer habs move cuttings in #{encyclopedia_ref :root_cart, "Transplants"} and record the first season's grip before relying on them.
  PROSE

  cue "The mat begins its closing wave down the corridor seam — leaves shingling flat, seam by seam, in a line moving faster than a walk — and the dock office posts the early tide before the instruments agree."
  cue "The seam crew's inspection is a walk with a lamp: lush runs waved past, one yellowing stretch flagged — the joint beneath already working loose, the complaint filed in leaf a season before any gauge would catch it."
  affordance "A tended run caulks its seam, braces it through each tide, and gives crews visible evidence of tide timing and joint condition."
  variation "The Ravel spine's named old runs anchor the tradition; younger habs seed cuttings through the graft trade, and a new mat's first season of grip is watched the way any new instrument is calibrated."
  variation "Grip strength maps the tides' local geography — signal mat clamps harder where the pull runs strongest — and the seam crews read a hab's tide exposure off the foliage the way pilots read current off moored boats."
end
