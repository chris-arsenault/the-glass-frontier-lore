encyclopedia :alteration do
  name "Alteration"
  summary "Alteration rewrites living anatomy, changing what a body can do while keeping it alive through the transformation."
  kind :ability
  subkind :resonant_effect
  status :complete
  topics :resonance, :species, :danger
  prevalence :rare
  available_globally

  tier :broad,
       effect: "Temporarily adapt the user's own body with one useful trait drawn from a living pattern they have studied",
       cost: "Pain, fever, and a minor remnant of the change that persists after the trait recedes"
  tier :focused,
       effect: "Reshape one willing or helpless body to survive a hostile condition or perform an unfamiliar physical act",
       cost: "The user's body develops a matching alteration for as long as the subject keeps theirs"
  tier :narrow,
       effect: "Rebuild a creature or group around several coordinated traits, including new organs and modes of movement",
       cost: "One major feature of the new anatomy becomes permanent in the user"
  tier :apex,
       effect: "Rewrite every living body in a wide area according to one viable anatomy held by the bearer",
       cost: "The bearer undergoes the whole transformation first and can never wholly return to any prior body"

  descriptive_identity(
    signs: "Bone, skin, root, shell, and organ tissue move while remaining alive; the user's body echoes some part of every change imposed.",
    effect: "Alteration replaces living anatomy with a viable new arrangement capable of different movement, survival, sensation, or force.",
    limits: "Every change must form a living whole. The ability cannot create mass without a source, preserve a function the new anatomy cannot support, or restore an earlier body without a surviving pattern."
  )

  cue "The subject's body changes from the inside outward while breath and pulse continue."
  cue "A lesser version of the same trait appears on the user before the subject's transformation is complete."
  affordance "Alteration can give lungs for poisoned air, grow weapons against a monster, pass through a narrow ruin, or turn a boarding force into bodies suited to vacuum."
  pressure "A successful transformation may still erase familiar movement, speech, appetite, or identity cues that the new anatomy cannot support."
  variation "Some alterations borrow tested traits from known lifeforms and preserve the subject's recognizable body plan."
  variation "Others build unprecedented but viable bodies whose senses and needs remain unknown until they are used."

  prose <<~PROSE
    Alteration keeps a body alive while changing its anatomy. Bone divides and rejoins under load. Organs shift function before their replacements are complete. Skin becomes shell, sail, filter, or sensory tissue. The subject remains conscious unless another means suppresses sensation.

    A viable pattern is mandatory. Studied lifeforms provide reliable solutions for pressure, heat, poison, darkness, flight, and violence. Novel anatomy can be made when the user understands every necessary exchange: where its mass comes from, how it breathes, what carries waste and heat, and how its nervous system will inhabit the new shape.
  PROSE
  prose <<~PROSE, section: :dangers, heading: "Changes Carried by the User"
    Alteration passes through the user. At low power the echo may be a patch of scale, a changed pupil, or an appetite that lasts after the useful trait is gone. Greater work leaves greater inheritance. A person who gives a company the same armored skeleton may keep it. One who grows wings for another body may never again balance as they did before.

    #{ref :many_fleshed, "The Many-Fleshed"} can rewrite every living body across a battlefield or settlement. Its bearer must become the proposed anatomy first and cannot fully return. Each great use therefore adds another body to the mantle's history, visible in the person who carries it.
  PROSE
end
