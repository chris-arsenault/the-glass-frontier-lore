installation :ravel do
  name "Ravel"
  summary "Ravel is a settlement of thirty-five hundred people on a small ring fragment in the Glass Frontier, harvesting a mineral-rich plume every nine days."
  playable_as :chronicle_location
  subkind :settlement
  status :complete
  tags :"ring-hab", :orbital, :materials, :transport, :resonance
  prominence :marginal
  population 3500
  population_band "About thirty-five hundred residents"
  role "Volatile and ice collection from a recurring orbital plume"
  setting "A small fragment carrying woven collectors across a broad plume passage"
  access "Short Keel branch aboard Nera Doss or a chartered tender to one sheltered dock behind the fragment"
  omit_facts :maintained_by

  descriptive_identity(
    setting:
      "A small fragment with twelve booms extending like narrow bridge " \
      "arms, fine mesh spanning the gaps during a catch and larger " \
      "salvage nets trailing beyond the frame. Habitation shelters " \
      "behind a thick central shield, and the sideways windows show the " \
      "plume arriving as a pale band against the stars.",
    activity:
      "Life runs on the nine-day plume cycle: two days of line " \
      "inspection and mesh repair, then the catch with boom crews in " \
      "paired cabins watching strain beside resonance readings, then " \
      "open days of processing, anchor tests, and mesh recovery by " \
      "tender.",
    access:
      "A short Keel branch aboard Nera Doss, or a chartered tender, " \
      "reaches the one sheltered dock behind the fragment.",
    hazards:
      "A damaged net can drag a boom out of alignment, so when strain " \
      "crosses the red mark the crews release the whole panel — and " \
      "with it somebody's inherited share, drifting in the plume until " \
      "a tender brings it back."
  )

  prose <<~PROSE
    Ravel crosses a thin plume of water vapor, mineral dust, and organic grains once every nine days. Collector webs open ahead of the passage and fold against the fragment before its orbit carries them into ordinary traffic. The catch supplies water, industrial salts, trace metals, and small quantities of material altered by the plume's uneven resonance field.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Webs Beyond the Hull"
    Twelve main booms extend from the fragment like narrow bridge arms. Each carries reels, tension frames, and guide lights. Fine mesh spans the spaces between them during a catch. Larger salvage nets trail beyond the main frame and collect ice clumps after their speed has been reduced by the forward cloth. Rekindling crews found the fragment wrapped in loose Ring Age collector line; their manifests called the site the ravel, and the traffic name remained after new mesh replaced it.

    Habitation sits behind a thick central shield. The dock, processing rooms, and water tanks occupy the sheltered face. Crew quarters line the boom roots, close enough that a worker can reach a reel after a pressure alarm. Windows face sideways across the web and show the plume arriving as a pale band against the stars.

    A damaged net can pull a boom out of alignment. Crews release whole panels when strain crosses the red mark, then recover them after the passage with tender craft. Every panel carries a broad owner stripe and smaller repair marks along its edge.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Nine-Day Work"
    The two days before a passage belong to line inspection, mesh repair, and instrument calibration. During the catch, boom crews work in paired cabins and watch physical strain alongside resonance readings. Processing begins as soon as the first inner panels fold. Water ice moves directly to melt tanks; mineral catch waits in grounded bins until its field response settles.

    Families and work crews hold shares in particular panels. A strong catch pays by weight after common water and maintenance portions. Repair marks preserve the history of a panel through sale and inheritance. Experienced buyers inspect the stitching before reading the last ten yields.

    Tender crews spend the open days recovering released mesh, testing anchors, and guiding visiting carriers. #{ref :nera_doss, "*Nera Doss*"} works the outermost lines and carries the joined household names of the crew that established Ravel's first safe spread.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "Warm Catch"
    The last three passages deposited clear droplets at the center of two outer panels. They remained liquid inside cold processing rooms and formed a thin moving film across ceramic trays. Signal sounders record brief clustered tones whenever two films meet.

    Ravel has placed the catch in separate pressure cells and opened the affected panels for direct inspection. Nera Doss is carrying one sealed tray through the next plume passage while hull instruments compare its response with the material still on the web.
  PROSE

  gm_note :appears, "The nine-day plume cycle decides what anyone can get out of Ravel. In the two days before a passage every hand is on line inspection and mesh repair, " \
                    "and during the open days the tender crews are out among the released panels rather than at the dock."
  gm_note :triggered_by, "Players who offer to buy, salvage, or claim a collector panel find that its owner stripe and edge repair marks are the ownership record, and that the family holding shares in it reads the last ten yields before naming a price."
  gm_note :complicates, "A struggle, an accident, or an improvised maneuver out on the web during a catch pushes a boom past its red strain mark, and the crews answer by releasing the whole panel. Someone's inherited share then drifts into the plume until a tender recovers it."
end

relate :rel_ravel_located_in_frontier, :located_in, :ravel, :the_glass_frontier, since: 2305 do
  prose "Ravel occupies a small collector fragment in the inhabited ring."
end

relate :rel_tanel_supplies_nera_doss, :supplies, :tanel, :nera_doss, since: 2435 do
  prose "Tanel supplies the sealed ceramic capsules used for volatile samples aboard Nera Doss."
  descriptive_identity(
    terms:
      "Capsules sized for the sealed rack beneath the tender's cabin, " \
      "each holding its pressure and temperature through a full plume " \
      "crossing.",
    dependence:
      "The comparison runs on the warm catch stand or fall with the " \
      "seals — a failed capsule mid-passage ends the experiment and " \
      "puts the next attempt nine days out."
  )
end
