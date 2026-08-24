installation :blue_step_works do
  name "Blue Step Works"
  playable_as :chronicle_location
  subkind :workshop
  function "Builds and tests portable structural clamps, pump frames, and road-moving gear"
  status :complete
  tags :surface, :rebuilding, :resonance, :"structural-freq", :trade
  prominence :marginal

  prose <<~PROSE
    Blue Step Works is a heavy repair shop on the second bench of #{ref :ladderwell, "Ladderwell"}. It builds pump frames, pressure-sled parts, bridge fittings, and #{ref :stillweight, "stillweights"} for the roads and settlements of Avar. A broad blue-painted step crosses the entrance. Incoming machinery rests there until its old load has been marked and released.

    The #{ref :counterweight, "Counterweight"} maintains the shop and keeps its road rig in the outer court between moves. Municipal work receives the same benches as private work and a separate line in the ledger.
  PROSE

  prose <<~PROSE, section: :structure, heading: "The Load Hall"
    The main hall stands on deep stone reached through the moving surface layers. Eight work pads connect to that foundation through separate piers. A machine on one pad can take a test load without pulling the benches beside it into the same response.

    Blue lines painted from each pad lead to its witness board. During a test, chalk pins record movement at the floor, walls, water main, and nearest neighboring pad. Any mark outside the chosen line stops the work.

    Ringglass cores occupy a smaller room beyond two ceramic thresholds. The room contains no fixed powered tool. Workers cut housings in the load hall, carry them across cold, and seat the core by hand under broad reference tones.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Repairing What Held"
    Structural gear usually arrives after doing its job. A stillweight may be twisted from a hard release. A pressure sled may carry one bowed runner after crossing weak ground. Pump frames come in with the exact crack they prevented from reaching the pipe.

    Workers preserve the failure marks until the original load is reconstructed. Bent parts are drawn, measured, and compared with witness pins before heat or force changes them. The customer receives the drawing with the repair. Public works file a copy at Ladderwell's municipal rigging store.

    Finished gear takes a staged load on its pad. The first pull uses ordinary weight. The second uses a structural tone drawn from the work the machine will enter. A clamp for a bridge and one for a ship may share a casing and leave with different core marks.
  PROSE

  prose <<~PROSE, section: :people, heading: "Bench Rights"
    Senior workers hold a bench right rather than a title. The right grants authority to accept a repair, stop a test, and sign the witness drawing. It passes after an apprentice completes a public job under observation from workers on two other pads.

    Road crews bring food, news, and damaged gear into the outer court. During a major move, the shop becomes a supply point for cribbing, fasteners, hose, and replacement shackles. Families from the surrounding bench sell meals along the wall without entering the load hall.

    Customers can watch from the marked gallery. They cannot stand on the test floor, even when the machine is theirs and the delay is expensive.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "Blue Cores"
    Recalled blue-backed stillweight cores now fill the isolated room. Some arrived intact. Others have ground plates, replacement housings, or no purchase record. Blue Step Works tests them in the order required by active public work, then by arrival.

    One core taken from a bridge repair answers the shop foundation and a buried line beyond the east wall. The mapped water pipes do not follow that route. The pad remains closed while Ladderwell opens the old utility records and sounds the bench from outside the building.
  PROSE

  gm_note :triggered_by, "Hand the shop a bent or cracked machine and nothing is straightened that day. " \
                         "Workers draw and measure the damage until they can say what load made it, and the customer leaves with that drawing attached to the repair, a copy filed with the town if the work is public."
  gm_note :complicates, "Owners watch their own machine from the marked gallery and are kept off the test floor however expensive the wait becomes. " \
                        "A bench right, held by a worker with no title, is enough to stop the test and hold the pad for as long as the witness marks stay outside the line."
  gm_note :appears, "One pad is roped off and everything behind it waits: a recalled core there answers the shop foundation and a buried line the east-wall pipe maps do not show. " \
                    "Crews are sounding the bench from outside the building while Ladderwell reads through old utility records."
end

relate :rel_blue_step_located_ladderwell, :located_in, :blue_step_works, :ladderwell do
  prose "Blue Step Works occupies the second bench above Ladderwell's pump and market roads."
end
relate :rel_counterweight_maintains_blue_step, :maintains, :counterweight, :blue_step_works do
  prose "The Counterweight maintains the load pads, core room, and road-rig court."
end
relate :rel_blue_step_resonates_stillweight, :resonates_with, :blue_step_works, :stillweight do
  prose "The shop builds and tests stillweights against isolated structural loads."
end
relate :rel_blue_step_resonates_counterweight_rig, :resonates_with, :blue_step_works, :counterweight_road_rig do
  prose "The Counterweight Road Rig returns to the outer court for repair and restocking between moves."
end
