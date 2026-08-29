ability :many_fleshed do
  name "The Many-Fleshed"
  summary "The Many-Fleshed is an Adversary mantle that rewrites living bodies across a battlefield or settlement and becomes every anatomy it imposes."
  type_of :alteration
  subkind :the_adversary
  status :complete
  tags :resonance, :religion, :species, :danger
  prominence :recognized
  qualification "Answers a person who has survived in a body made unrecognizable to everyone who knew them"
  succession "Passes through a living graft freely accepted from the bearer; the recipient must keep it until it becomes native tissue"
  cost "The bearer undergoes every great transformation first and permanently retains part of each body they impose"

  descriptive_identity(
    signs: "The bearer's anatomy changes before the target population, and no later sighting shows exactly the same body.",
    effect: "The bearer can use #{encyclopedia_ref :alteration, "Alteration"} on every living body across a wide area according to one viable anatomy.",
    limits: "The new body must sustain life, requires available mass, and cannot preserve speech, movement, senses, or identity cues its anatomy cannot physically support."
  )

  prose <<~PROSE
    The Many-Fleshed can give a force armored bodies before impact, lungs for poison or vacuum, limbs made to cross broken terrain, or senses capable of finding an enemy hidden from every instrument. The transformation begins in the bearer and spreads through every chosen living body in range. Those bodies remain alive and awake while bone, organ, skin, and nerve change their work.

    The mantle is counted among the Adversary's shadow set because it refuses a settled Form. Every viable body is treated as temporary geometry. The result need not be monstrous: some bearers have saved populations from pressure failure or poison. The source classification concerns the mechanism and cost, not the purpose chosen for it.
  PROSE
  prose <<~PROSE, section: :dangers, heading: "The Bodies Kept"
    The bearer never returns completely. A membrane, altered joint, new appetite, divided organ, or unfamiliar sense remains after each major use. Later transformations must include those remnants in another viable whole. Old accounts describe bearers who could no longer speak any known language and still used the mantle with precision.

    Succession passes through living tissue given willingly. The recipient keeps the graft until their body accepts it as native; cutting it out ends the attempt. When the transfer succeeds, every retained anatomy unfolds briefly in the successor before settling into a body that can carry them all.
  PROSE

  gm_note :triggered_by, "A lethal environment or superior creature can be answered by remaking the whole group to survive it, with the exact change becoming permanent in the bearer."
end

relate :rel_many_fleshed_resonates_false_form, :resonates_with, :many_fleshed, :the_false_form
