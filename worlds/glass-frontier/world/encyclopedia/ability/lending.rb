encyclopedia :lending do
  name "Lending"
  summary "Lending is hands-on first aid: a trained person holds a hurt or shocked body's resonance steady through contact until it can hold its own tone, keeping a casualty warm, conscious, and transportable while the wound waits for treatment."
  kind :ability
  subkind :technique
  status :complete
  topics :training, :household, :resonance
  prevalence :common
  available_globally
  function "Holds a casualty's body tone stable through sustained contact, at the cost of the lender's own steadiness"

  descriptive_identity(
    signs: "A lender works skin to skin, usually forearm to forearm under a blanket, counting a slow " \
           "beat aloud or against the casualty's wrist. Afterward the lender's own hands tremble for " \
           "hours — the shakes are taken as proof the lend was real, and an old lender's steady " \
           "morning cup is a small public boast.",
    effect: "A body in shock drifts off its own structural tone and stops holding heat, blood, and " \
            "breath in rhythm. A lender in contact gives the body something to settle against, the " \
            "way a loose line stops swinging when it touches a taut one. The casualty stays " \
            "warm, conscious longer, and transportable.",
    limits: "Lending holds a body exactly where it is, so a lend masks decline — the body reads " \
            "steady while a bleed continues underneath — and trained lenders check the wound on " \
            "the count, every count. One lend a day is the hard ceiling, and a lender who takes " \
            "a second usually finishes the day as a casualty."
  )

  prose <<~PROSE
    A living body holds a tone in the structural band the way it holds a temperature, and injury or shock lets that tone drift. Lending is the trained answer: sustained contact with a steadier body, forearm to forearm or palm over breastbone, held until the casualty settles. Crews describe it as giving the body something to lean on. Instruments describe two coupled tones converging on the steadier of the pair.

    The technique is ordinary knowledge the way splinting is ordinary knowledge. Households teach it, carrier crews certify it, and the phrase "who's lending?" is the second question at any accident, after "who's bleeding?". What it costs is also ordinary knowledge: the lender comes away sharp, hands trembling, temper short, their own tone running high for the rest of the day. The shakes pass with food, warmth, and quiet. A lender who hides them to take a second casualty is the person the certification exists to stop.
  PROSE

  prose <<~PROSE, section: :operations, heading: "The Count"
    A proper lend runs on a spoken count. The count paces the lender's breathing, gives the casualty a rhythm to settle toward, and — the part the training drills — marks when to look at the wound. A lent body feels steady under the hands while a bleed goes on underneath, so the rule is check on the count, every count, even when everything reads calm. Carrier crews lend in relays on long hauls, one lender on, one recovering, trading on the count so the rhythm carries the casualty straight across the handoff.

    Children in herding country learn the count on animals first. A #{encyclopedia_ref :marn, "marn"} that has taken a fright will stand down under a lend inside twenty counts, and a child who can settle one has learned the whole shape of the skill: contact, breath, count, check.
  PROSE

  cue "Someone kneels beside a casualty with a bare forearm pressed to a bare forearm, counting aloud, while everyone else routes their work in a careful circle around the pair."
  cue "Hours after an accident, one member of the crew has trembling hands and a short temper and is being fed and left alone — the lender's shakes, worn openly."
  affordance "A certified lender keeps a casualty warm, conscious, and transportable through a journey that would otherwise kill them, and any crew or household can say who their lender is."
  pressure "A lend masks decline: the body reads steady while a bleed or break worsens underneath, and a lender who skips the wound-check on the count delivers a calm corpse."
  variation "Long-haul carriers lend in relays, two certified lenders trading on the spoken count so the rhythm carries the casualty straight across the handoff."
  variation "Herding households teach the technique on animals, and a child who can settle a frightened marn is considered to have the shape of the skill."
end
