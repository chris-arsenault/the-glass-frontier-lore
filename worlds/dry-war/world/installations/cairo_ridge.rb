installation :cairo_ridge do
  name "Cairo Ridge"
  subkind :settlement
  tags :governance, :water, :autonomy, :locality
  prominence :recognized

  prose <<~PROSE
    A neighbourhood #{ref :continuity, "Continuity"} built above #{ref :cairo, "Cairo"}'s forecast flood line. It contains apartment courts, a clinic, school rooms, a records hall, a bus loop and a water tower sized for every occupied address in the old ward. The first residents arrived while #{ref :the_cairo_retreat, "the Cairo Retreat"} was still being decided.

    The apartment courts follow the old roll's street and house-number order. Households kept their school places, clinic teams and voting precincts after moving. Continuity's maps show Cairo's lowest ward shifted uphill rather than a new settlement.
  PROSE

  prose <<~PROSE, section: :structure, heading: "The Records Hall"
    The records hall stands at the centre of the bus loop. Its public counter carries Cairo's seal, the transferred voter roll and the retreat order's brass authority tablet. #{ref :inez_bell, "Inez Bell"} opens the counter each morning and files mail for both the ridge apartments and the unserviced addresses behind the levee.

    Two wall maps hang behind her. One shows the former streets with each parcel number intact; the other gives the same numbers to the ridge courts. Blue thread joins each old house to its assigned apartment. Forty-seven threads end at the edge of the new map.
  PROSE

  prose <<~PROSE, section: :people, heading: "A Municipal Day"
    Most transferred households use the ridge as Continuity intended. Children attend the new school rooms, clinic appointments continue under the same staff, and the bus loop reaches the region's employment routes. Residents vote under Cairo's charter and receive water under their old accounts.

    Members of #{ref :the_forty_seven, "the Forty-Seven"} also use the clinic, counter and buses. Their guardians route them through Cairo Ridge because it is the service address attached to their names, even when Bell's old roll records where they slept.
  PROSE
end
