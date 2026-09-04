encyclopedia :palate do
  name "Palate"
  summary "Palate is an inherited Kyther sensitivity that distinguishes grades and veins of ringglass by the metallic trace they leave on the breath. Tasting families grade quarry lots, and their assay marks set the stock's price."
  kind :ability
  subkind :innate_sensitivity
  status :complete
  log "2026-08-31 — Renamed Glass Taste to Palate; Kyther stock traders use the familiar word for the inherited sense that grades ringglass rather than for ordinary flavor."
  log "2026-08-31 — Removed the broad tier. Palate is an innate sensitivity, not a resonant spell."
  topics :ringglass, :trade, :household, :training
  prevalence :rare
  appears_when all: { place: [:ringglass_rich] }
  function "Grades ringglass by the metallic trace it leaves on the breath, to a fineness instruments match slowly and expensively"

  descriptive_identity(
    signs: "The taster holds a bare shard near the mouth, breathes across it once, closes " \
           "their eyes for the length of a swallow, and names grade, vein, and often the " \
           "quarry — then rinses with the plain water every tasting bench keeps ready.",
    effect: "Each grade and vein of ringglass leaves its own metallic trace on the breath, " \
            "and a born taster reads the trace to a fineness the survey instruments " \
            "confirm on the bench in an afternoon what the mouth called in a breath.",
    limits: "The gift runs in the Kyther tasting lines and arrives with the family's other " \
            "features or skips a child entirely. Training refines what birth supplies, " \
            "and a taster's palate fatigues by mid-shift, so trade tastings are scheduled " \
            "in the morning with water between lots."
  )

  prose <<~PROSE
    In the Kyther tasting families, *palate* means the inherited sense by which ringglass has flavors. The gift arrives with the family features or skips a child entirely and reads the metallic trace a bare shard leaves on the breath finely enough to name grade, vein, and often the quarry in the length of a swallow. The survey bench confirms the call in an afternoon of instrument time. The range's stock trade runs on it: quarry lots are tasted before they are priced, the tasting families' verdicts travel with the stock like assay marks, and the great buyers pay for a taster's breath the way archives pay for a recaller's wrist.

    Tasting families keep pedigree books that survey scholars quote and arrange marriages with the gift's inheritance in mind. Children are cup-tested young. A child with the sensitivity begins years of shards and blind tests under an older taster; a child without it usually trains at the survey bench or in the quarries. Trade custom protects the palate: tasters work mornings, rinse between lots, and eat the bland tasting-line diet before a grading shift.
  PROSE

  cue "The taster breathes once across the bare shard, closes their eyes for a swallow's length, and says 'second grade, north vein — Ferren's quarry, upper gallery' into a silence full of money."
  cue "At the family bench, a blindfolded child works through a row of shards while an older taster records each answer beside the cup-test marks."
  affordance "A taster's breath is a portable assay office — grade, vein, and provenance called in seconds, trusted by the trade, and confirmable on the bench — which makes the tasting families' marks the range's working currency of trust."
  pressure "Palate fatigue accumulates across a shift, so a grading record includes the tasting order and the rinses taken between lots."
  variation "Old family lines name tastes in a private vocabulary before translating for the buyer; survey-office tasters use catalog numbers from the first call."
  variation "Pedigree books record skipped inheritance as carefully as the gift, while cup tests direct training toward the tasting bench, survey instruments, or quarry work."
end
