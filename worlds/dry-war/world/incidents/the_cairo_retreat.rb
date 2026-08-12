incident :the_cairo_retreat do
  name "The Cairo Retreat"
  subkind :policy_action
  tags :governance, :autonomy, :prediction, :water
  prominence :recognized
  date 2090
  subject "Whether Cairo's lowest ward could remain occupied after residents accepted Continuity's flood forecast"
  action "Continuity transferred the charter and services uphill, then closed water and local power behind the levee"
  outcome "Forty-seven households remained without municipal addresses while services continued at Cairo Ridge"

  prose <<~PROSE
    #{ref :continuity, "Continuity"}'s withdrawal of municipal services from #{ref :cairo, "Cairo"}'s lowest ward in #{year :now} CE. Its flood model put the old streets above the coalition's permitted casualty threshold. Cairo voted to stay even though the city accepted the forecast, the measured river stage and the reported condition of the levee.

    #{ref :inez_bell, "Inez Bell"} counted a valid vote for a choice Continuity does not allow a city to make. A municipal appeal can correct a false river reading, a missing household or a bad levee report. It cannot turn an accepted risk into a safe one. The order stood.
  PROSE

  prose <<~PROSE, section: :course, heading: "Three Stages"
    Three red cuts mark a white enamel staff gauge beside the river. Bell held the retreat order's brass authority tablet through the first. Buses, medical transfers and packing crews ran in both directions while the city waited for Continuity's ruling.

    The water reached the second cut before the ruling changed. Bell returned the tablet to the field crews, and Continuity moved Cairo's charter and public services to #{ref :cairo_ridge, "Cairo Ridge"}. Buses ran downhill empty and returned full. At the third cut, crews closed the water valves and isolated the local power feeders. Adults whose guardians recorded their choice to stay remained behind the levee.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "Inside The Old Ward"
    Forty-seven households declined transferred addresses before the stay closed. They organize as #{ref :the_forty_seven, "the Forty-Seven"}, crossing the service barrier for work, treatment and supplies and returning to homes that Continuity records as occupied structures rather than municipal addresses.

    The river has passed the isolation cut without overtopping the inner levee. Portable pumps run from household batteries, and Continuity safety teams leave sealed water at the barrier. The empty buses still stop there.
  PROSE
end
