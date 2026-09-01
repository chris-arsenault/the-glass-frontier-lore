encyclopedia :wearing do
  name "Wearing"
  summary "Wearing is a broad spell that gives the practitioner's own body one temporary trait drawn from a living pattern they have studied."
  kind :ability
  subkind :resonant_effect
  status :complete
  log "2026-08-31 — Separated Wearing from the former Manyflesh ladder because changing one trait in the practitioner's own body has a different recipient, limit, and consequence from rewriting another body as a viable whole."
  topics :resonance, :species, :danger
  prevalence :rare
  available_globally

  tier :broad
  effect "Give the practitioner's own body one temporary functional trait from a living pattern they have studied"
  limits "The spell affects only the practitioner, cannot create mass, and requires the borrowed trait to connect to the body's existing circulation, nerves, respiration, and structure"
  consequence "The change brings pain and fever, then leaves a minor remnant—altered skin, pupil, joint, appetite, or breath—that recedes only through ordinary healing"

  descriptive_identity(
    signs: "One part of the practitioner's body takes on another lifeform's working anatomy while the surrounding body strains visibly to feed, move, and sense through it."
  )

  prose <<~PROSE
    Wearing brings one studied trait into the practitioner's own body. Eyes can take a low-light structure, skin can grow a pressure membrane, lungs can acquire a filter, or hands can carry the gripping surface of a climbing animal. The borrowed anatomy grows from the body's existing mass and must join the systems already keeping that body alive.

    A drawing or preserved organ shows shape but not necessarily use. Practitioners study living patterns in motion: how blood reaches the tissue, where heat leaves it, which nerves control it, and what appetite supports it. A trait copied without those connections can form cleanly and still fail when used.
  PROSE
  prose <<~PROSE, section: :aftermath, heading: "What the Body Keeps"
    Wearing hurts while the body makes room. Fever, swelling, and unfamiliar balance continue through the casting. When the useful trait recedes, a lesser remnant stays behind: a patch of scale, a pupil that closes wrongly, a joint with another range, or hunger for food the practitioner cannot digest well. The body removes that remnant through ordinary healing rather than another casting.

    #{encyclopedia_ref :alteration, "Manyflesh"} is the narrower whole-body practice. It can rewrite another living body around a complete viable pattern, and its practitioner carries a matching alteration for as long as the subject does.
  PROSE
end
