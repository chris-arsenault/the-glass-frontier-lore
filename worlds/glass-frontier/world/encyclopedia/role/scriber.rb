encyclopedia :scriber do
  name "Scriber"
  summary "A scriber cuts and inks the earned marks — trial marks, trade certifications, crossing knots rendered in skin, the chalk-line emblems of challenge names — and keeps the mark rolls that make every mark verifiable. The needle is the easy half; the office is the register."
  kind :role
  subkind :profession
  status :complete
  topics :"social-structure", :trade, :training
  prevalence :uncommon
  appears_when any: { place: [:urban, :market, :sealed_hab] }

  descriptive_identity(
    attire: "Ink-dark hands and a working smock, with the scriber's own earned marks worn " \
            "where clients can inspect them — a scriber unmarked is a cook who won't eat " \
            "the kitchen's food — and the roll case carried with a factor's care.",
    tools: "The tapping needles and combs, graded and named; the ink stone with its house " \
           "recipe; and the mark rolls — the register of every mark the bench has cut, " \
           "with its authority, witnesses, and date — which trades and courts consult " \
           "like any registry.",
    manner: "Ceremonious at the bench and blunt at the consultation; a scriber will refuse " \
            "an unearned mark with the flat finality of a mule refusing a bad seal, and " \
            "the refusal is the profession."
  )

  cue "At the bench a client lies still under the tapping needle while a witness from their trade reads the earning aloud — the trial, the date, the board's grade — in time with the work."
  cue "Before any ink, the scriber pulls the rolls and checks the claim against the register, and the client who expected to skip that step is learning about the profession."
  affordance "A scribed mark is a wearable credential backed by the rolls — trades, boards, and courts verify against the scriber's register — and a traveled worker's marks are read at any bench in the system like a courier's custody chain."
  pressure "The mark outlives the earning and the register outlives the scriber, so the bench's honesty is the whole system's collateral — and the pressure to ink a generous claim arrives weekly, well-dressed, and priced."
  variation "Kesh benches cut trial marks to the board's exact wording; the signal lines scribe span chains up the forearm relay by relay, and a lined veteran's arm reads like a service map."
  variation "Bench styles are inherited with the rolls — needle rhythm, ink recipe, the house border that frames every mark — and a mark's style names its bench to any scriber, which is the register's quiet second signature."

  prose <<~PROSE
    A system that runs on earned names needs marks that stand up to checking, and the scribers are the trade that closed the loop. The bench cuts and inks the durable record — trial marks to the board's wording for Kesh's challenge culture, span chains tapped relay by relay up a signal hand's forearm, crossing knots rendered permanent for Reedwater elders, certification marks for the walker, singer, and lender trades that examine by demonstration — and the mark rolls make each one verifiable: every mark the bench has ever cut, entered with its authority, witnesses, and date, kept and passed with the bench like a factor's book. A mark without a roll entry is decoration, and every trade that hires by marks knows the difference and checks.

    The cutting itself is ceremony on the old pattern, and the trades defend the ceremony as function. The client lies to the bench; a witness from the earning trade reads the earning aloud in time with the needle's tapping; and the pain, the pace, and the public reading make the mark an event with witnesses rather than a purchase with a receipt. The profession's spine is the refusal. A scriber confirms every claim against board, register, or witnessing trade before ink touches skin, refuses the unearned with flat professional finality, and carries, in consequence, a standing in the marked trades that has nothing ornamental about it: the benches are where earned status becomes durable fact, and the rolls are why the fact stays checkable for a working lifetime.
  PROSE
end
