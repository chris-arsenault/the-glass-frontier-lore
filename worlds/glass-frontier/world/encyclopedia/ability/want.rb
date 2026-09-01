encyclopedia :want do
  name "Want"
  summary "Want is a narrow spell that takes one memory or trained skill while a touched subject is actively recalling or using it."
  kind :ability
  subkind :resonant_effect
  status :complete
  log "2026-08-31 — Separated Want from Hunger because learned and remembered patterns travel through signal resonance, produce identity loss rather than physical depletion, and leave a lasting appetite in the practitioner."
  topics :resonance, :danger, :"signal-freq"
  prevalence :rare
  available_globally

  tier :narrow
  effect "Take one memory being recalled or one trained skill being performed by a touched subject and use that pattern for a short time"
  limits "The subject must actively recall or perform the pattern; the spell carries sensation and practiced motion without context or judgment, and the practitioner can hold only one taken pattern"
  consequence "Releasing the pattern returns what remains to the subject but permanently weakens the practitioner's satisfaction in their own corresponding memories or practiced work"

  descriptive_identity(
    signs: "The subject stops midway through a familiar recollection or act, while the practitioner continues it with the subject's cadence, posture, and small habitual errors."
  )

  prose <<~PROSE
    Want takes a learned or remembered pattern at the moment it is active. A pilot can lose the practiced motion of a difficult turn while making it. A witness can lose the room they are describing while the practitioner receives its light, voices, and fear. The subject keeps unrelated knowledge and discovers the absence when the same path of thought or motion fails to continue.

    What arrives is use without a life around it. A stolen piloting skill guides the hands but supplies no judgment about the vessel carrying them. A memory brings sensation and sequence without explaining the names, loyalties, or later conclusions attached to it. The practitioner can carry one pattern and must touch the subject again to return what remains.
  PROSE
  prose <<~PROSE, section: :aftermath, heading: "The Unsatisfied Part"
    A returned pattern does not restore the practitioner. Using another person's skill weakens the pleasure of exercising the practitioner's own craft. Carrying another memory can make a related part of the practitioner's past feel thin and secondhand. The loss is small after one casting and permanent; repeated use teaches the practitioner to seek the missing satisfaction in another taken pattern.

    #{encyclopedia_ref :consumption, "Hunger"} moves heat, momentum, force, or resonant output instead. #{ref :all_hunger, "The All-Hunger"} joins physical and remembered taking at collective scale and carries the appetite without relief.
  PROSE
end
