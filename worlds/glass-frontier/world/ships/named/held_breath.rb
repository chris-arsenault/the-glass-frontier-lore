transport :held_breath do
  name "Held Breath"
  subkind :vessel
  status :complete
  capacity "Fourteen cordon crew, twenty evacuees, two remote cutters, and one relic cradle"
  tags :transport, :orbital, :danger, :resonance, :navigation
  prominence :recognized

  prose <<~PROSE
    *Held Breath* is a Displacement Council boundary vessel stationed at #{ref :outside, "Outside"}. It carries technicians, damping mass, remote cutters, and the #{ref :karet_spool, "Karet Spool"} to work sites around Karet-3. The ship has no continuous internal signal bus. Lights, instruments, doors, and clocks are divided into small local circuits that cannot fall into one repeating cadence across the hull.

    Its white exterior carries a broken blue line from bow to stern. Gaps in the paint mark the electrical and structural breaks inside. Cordon workers use the line to identify the nearest isolated section when boarding from outside. Visitors often mistake the gaps for old damage until they see the same pattern on the deck.
  PROSE

  prose <<~PROSE, section: :history, heading: "Built After the First Repetitions"
    The Council commissioned the vessel after an earlier cutter tender began repeating its own door sequence beside a Bloom boundary. Every hatch on one deck opened and closed together despite disconnected controls. The crew escaped by cutting through a service wall and abandoned the tender before its drive joined the cycle.

    Designers treated synchronized convenience as a boundary hazard. *Held Breath* has hand-worked speaking tubes, shuttered light boxes, mechanical status boards, and clocks wound on staggered watches. The bridge can cut power to a section but cannot command every section at once. Orders travel through crew members who acknowledge them face to face.

    The name began during trials, when workers waited in silence for each local circuit to complete its test. It entered the registry before launch because everyone already used it.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Along the Wall"
    Boundary work begins with the ship holding station outside the active cordon. A remote cutter places instruments or moves a damaged buoy while technicians compare the local geometry with the previous watch's marks. If the route stays physical, workers cross by line. If it changes, the Karet Spool can preserve a path one person has already walked.

    The relic cradle sits alone behind a manual door. It holds the spool's recovered deck plate without transferring drive vibration into it. The line pays out through ceramic guides that can be broken away if a route fails. Every person touching the cable clips to a separate ordinary safety line, because the preserved path cannot support a body after its own line turns clear.

    Evacuees enter through the aft lock and remain in three small cabins rather than one open shelter. The division slows loading and prevents one changed room from taking everyone aboard. Each cabin has water, pressure cloth, hand lamps, and a mechanical release leading toward the exterior lock.
  PROSE

  prose <<~PROSE, section: :dangers, heading: "Silence Discipline"
    Bloom work punishes patterns. A repeating alarm can become audible in a compartment whose speaker is cold. Two clocks set together can continue agreeing after one is stopped. A crew member who hears a familiar call through a closed speaking tube must verify it by opening the shutter and seeing the caller.

    During a boundary approach, *Held Breath* drops ordinary broadcast traffic. Exterior messages arrive as single bursts and are copied onto a board before anyone answers. Internal orders use colored light plates that change only when a crew member works the local lever. The vessel feels quiet during these runs: pumps turn at different speeds, doors move by hand, and voices remain close.

    The discipline complicates emergencies. Fire, injury, and pressure loss cannot summon the whole ship automatically. Every section sends a runner toward the bridge and begins its own response. Council crews drill until that delay becomes familiar.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "Karet-3"
    *Held Breath* has begun carrying extra damping blocks to the far side of Karet-3, where the boundary has pressed outward against three old freight passages. The passages are empty, yet the ship's exterior listeners have recorded footsteps crossing its hull whenever a cutter enters the middle one.

    The steps follow the painted blue line and stop at each gap. No camera has shown a walker. Crews inspect the hull after every approach and have found dust displaced in the shape of a bare, narrow foot. The Council has kept the passage open for remote work and barred exterior crossings along that face.
  PROSE

  gm_note :complicates, "Nothing aboard can be announced at once. A fire, a casualty, or a breach travels by runner from whichever section found it, and the party acts on what one compartment knows while the bridge is still being told."
  gm_note :triggered_by, "A familiar voice through a closed speaking tube has to be checked by opening the shutter and seeing who is talking. Crews do it without comment, and a passenger who answers without looking gets corrected in front of everyone."
  gm_note :appears, "The broken blue line is how anyone boarding from outside names their nearest isolated section, and cordon crews expect a party to say which one before a lock is worked for them."
end

relate :rel_displacement_council_maintains_held_breath, :maintains, :displacement_council, :held_breath do
  prose "The Displacement Council built *Held Breath* for work beside active Bloom cordons."
end
relate :rel_held_breath_operates_karet_three, :operates_in, :held_breath, :karet_three do
  prose "The vessel maintains damping buoys and remote instruments around #{ref :karet_three, "Karet-3"}."
end
relate :rel_held_breath_operates_outside, :operates_in, :held_breath, :outside do
  prose "*Held Breath* takes crew, stores, and evacuees through the cordon port at Outside."
end
relate :rel_held_breath_carries_karet_spool, :carries, :held_breath, :karet_spool do
  prose "A separated cradle lets the vessel carry the Karet Spool without coupling it to the main drive."
end
relate :rel_held_breath_depends_bloom_containment, :depends_on, :held_breath, :bloom_containment do
  prose "Its divided systems and boundary procedures come from the Council's containment practice."
end
