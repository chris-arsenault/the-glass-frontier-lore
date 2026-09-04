ability :many_fleshed do
  name "The Many-Fleshed"
  summary "The Many-Fleshed is an Adversary mantle that extends Manyflesh across every selected body in a battlefield or settlement. The bearer becomes the shared anatomy first and retains part of it afterward."
  type_of :manyflesh
  subkind :the_adversary
  status :complete
  tags :resonance, :religion, :species, :danger
  prominence :recognized
  qualification "Answers someone who has made a viable life in an imposed body and can name the functions that body gained and lost"
  succession "Passes through a living graft freely accepted from the bearer; the recipient must keep it until it becomes native tissue"
  cost "Every alteration appears in the bearer first, and each major working leaves them with a permanent organ, sense, appetite, joint, or other part of the imposed anatomy"

  descriptive_identity(
    signs: "The proposed trait appears in the bearer before any target changes, while remnants of earlier workings remain as additional joints, altered eyes, unfamiliar breath, or organs visible beneath the skin.",
    effect: "The mantle extends #{encyclopedia_ref :manyflesh, "Manyflesh"} from one contacted body to every selected living body across a wide area.",
    limits: "Each result must sustain life with available mass and working systems for breath, heat, waste, and movement. Functions and identity cues absent from the new anatomy disappear with the old body."
  )

  question "Who is the present or most recently attested Many-Fleshed, and what accepted graft carried the mantle to them?", raised: "2026-08-31"

  prose <<~PROSE
    The Many-Fleshed applies one viable anatomy to every selected body in a settlement, crew, or battlefield. It can give a population armor before impact, lungs for poison or vacuum, limbs for broken terrain, or senses tuned to a hidden creature. The shared pattern must provide every body with a complete way to breathe, move, shed heat, and remain alive.

    The proposed body always appears in the bearer first. Skin, bone, organs, and nerves change while the targets watch; only after that body proves viable does the alteration spread. The same sequence has put armored hosts into battle and kept settlements alive through pressure failure or poison. Tessellan shadow lists classify the mantle by its refusal of settled Form. Every major working leaves one body carrying the physical remainder of many.
  PROSE
  prose <<~PROSE, section: :biology, heading: "A Body That Works"
    A useful shape must also be a complete organism. Studied life provides the surest patterns, but a copied shell still needs a way to breathe, shed heat, move waste, feed its tissues, and connect new senses to the nervous system. Novel bodies require the bearer to solve every exchange. The mantle will grow a powerful limb that tears free of an inadequate shoulder or a filter that saves the lungs while starving the blood.

    Subjects remain alive and awake throughout the change. A successful body may lose familiar speech, balance, appetite, facial recognition, or the hand shape needed to operate existing tools. Crews planning a shared anatomy therefore choose which functions the task requires and which losses they can carry until the bearer changes them again.
  PROSE
  prose <<~PROSE, section: :legacy, heading: "The Graft"
    After every major working, part of the anatomy stays in the bearer: a membrane, altered joint, new appetite, divided organ, or unfamiliar sense. Later changes must fit those remnants into another viable whole. Old accounts describe bearers who had lost every known form of speech and still altered other bodies with precision.

    A candidate qualifies by learning to live in an imposed body and giving a precise account of what it made possible and what it removed. Succession then passes through tissue freely grafted from the bearer. The recipient keeps the graft until it becomes native; cutting it out ends the attempt. When the transfer succeeds, every anatomy retained by the old bearer unfolds briefly in the successor before settling into a body able to carry them all.
  PROSE

  gm_note :triggered_by, "A hostile environment, inaccessible route, or superior creature lets the bearer redesign the group around the obstacle; the proposed anatomy appears in the bearer first, and one major feature remains in them afterward."
  gm_note :complicates, "Altered subjects remain awake and may lose speech, familiar movement, recognizable faces, or the ability to use their equipment even when the new body performs its intended task perfectly."
end

relate :rel_many_fleshed_resonates_false_form, :resonates_with, :many_fleshed, :the_false_form
