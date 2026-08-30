encyclopedia :sitharian_culture do
  name "Sitharian Culture"
  summary "Sitharian culture is the cosmopolitan prestige culture of the system's de facto capital, marked by formal procedure, institutional memory, and measured speech."
  kind :culture
  character_role :culture
  origin_blurb "Sitharian upbringing teaches the capital's formal register, public institutions, and procedures for carrying records across offices."
  subkind :cultural_identity
  status :complete
  reviewed "2026-03-19"
  topics :"social-structure", :governance, :trade
  prevalence :common
  available_globally
  formal_register "The default language of diplomacy, law and system-wide trade"
  aesthetic "Clean lines, muted natural tones and precise accents"

  descriptive_identity(
    appearance:
      "Raised under open sky and full surface gravity, Sitharians stand and " \
      "move like it — unhurried in large spaces, at ease with distance.",
    attire:
      "Clean lines, layered clothing, muted natural tones with precise " \
      "accents; formal garments use fine fabric and exact tailoring. Repairs " \
      "are worked into the original seam and matched to the surrounding color.",
    manner:
      "The formal register uses measured cadence and full clause structure. " \
      "Disagreement names the office, record, or procedure through which the " \
      "speaker expects it to be settled.",
    hospitality:
      "Formal invitations name their hours, table, and expected register. The " \
      "wording records whether the guest attends as a household intimate, an " \
      "officeholder, or a party to business."
  )

  cue "Sitharian dress uses clean lines, high-quality layered cloth, muted natural tones, and precise accents with repairs meant not to show."
  cue "A Sitharian speaker keeps a measured cadence and full clause structure under pressure, with the concession or refusal carried in a subordinate clause."
  affordance "A recognized Sitharian training or capital posting can open institutional records and establish standing far from the capital."
  pressure "Sitharian forms travel widely, so using one can open a distant office while also placing the exchange in the capital's legal vocabulary."
  variation "Sitharian factions span conflicting ideologies and governance philosophies while conducting their disputes through shared institutions and vocabulary."
  variation "Some travelers lead with a capital office or school; others use a local working name and reserve the Sitharian credential for formal business."

  prose <<~PROSE
    Sitharian culture grew from #{ref :sithari, "Sithari"}, the system's de facto capital, and travels through its schools, offices, courts, and trading houses. During the Rekindling, the city became a center of contact between the surface and returning ring settlements. Its formal register and record practices became common wherever institutions needed to work across jurisdictions.

    A Sitharian identity may name upbringing in the capital region, education in one of its institutions, or a household that keeps the register abroad. These sources overlap without being identical. A person raised in Sithari knows ward and office practice as local life; a diplomat trained elsewhere may speak the register perfectly and claim no capital household at all.
  PROSE
  prose <<~PROSE, section: :aesthetics, heading: "What It Looks Like"
    Formal Sitharian dress favors clean lines, layered cloth, muted natural tones, and precise accents of color. Fine garments show their cost in the fabric, the fit, and repairs worked invisibly into the original seam. Work and neighborhood dress vary by ward, trade, and household.

    Public architecture in the capital heartland uses engineered crystal and stone, resonance-integrated services, and broad spaces organized by proportion rather than dense ornament. Some civic buildings date to the Rekindling, and their continued use is a point of public pride.
  PROSE
  prose <<~PROSE, section: :naming, heading: "Naming Conventions"
    See #{encyclopedia_ref :naming_conventions, "Naming Conventions"} for Sitharian naming patterns.
  PROSE
  prose <<~PROSE, section: :language, heading: "Language"
    The Sithari register is the system's default formal mode. Accord documents use its conventions, diplomatic communications follow its forms, and system-wide trade contracts draw on its legal vocabulary. Schools and offices across the system therefore teach it to people with no Sitharian household or upbringing.

    The register favors subordinate clauses, explicit qualifications, and measured cadence. A concession, refusal, or condition may sit inside the clause that identifies the governing record. Negotiations with speakers trained in shorter working registers often pause to restate which clause carries the decision.
  PROSE
  prose <<~PROSE, section: :values, heading: "Politics"
    Sitharian factions span conflicting governance philosophies and political movements. They file through shared institutions, cite the same public records, and argue over which office owns an exception. The common procedure makes disagreement portable: a ward dispute and an Accord hearing can use the same record vocabulary while reaching different decisions.

    Sitharian political thinkers did much of the early work on the Tempered Accord. Its public trail, repeatable hearings, and reliance on good-faith participation reflect capital practice. Settlements elsewhere adopt many of the forms and continue to dispute which Sitharian assumptions traveled inside them.
  PROSE
  prose <<~PROSE, section: :perception, heading: "Capital Standing Abroad"
    A capital credential opens archives, courts, and professional registries far from Sithari. It also tells a local office which forms and assumptions the visitor is likely to bring. A delegation that offers a Sitharian procedure as neutral help may be heard as trying to set the terms of the dispute; another settlement may request the same procedure because every party can already read its record.

    Sitharian travelers vary their introductions accordingly. An officeholder may lead with the capital post at a hearing and use a local working name at the yard outside. The choice announces which standing the visitor expects to use before the business is stated.
  PROSE
end
