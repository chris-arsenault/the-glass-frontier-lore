encyclopedia :consumption do
  name "Hunger"
  summary "Hunger takes one active physical quantity from a touched subject into the practitioner for immediate use."
  kind :ability
  subkind :resonant_effect
  status :complete
  log "2026-08-31 — Renamed Consumption to Hunger; the shifted word joins the transfer itself to the appetite that repeated use creates."
  log "2026-08-31 — Kept Hunger as the broad physical transfer in the former ladder. Theft of a recalled memory or practiced skill became Want; the old narrow row mixed unrelated power theft with collective scale and was not retained as one spell."
  topics :resonance, :danger, :"kinetic-freq"
  prevalence :rare
  available_globally

  tier :broad
  effect "Take one active physical quantity—heat, momentum, muscular force, or resonant output—from one touched subject and hold it for immediate use"
  limits "The quantity must be physically present and doing work; Hunger cannot take an abstraction, an inactive capacity, or more than the subject presently carries, and the practitioner can hold only one reserve"
  consequence "Food and rest still nourish the practitioner but give no feeling of satisfaction until the stolen reserve is spent or returned"

  descriptive_identity(
    signs: "The subject becomes abruptly cold, slack, still, or inert while the practitioner displays the missing heat, motion, force, or resonant output with excessive intensity."
  )

  prose <<~PROSE
    Hunger takes one physical quantity that is presently doing work through a subject the practitioner can touch. Heat can leave a burning housing. Momentum can leave a falling mass. Muscular force can leave a fighter's limbs, and resonant output can leave an active instrument. The subject keeps everything else and loses exactly what was named.

    The transfer is exact in quantity and character. Stolen heat warms; stolen momentum moves; stolen force acts through the practitioner's own body; stolen output answers only equipment capable of carrying its band. The practitioner can hold one reserve. Spending it expresses the quantity in its original form, while returning it restores what remains to the subject.
  PROSE
  prose <<~PROSE, section: :dangers, heading: "The Hunger That Learns"
    Food still nourishes and sleep still repairs, but neither feels complete while a stolen reserve remains in the practitioner. The discomfort ends when the reserve is spent or returned. Practitioners who carry a reserve for too long describe every ordinary need as a physical reminder that the body is holding work taken from somewhere else.

    #{encyclopedia_ref :want, "Want"} takes a learned or remembered pattern rather than a physical quantity and leaves a more lasting appetite. #{ref :all_hunger, "The All-Hunger"} can use both forms of taking across collective subjects such as armies, cities, and great arrays.
  PROSE
end
