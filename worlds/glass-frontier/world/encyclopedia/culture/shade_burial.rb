encyclopedia :shade_burial do
  name "Shade Burial"
  kind :culture
  subkind :belief
  status :complete
  topics :religion, :surface, :household
  prevalence :rare
  appears_when all: { place: [:surface] }
  summary "Shade burial is the Kyther rite of lowering the dead as a fragment's shadow arrives — the grave open, the mourners waiting, and the lowering timed to the passing so the earth closes in shade. The rite descends from burials under the intact ring's steady ribbon of shadow."
  aka "lowering to the shade"

  descriptive_identity(
    manner: "Shade families plan funerals with the almanac open — the death is grieved at " \
            "once, the lowering waits for a worthy passing — and speak of the interval " \
            "with the calm of people whose rite builds waiting in on purpose.",
    attire: "Mourners wear the dusk grays that read truest in shade-light, and the " \
            "lowering party's leader carries the family's shade-table — the heirloom " \
            "card of passings under which the line's dead have gone down."
  )

  prose <<~PROSE
    In the Kyther valleys and the surface districts their families have spread to, the dead go down in shade. A shade burial times the lowering to a #{encyclopedia_ref :passings, "passing"}: the grave is opened and dressed, the mourners gather in the dusk grays, and the rite waits — through a morning, sometimes through days — for the chosen fragment's shadow to arrive and cross. The lowering happens inside the shade, unhurried, and the earth closes before full light returns. The first direct light touches a closed grave.

    The rite is older than the broken sky it now depends on. Under the intact ring, the ribbon — the ring's one steady shadow — crossed the valleys daily, and the old rite lowered the dead into the ribbon's crossing as a matter of simple reliability; the mourning customs of the ring era treat the shadow as the door held open. The Glassfall shattered the door into a calendar. Shade families now choose their passing from the almanac — the deep seasonal shades for the honored dead, a swift morning shade for a burial that must be soon — and the choosing is itself part of the rite, argued gently in the family's first grief with the shade-table on the table. The waiting interval between death and lowering, foreign to every neighboring custom, has been defended by the shade families in the same terms since the sky broke: the grief starts at once; the ground can wait for the right dark.
  PROSE

  cue "The grave stands open and dressed while the mourners in dusk gray wait through the morning, almanac folded in the leader's hand, and the wall of soft shadow arrives over the ridge on schedule."
  cue "On the family's heirloom shade-table, generations of lowerings are recorded each by its passing — fragment, date, duration — in the space other lines use for grave plots."
  affordance "The rite gives grief a fixed architecture with a public clock — the community knows from the almanac when to gather, the family's shade-table holds the line's whole history of lowerings, and the waiting interval gives the far kin time to arrive that sudden rites never grant."
  pressure "In a thin-passing season, the family chooses between a swift morning shade and a later deep crossing, recording the chosen fragment and date on the shade-table."
  variation "Valley families hold to fragment shades their line has used for generations; diaspora districts use the passing available and mark that substitution with an asterisk on the shade-table."
  variation "Deep seasonal shades draw mourners from several valleys; swift morning shades keep the same lowering and closing forms with a smaller gathering."
end
