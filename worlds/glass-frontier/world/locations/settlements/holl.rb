installation :holl do
  name "Holl"
  summary "Holl is a settlement of about sixty-two hundred people beneath the overhanging face of a split ring wall in the Glass Frontier."
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

  descriptive_identity(
    setting:
      "Homes fill water-cut alcoves under the overhanging face of a " \
      "split ring wall, with balconies, ladders, narrow bridges, and " \
      "cargo lines crossing the open interior. From the lowest terrace, " \
      "kitchen lights climb two hundred meters up the opposing face, and " \
      "the dark curve of Kaleidos hangs beyond every railing.",
    activity:
      "Water crews ride low sleds across the wall face painting each " \
      "active seep line in a color readable from the far terraces, while " \
      "freight changes from upper lift to lower cable at Five Landing " \
      "and markets fill the free deck between arrivals.",
    access:
      "One local carrier leg runs from Eleven; from the two docks, " \
      "ladder galleries and the upper cargo lifts carry people down into " \
      "the terraces. Every inhabited level keeps a direct ladder toward " \
      "a dock and a lateral route to the next cistern.",
    hazards:
      "The wall shifts a few millimeters each orbit, and anything " \
      "mounted rigid against it sings a rising structural note for days " \
      "before tearing free. When the wall moves further it can close a " \
      "seep or open a new one, and the rerouted water carries whole rows " \
      "of homes into different cistern wards within a season."
  )

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

  gm_note :appears, "Directions here come as a color and a level, since water crews paint every active seep line to read from the opposing terraces and each inhabited level keeps one ladder toward a dock and one lateral route to the next cistern."
  gm_note :triggered_by, "The split wall moves a few millimeters every orbit, so anything a party mounts rigid against it, a pipe or a bracket or a winch anchor, starts a rising structural note that the neighbors hear for days before the fitting tears free."
  gm_note :complicates, "A household votes with the cistern it draws from, so opening a route or redirecting a seep moves whole rows of homes between wards within a season. #{ref :five_landing, "Five Landing"} hosts the joint reading after one dry week that settles where the money goes."
end

relate :rel_holl_located_in_frontier, :located_in, :holl, :the_glass_frontier, since: 2140 do
  prose "Holl hangs beneath the fractured inner face of a ring fragment."
end

relate :rel_holl_supplies_eleven_flow_measurements, :supplies, :holl, :eleven, since: 2435 do
  prose "Holl sends gravity-flow measurements from its moving wall to Eleven's source-line readers."
  descriptive_identity(
    terms:
      "Seep-by-seep readings from a wall that shifts a few millimeters " \
      "every orbit, carried down the local carrier leg with the water " \
      "crews' painted color codes attached.",
    dependence:
      "Orr Senn's wall charts need an outside case where gravity does " \
      "the lifting; Holl's records show him what a flow change looks " \
      "like before any pump is involved."
  )
end

relate :rel_eleven_supplies_holl_pipe_designs, :supplies, :eleven, :holl, since: 2435 do
  prose "Eleven sends flexible-pipe designs proven along its long water spine to Holl's cistern crews."
  descriptive_identity(
    terms:
      "Joint patterns and fittings that have already survived years of " \
      "thermal cycling on the eleven-shaft line, drawn up for crews who " \
      "assemble them on ledges rather than in a workshop.",
    dependence:
      "Every pipe in Holl must flex or fail — a hard-mounted run sings " \
      "a rising structural note for days and then tears free — so the " \
      "proven designs are the difference between plumbing and debris."
  )
end
