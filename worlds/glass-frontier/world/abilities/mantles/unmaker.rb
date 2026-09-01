ability :unmaker do
  name "The Unmaker"
  summary "The Unmaker is an Adversary mantle that extends Unmaking to vessels, armies, cities, great creatures, and sustained phenomena perceived as one coherent subject."
  type_of :unmaking
  subkind :the_adversary
  status :complete
  tags :resonance, :religion, :danger, :catastrophe
  prominence :recognized
  qualification "Answers someone who can name a coherent whole, unmake it, and account for every person, pressure, material, and active force the whole released"
  succession "Passes to a person who can still perceive and name a coherent whole after the bearer has lost the faculty needed to recognize it"
  cost "Each great unmaking weakens or destroys a sense, trained faculty, memory capacity, or resonant band the bearer used to perceive the target as a whole"

  descriptive_identity(
    signs: "Edges, joins, and signals stop agreeing about the target; its parts separate without added heat or impact, and a corresponding sense or faculty fails in the bearer.",
    effect: "The mantle extends #{encyclopedia_ref :unmaking, "Unmaking"} from one person-sized subject to a city, army, great creature, or recurrent anomaly held in one coherent boundary.",
    limits: "The bearer must perceive and bound a coherent whole. Its matter, occupants, momentum, pressure, and prior consequences remain after the coherence ends."
  )

  question "Who is the present or most recently attested Unmaker, and what coherent whole could they name after the former bearer lost it?", raised: "2026-08-31"

  prose <<~PROSE
    The Unmaker breaks the agreement that lets a great subject's parts continue together. A vessel separates into plates, rooms, atmosphere, cargo, and occupants; a marching host becomes individuals; a phenomenon ends when its distant manifestations still share one coherent pattern. The separation itself adds no heat or impact.

    The separation itself is cold and impactless. Existing forces continue on their own: atmosphere escapes the opened hull, falling parts keep their momentum, charged glass stays charged, and poison leaves the vessel that contained it. Unmaking can end an immediate threat and release everything that threat had organized or restrained.
  PROSE
  prose <<~PROSE, section: :mechanics, heading: "Drawing the Whole"
    The target is the coherent boundary the bearer can actually perceive. A visible wall may belong to a pressure hull, and the larger structural figure can bring every joined compartment into the working. A force marching to one order and rhythm can be one subject, then become many when it scatters. Beliefs, debts, and offices lack a single physical or resonant coherence for the mantle to seize.

    Before a large use, witnesses name what crosses the proposed boundary: supports, passengers, attached machines, shared signals, contained fields. Another reader can contest the working by demonstrating that one named part moves independently or that an omitted part answers the same figure. The mantle resolves the subject through the bearer's final perception, so a precise boundary can spare a passenger compartment and a mistaken one can include its occupants.
  PROSE
  prose <<~PROSE, section: :perception, heading: "A Narrowing World"
    The mantle takes the faculty by which the bearer recognized the whole. Unmaking a signal host may remove a resonant band. Unmaking a creature may take the sense used to track it. Unmaking a city can erase the ability to perceive joined structure, leaving buildings visible only as unrelated surfaces. The loss begins when the target separates and persists after every fragment settles.

    Tessellan shadow lists place the Unmaker among the Adversary mantles. The designation accumulates weight as the bearer loses the very capacities used to perform it. Keepers dispute whether opening a closed figure serves the #{ref :the_false_form, "False Form"} or wounds it by its own method; mantle accounts record works of the Three and False Form manifestations ended by the same power.

    Succession requires another person to perceive and name a coherent whole the bearer can no longer recognize. The candidate must communicate that boundary through the bearer's remaining senses. If the mantle accepts the subject as complete, it passes; accounts also record candidates whose descriptions never reached a faculty the bearer still possessed.
  PROSE

  gm_note :triggered_by, "When the group can draw a coherent boundary around an object, creature, machine, formation, or field, the Unmaker can end it as one subject; proving that a part moves independently narrows what the working includes."
  gm_note :complicates, "Everything the target contained or coordinated survives its coherence: passengers, atmosphere, momentum, pressure, charged matter, poison, and falling parts all continue separately when the whole ends."
end

relate :rel_unmaker_resonates_false_form, :resonates_with, :unmaker, :the_false_form
