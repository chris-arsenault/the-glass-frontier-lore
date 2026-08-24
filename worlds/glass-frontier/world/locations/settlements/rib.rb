installation :rib do
  name "Rib"
  summary "Rib is a small settlement inside a living pressure reef in the Glass Frontier, built along one exposed ring support and maintained through the reef's pulse."
  playable_as :chronicle_location
  subkind :settlement
  status :complete
  tags :"ring-hab", :ecology, :resonance, :"structural-freq", :materials
  prominence :marginal
  population 460
  population_band "About four hundred and sixty residents"
  role "Cultivation of a living pressure shell and biological air filters"
  setting "Terraces built along one exposed ring support inside a growing reef"
  access "Filter carriers from Vey and timber loads from Noll through one approach trench kept open in the outer shell"
  omit_facts :maintained_by

  prose <<~PROSE
    Work follows the pulse. Shell cutters open passages during the long low note, when new mineral lies soft around its channels. Filter crews climb during the short rising pattern that drives trapped grit toward the outer surface. Meals gather on the terraces during the quiet interval while the reef redistributes water.

    Houses occupy narrow terraces cut between old alloy and living stone. Their walls admit air through soft filter mouths that contract when dust or spores enter. Low structural pulses travel along the curved ring support at the settlement's center. Residents hear them through floors, pipes, and the hard plates of the #{ref :sorel, "sorel"} that graze the shell.
  PROSE

  prose <<~PROSE, section: :history, heading: "The Pressure Reef"
    Famine survivors spread a pressure reef across the central support after the original hull split. The reef thickened around their chambers, sealed the exposed edge, and grew into the present shell. The support looked like a bare rib inside it, and the shelter took the same working name.

    New terraces begin as channels held open with navren frames. Reef growth closes around the timber, forms filter mouths toward occupied air, and leaves a hard pressure ridge outside the room. Sorel graze the soft excess before people move in.
  PROSE

  prose <<~PROSE, section: :dangers, heading: "The Fourth Spine"
    The fourth inhabited terrace has narrowed by a handspan across its full length. Fresh shell covers doors, rail sockets, and the painted measure marks used by three generations of cutters. Its filter mouths remain clear and deliver clean air at twice their usual rate.

    Sorel herds have moved onto the terrace and scrape the new growth through each pulse cycle. Their belly plates carry a second beat under the settlement's structural note. Rib's cutters have begun following that beat toward a warm cavity between the reef and the old support.

    A fist-sized reef bud removed from the cavity continues the second beat inside a ceramic transport jar. Each pulse draws moisture through the lid and adds a thin mineral rim. Filter crews want the bud taken to Vey before the terrace closes further. The households beside the narrowing doors require the same carrier space for children, tools, and stored food if the cutters order an evacuation.
  PROSE

  gm_note :appears, "Rib's day runs on the reef's pulse rather than any clock. Cutters will open a passage only during the long low note, filter crews climb during the short rising pattern, and a party wanting either job done waits for the interval that suits it."
  gm_note :triggered_by, "Dust, spores, smoke, or cutting work inside a room makes the filter mouths in its walls contract, and the room's air supply stops until they open again. Any fight or hurried repair indoors becomes a question of how long that room holds."
  gm_note :complicates, "There is one carrier's worth of space to argue over while the fourth terrace closes a handspan at a time: the filter crews want the sealed reef bud carried to #{ref :vey, "Vey"}, and the households beside the narrowing doors want that space for children, tools, and stored food."
end

relate :rel_rib_located_in_frontier, :located_in, :rib, :the_glass_frontier, since: 2140 do
  prose "Rib grows around a curved support of the broken ring."
end

relate :rel_rib_depends_on_sorel, :depends_on, :rib, :sorel do
  prose "Rib relies on sorel herds to expose growth lines before cutters open or brace a passage."
end
