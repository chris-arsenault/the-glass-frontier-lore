faction :tessellan_communion do
  name "Tessellan Communion"
  subkind :religious_order
  founded 2216
  tags :religion, :resonance, :cosmology, :training
  prominence :recognized
  status :complete
  omit_facts :leaders, :predecessors

  prose <<~PROSE
    The Tessellan Communion keeps the devotional tradition of #{ref :the_three_forms, "the Three Forms"}. Its houses preserve complete triptychs, teach the figures through handwork and sound, and receive anyone who wants to study the tradition without entering an order. Members are called keepers because their first duty is to maintain an accurate copy and make it available.

    The Communion formed in 2216 when isolated Tuner households brought surviving panels to Sithari for comparison. No two copies agreed in every line, but the Tetrahedron, Triangulum, False Form, and closing sentence appeared in all of them. The keepers copied the shared figures onto stone and left disputed lines in the house that held them.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Practice"
    A service begins with three frames laid flat. Keepers brace the gold tetrahedron with weighted cords, turn the red triangulum through a measured arc, and leave the third frame open. A low structural tone holds the first. A kinetic pulse moves the second. The signal between them is heard through a row of loose crystal slips that answer without forming a stable chord.

    Participants inspect every joint before the figures are sounded. A hidden brace or a forced seam invalidates the demonstration. The work teaches the Communion's ordinary moral rule: a claim must show how it closes and what carries its load. Keepers are often asked to witness contracts, repair accounts, and reconciliations. They certify the completeness of the statement, not whether either party chose well.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "The Third Panel"
    Communion houses disagree about the #{ref :the_false_form, "False Form"}. Some teach that it depicts a real pressure against coherent matter and should never be sounded. Others treat it as a precise drawing of a path that only appears closed, useful because it exposes the concealed break. Both keep the panel in every complete triptych.

    They also disagree about the One Truth. Some houses train toward a tone in which structural and kinetic responses coincide. Others hold that the phrase names a limit no instrument or person can reach. The disagreement changes practice: the first group uses guarded resonance arrays in instruction, while the second permits only diagrams and unpowered frames.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "Present Day"
    The Communion's principal house stands in #{ref :old_campus, "the Old Campus"}, close enough to share instruments and arguments with the Sithari Clarisant chapter. The Clarisant recognizes no devotional exercise as Tuner training. It does inspect the powered arrays used by Communion houses and closes any that exceed public teaching limits.

    Several houses have asked for a common ruling on whether novices may sound the lawful figures before receiving a Clarisant credential. The Communion has no single leader who can issue one. Each house has published its own answer beside its triptych, and traveling keepers carry the differences from one house to the next.
  PROSE
end

relate :rel_tessellan_communion_headquartered_old_campus, :headquartered_in, :tessellan_communion, :old_campus, since: 2216 do
  prose "The principal Communion house keeps the comparison copies in Sithari's Old Campus."
end
relate :rel_three_forms_practiced_by_tessellan_communion, :practiced_by, :the_three_forms, :tessellan_communion, since: 2216 do
  prose "Communion keepers preserve complete triptychs and teach the figures through physical demonstrations."
end
relate :rel_tessellan_communion_studies_false_form, :studies, :tessellan_communion, :the_false_form, since: 2216 do
  prose "Every Communion house keeps the third panel, while disagreeing about whether it depicts a force or a false closure."
end
relate :rel_tessellan_communion_cooperates_clarisant, :cooperates_with, :tessellan_communion, :clarisant, since: 2310 do
  prose "Clarisant chapters inspect the powered arrays used in Communion teaching without recognizing the exercises as professional training."
end
