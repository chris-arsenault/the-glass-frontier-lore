encyclopedia :manyflesh do
  name "Manyflesh"
  summary "Manyflesh rewrites living anatomy, changing what a body can do while keeping it alive through the transformation."
  kind :ability
  subkind :resonant_effect
  status :complete
  log "2026-08-31 — Renamed Alteration to Molt; the shifted word names deliberate whole-body transformation without a generic taxonomy label."
  log "2026-08-31 — Renamed Molt to Manyflesh. Molt was already a named Perch vessel; Manyflesh joins the general effect to the Many-Fleshed mantle that carries it at population scale."
  log "2026-08-31 — Kept Manyflesh as the narrow whole-body rewrite. The former focused row was the same operation with fewer changed systems; the broad self-adaptation became Wearing because it has a different recipient, scope, and consequence."
  topics :resonance, :species, :danger
  prevalence :rare
  available_globally

  tier :narrow
  effect "Rewrite one living body into a viable anatomy drawn from a studied living pattern"
  limits "The practitioner must remain in contact with one willing or helpless body and understand a complete viable pattern; the spell neither creates mass nor preserves functions the new anatomy cannot support"
  consequence "The practitioner's body develops a matching alteration for as long as the subject keeps it; a permanent change in the subject leaves the matching feature permanent in the practitioner"

  descriptive_identity(
    signs: "Bone, skin, root, shell, and organ tissue move while remaining alive; the practitioner's body echoes the same change before the subject's transformation is complete."
  )

  prose <<~PROSE
    Manyflesh keeps one body alive while changing its anatomy. Bone divides and rejoins under load. Organs shift function before their replacements are complete. Skin becomes shell, sail, filter, or sensory tissue. The subject remains conscious unless another means suppresses sensation, and the practitioner must keep contact until the new body can sustain itself.

    A viable pattern is mandatory. Studied lifeforms provide reliable solutions for pressure, heat, poison, darkness, flight, and violence. Novel anatomy requires an account of every exchange: where its mass comes from, how it breathes, what carries waste and heat, and how its nervous system will inhabit the new shape. A change that omits one of those systems fails as living anatomy rather than being supplied by the spell.
  PROSE
  prose <<~PROSE, section: :dangers, heading: "Changes Carried by the User"
    Manyflesh passes through its practitioner. A person who gives another body gills begins breathing water before the subject does. New eyes alter both fields of vision; new limbs disturb both balances. The echo lasts as long as the subject's change. If the subject keeps the anatomy permanently, the practitioner keeps its matching feature.

    #{encyclopedia_ref :wearing, "Wearing"} changes one trait in the practitioner's own body. Manyflesh instead holds another body through a complete anatomical rewrite, including the systems that keep the new form alive. #{ref :many_fleshed, "The Many-Fleshed"} extends that whole-body work across a population and requires its bearer to embody the proposed anatomy first.
  PROSE
end
