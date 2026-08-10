npc :inez_bell do
  name "Inez Bell"
  subkind :official
  tags :governance, :legibility, :water
  prominence :marginal
  occupation "Municipal seal and voter-roll keeper"

  prose <<~PROSE
    Keeper of #{ref :cairo, "Cairo"}'s municipal seal and voter rolls. #{ref :continuity, "Continuity"} moved her counter uphill during #{ref :the_cairo_retreat, "the Cairo Retreat"}; Bell carried the seal, the poll books and the brass tablet that told field crews which order was in force.

    She now works in the records hall at #{ref :cairo_ridge, "Cairo Ridge"}. Behind her hang two maps with the same parcel numbers: the old streets below the levee and the apartment courts on high ground. Most names appear on the new map. Forty-seven still appear on both.
  PROSE

  prose <<~PROSE, section: :people, heading: "The Two Maps"
    Bell counted Cairo's vote to remain. The ballots matched the poll book, and the city accepted every flood measurement Continuity had published. Voters wrote about the courthouse, their graves and the neighbours who would be scattered uphill. None of those facts altered the flood model.

    Each morning someone from #{ref :the_forty_seven, "the Forty-Seven"} brings her the names of those who slept below the levee. Bell marks them present on the old map while Continuity keeps their official addresses at the ridge. The two maps disagree in public, on the wall behind the municipal seal.
  PROSE
end
