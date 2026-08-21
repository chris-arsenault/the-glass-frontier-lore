creature :ironwhistle do
  name "Ironwhistle"
  subkind :anomaly
  status :complete
  tags :orbital, :danger, :resonance, :transport, :legend
  prominence :renowned
  custom_fact :first_confirmed, "2338"
  custom_fact :range, "Mid-drift Shear and the inner Keel branch routes"
  custom_fact :identifying_marks, "Missing tip on the second left membrane and a pale ring around the rear jaw"
  custom_fact :feeding, "Active kinetic fields and metal-rich Farborn"

  prose <<~PROSE
    Ironwhistle is a named Shear dragon whose range crosses the working corridors between the mid-drift and the inner Keel. Its body is longer than a heavy hauler, with four broad membranes set around a narrow trunk and a jaw divided into three independently closing parts. Dark metallic dust has accumulated through its outer tissue, giving old sections of the hide the dull red-brown of worked iron.

    Crews usually hear the dragon before they resolve its body. Openings along the forward membranes pass the local field as a high descending whistle. The sound travels through hull members and tuned glass. A microphone records only a faint scrape; a hand on a bulkhead feels the whole call.
  PROSE

  prose <<~PROSE, section: :history, heading: "The Named Animal"
    Compact records first identify Ironwhistle in 2338, when the same scarred dragon appeared in reports from three salvage flotillas. Earlier logs describe iron-colored dragons and descending hull tones without enough detail to prove continuity. The 2338 observers recorded a missing tip on the second left membrane and a pale ring around the rear jaw. Both marks remain visible in current images.

    The animal has crossed inhabited traffic for long enough that route offices maintain a separate file for it. Reports include date, field condition, direction, apparent feeding, and whether the whistle changed near a vessel. A sighting with clear marks earns a modest observation payment. A warning submitted after cargo loss receives closer examination.

    Several bounties have been posted after attacks. None remains continuously funded. Ironwhistle disappears from working space between periods of activity, and affected ports stop paying crews to hunt an animal no survey can locate.
  PROSE

  prose <<~PROSE, section: :biology, heading: "Dust, Membranes, and Feeding"
    Ironwhistle feeds from active kinetic fields and from metal-rich Farborn. It approaches a working kite from behind the drive gradient, opens its forward membranes, and holds position where redirected resistance returns toward ordinary space. A ship feels the attack as rising drag and uneven corrections before the jaws reach the hull.

    The membranes collect metal dust. Fine particles align through the tissue and stiffen the leading edges, while excess material grows into brittle ridges that break away during sharp turns. Salvagers have recovered these pieces after sightings. Each keeps a weak kinetic response and carries tissue too degraded for reliable age or diet studies.

    The whistle changes with the membrane shape. A descending call means the animal is spread and feeding. Short rising strokes accompany turns. Crews who hear a steady single note prepare for contact, because the dragon produces that tone while folding its membranes for a strike.
  PROSE

  prose <<~PROSE, section: :dangers, heading: "Surviving a Pass"
    A vessel cannot outrun Ironwhistle by increasing its kite output. The stronger field gives the dragon more organized force to follow. Pilots reduce to the minimum needed for control, turn across the animal's approach, and release an iron-rich decoy under a separate kinetic pulse.

    The dragon sometimes follows the decoy. If it remains on the ship, crews protect the drive and sacrifice exterior cargo. Its jaws can open a standard hull, though the animal often tears away an energized frame and leaves the pressure shell intact. A disabled kite must stay quiet after the pass; restarting while Ironwhistle feeds nearby draws it back.

    Hunters use several decoys to make the animal spread its membranes before attacking from outside the whistle's forward cone. The tactic produced injuries and samples. No documented hunt has held Ironwhistle in place long enough for a killing strike.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "Near the Branch Routes"
    Ironwhistle returned to the inner branch routes in 2435 after a long interval without a confirmed sighting there. It took an empty cargo frame from a Vantara tug, followed a Prismwell marker string through a shower wake, and passed within instrument range of #{ref :quiet_measure, "*Quiet Measure*"} without turning toward the rescue tender's cold drive.

    Current route notices place the animal between Pell and the branches skirting Karet-3. Carriers are loading iron decoys and arguing over whether the additional mass belongs in corridor fees. The Compact has asked every vessel to submit raw hull recordings before crews edit the whistle into something easier to identify.
  PROSE
end

relate :rel_ironwhistle_inhabits_shear, :inhabits, :ironwhistle, :the_shear do
  prose "Ironwhistle ranges through the mid-drift and the branch corridors crossing the Shear."
end
relate :rel_ironwhistle_resonates_farborn, :resonates_with, :ironwhistle, :farborn do
  prose "The dragon is one of the largest individually tracked Farborn predators."
end
relate :rel_ironwhistle_resonates_kite, :resonates_with, :ironwhistle, :kite_sail do
  prose "Active kinetic fields provide the organized force Ironwhistle follows and feeds upon."
end
relate :rel_ironwhistle_active_corridor_disputes, :active_during, :ironwhistle, :the_corridor_disputes do
  prose "Its return to the branch routes has added decoy mass and predator coverage to the disputed fees."
end
relate :rel_ironwhistle_resonates_quiet_measure, :resonates_with, :ironwhistle, :quiet_measure do
  prose "The dragon passed the rescue tender while its drive remained cold, giving crews a useful observation of its hunting response."
end
