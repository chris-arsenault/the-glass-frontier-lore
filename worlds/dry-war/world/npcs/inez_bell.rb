npc :inez_bell do
  name "Inez Bell"
  tags :governance, :legibility, :water
  prominence :marginal

  prose <<~PROSE
    #{ref :cairo, "Cairo"}'s municipal appeals registrar. She keeps the election returns, the municipal seal and the paper copy of every #{ref :the_retreat_docket, "Retreat Docket"}. Her work is to establish which order was in force at each gauge threshold and whether the appellant named a fact #{ref :continuity, "Continuity"} permits an appeal to change.

    Bell can inspect signed poll books, occupied-address counts, levee certificates, evacuation manifests and the input record Continuity publishes with an order. She cannot inspect how the coalition weights those inputs or why a household remains after accepting that the water may come. Her vocabulary is return, defect, stay, threshold and transfer.
  PROSE

  prose <<~PROSE, section: :people, heading: "The Cairo File"
    Bell handled the city's election return during #{ref :the_cairo_retreat, "the Cairo Retreat"}. The voters had answered the question printed on the ballot, the count reconciled with the poll book and the mayor filed before the first red cut. She took the brass authority tablet from the retreat-order case and locked it into the docket cover. She entered their statement about the ward's courthouse, graves and neighbours under other grounds because none of the listed inputs described them.

    When Continuity upheld the order, Bell closed the stay at the second cut by returning the tablet to the order case, then opened the transferred roll at #{ref :cairo_ridge, "Cairo Ridge"}. She now receives #{ref :the_forty_seven, "the Forty-Seven"}'s paper presence returns from the old ward. Continuity's record lets her file a person under a transferred address or a refused transfer, but not as a resident of the ward the vote named.
  PROSE
end
