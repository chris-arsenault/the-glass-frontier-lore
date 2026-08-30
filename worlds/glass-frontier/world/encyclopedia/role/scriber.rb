encyclopedia :scriber do
  name "Scriber"
  summary "A scriber cuts and inks earned marks — trial marks, trade certifications, crossing knots rendered in skin, and the emblems of challenge names — then enters each mark's authority, witnesses, and date in the bench rolls. Trades and courts recognize the mark through that register."
  kind :role
  subkind :profession
  status :complete
  topics :"social-structure", :trade, :training
  prevalence :uncommon
  appears_when any: { place: [:urban, :market, :sealed_hab] }

  descriptive_identity(
    attire: "Ink-dark hands and a working smock, with the scriber's own earned marks worn " \
            "where clients can inspect them and the roll case kept within reach of the bench.",
    tools: "The tapping needles and combs, graded and named; the ink stone with its house " \
           "recipe; and the mark rolls — the register of every mark the bench has cut, " \
           "with its authority, witnesses, and date — which trades and courts consult " \
           "like any registry.",
    manner: "Ceremonious at the bench and blunt at the consultation; a scriber verifies " \
            "the earning before preparing ink and refuses a claim that its named trade, " \
            "board, or witnesses will not confirm."
  )

  cue "At the bench a client lies still under the tapping needle while a witness from their trade reads the earning aloud — the trial, the date, the board's grade — in time with the work."
  cue "Before any ink, the scriber pulls the rolls and checks the claim against the register, and the client who expected to skip that step is learning about the profession."
  affordance "A scribed mark is a wearable credential backed by the rolls — trades, boards, and courts verify against the scriber's register — and a traveled worker's marks are read at any bench in the system like a courier's custody chain."
  pressure "The bench verifies each claim with the named trade, board, or witnesses before ink touches skin. Refusals and corrections enter the rolls beside the request, preserving what the scriber was asked to certify."
  variation "Kesh benches cut trial marks to the board's exact wording; the signal lines scribe span chains up the forearm relay by relay, and a lined veteran's arm reads like a service map."
  variation "Bench styles are inherited with the rolls — needle rhythm, ink recipe, the house border that frames every mark — and a mark's style identifies its bench to any scriber alongside the written certification."

  prose <<~PROSE
    Scriber benches cut and ink the durable records of earned standing: trial marks to the board's wording for Kesh's challenge culture, span chains tapped relay by relay up a signal hand's forearm, crossing knots rendered permanent for Reedwater elders, and certification marks for trades that examine by demonstration. The mark rolls make each one verifiable. Every mark enters with its authority, witnesses, and date, and the rolls pass with the bench like a factor's book. Hiring trades check the skin against the entry.

    The client lies to the bench while a witness from the earning trade reads the earning aloud in time with the needle's tapping. The reading, its named witnesses, and the roll entry distinguish an earned mark from purchased decoration. A scriber confirms every claim against the board, register, or witnessing trade before ink touches skin. That refusal authority gives the bench standing among the trades whose marks it keeps.
  PROSE
end
