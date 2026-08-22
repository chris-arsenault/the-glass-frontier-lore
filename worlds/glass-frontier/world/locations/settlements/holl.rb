installation :holl do
  name "Holl"
  playable_as :chronicle_location
  subkind :settlement
  status :complete
  tags :"ring-hab", :transport, :governance, :"structural-freq", :household
  prominence :marginal
  population 6200
  population_band "About sixty-two hundred residents"
  role "Spring-water settlement and transfer point across a vertical ring fracture"
  setting "Rooms and terraces beneath the overhanging face of a split ring wall"
  access "One local carrier leg from Eleven, then ladder galleries from two docks or the upper cargo lifts"
  omit_facts :maintained_by

  prose <<~PROSE
    Homes fill water-cut alcoves beneath a ring wall split open during the Glassfall. Balconies, ladders, narrow bridges, and cargo lines cross the open interior. From the lowest inhabited terrace, kitchen lights rise two hundred meters along the opposing face, with the dark curve of Kaleidos beyond every railing.
  PROSE

  prose <<~PROSE, section: :resources, heading: "Seeps and Cisterns"
    Water enters the wall through fractured storage veins and emerges along five broad levels. Each seep feeds a carved basin, settling bed, and covered cistern. The upper water is cold and clear. Lower levels carry mineral color and fine ringglass from the broken wall.

    Houses cluster near the cisterns while workshops hang farther out, where spilled heat can leave through the open shaft. Pipes follow the terraces. Their joints remain flexible because the wall shifts a few millimeters through each orbit. A hard-mounted pipe announces itself with a rising structural note several days before it tears free.

    Water crews inspect the inner cracks from low sleds pulled across the wall face. They paint each active line in a color visible from the opposing terraces. Children in Holl learn those colors with the names of their nearest ladders.
  PROSE

  prose <<~PROSE, section: :access, heading: "A Town Made of Routes"
    Every inhabited level maintains two ways out: a direct ladder toward a dock and a lateral route to the next cistern. Public money follows the routes. A terrace carrying traffic for three neighborhoods receives more bridge crews and lift time than an enclosed residential ledge. A Famine-era rigger signed every plate on the first permanent ladder with the name Holl. Work logs called it Holl's side, then Holl, and the name spread with the route.

    Local representation follows the same practical map. A household votes with the cistern it draws from and sends maintenance labor to the route it uses most. New bridges can move a row of homes into another cistern ward within one season. Residents mark the change by carrying water together across the finished span.

    #{ref :five_landing, "Five Landing"} is Holl's largest level surface. Freight changes from upper lift to lower cable there. Markets fill the free deck between arrivals, and most public meetings happen within sight of the routes affected by them.
  PROSE

  prose <<~PROSE, section: :governance, heading: "The New Spring"
    A recent wall movement closed part of the third seep and opened a stronger flow behind an old pressure door above the settled terraces. Surveyors have measured a large dry chamber beyond it, crossed by Ring Age pipework and one intact balcony. The new water already supplies a quarter of Holl's lower cisterns.

    Opening the chamber would create a shorter route between the upper dock and Five Landing. The same work would disturb the fracture carrying the spring. Riggers have installed a temporary stair outside the door while water crews map the wall from both sides.

    Lower cistern wards now count the new flow in their daily shares. Upper-route households want the chamber opened before the next lift overhaul closes their long descent. Five Landing will host a joint reading after one dry week; the flow record will determine whether public money goes first to a permanent stair or a bypass pipe around the fracture.
  PROSE
end

relate :rel_holl_located_in_frontier, :located_in, :holl, :the_glass_frontier, since: 2140 do
  prose "Holl hangs beneath the fractured inner face of a ring fragment."
end

relate :rel_holl_supplies_eleven_flow_measurements, :supplies, :holl, :eleven, since: 2435 do
  prose "Holl sends gravity-flow measurements from its moving wall to Eleven's source-line readers."
end

relate :rel_eleven_supplies_holl_pipe_designs, :supplies, :eleven, :holl, since: 2435 do
  prose "Eleven sends flexible-pipe designs proven along its long water spine to Holl's cistern crews."
end
