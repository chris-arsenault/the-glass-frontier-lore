installation :the_dry_net do
  name "The Dry Net"
  summary "The Dry Net is a lodging house and hiring room on Glasswake's dock fringe, used by Ratter crews, steppe carriers, and cargo hands."
  playable_as :chronicle_location
  context_tags :"realm:surface"
  subkind :installation
  type_of :lodging_house
  status :complete
  tags :trade, :salvage, :transport, :household, :surface
  prominence :marginal

  descriptive_identity(
    setting:
      "A former net loft on Glasswake's dock fringe, between the harbor " \
      "wash yard and the road up to the mineral offices. Stone ground " \
      "floor drained for wet boots, bunk rooms and curtained bays under " \
      "the old ceiling rails above, and a cellar cut into bays by dead " \
      "ceramic walls where energized goods wait to be sounded.",
    activity:
      "Cargo hands read work slips nailed under the tide and mine-shift " \
      "boards while the kitchen runs from the first mine lift until the " \
      "tide turns. Long tables mix trades that never share a workplace — " \
      "a claim Tuner beside a wool grader — and chalk comes out for " \
      "drawing seams and load paths on the tabletops.",
    access:
      "Anyone can walk into the front hall; a bed buys wash water, a " \
      "blanket, and one sealed case in the dry store. Hiring is done in " \
      "the open room under the clerk's eye — a private bargain stays " \
      "legal but gets no help from the house when pay, injury, or cargo " \
      "turns out otherwise. The stranded pay by taking a kitchen or " \
      "night-desk shift.",
    hazards:
      "An active seam carried upstairs once set every bed frame on the " \
      "floor pulling east, which is why the cellar walls exist. The Pell " \
      "plate rush has brought slips that hide the no-powered-sounding " \
      "condition in smaller writing, and locked cases of ungraded plate " \
      "now sleep upstairs with hired guards because the house refuses " \
      "them the dry store."
  )

  prose <<~PROSE
    The Dry Net is a lodging house and hiring room on #{ref :glasswake, "Glasswake"}'s dock fringe. It occupies a former net loft between the harbor wash yard and the road climbing toward the mineral offices. Ratter crews sleep upstairs, steppe carriers take the broad ground rooms, and cargo hands come through the front hall to read work slips nailed beneath the tide and mine-shift boards.

    The name refers to the old drying floor under the rafters. The nets are gone. Their ceiling rails now carry curtains, spare bedding, and the numbered bags issued to crews waiting for a berth.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Three Working Floors"
    The ground floor is stone, drained, and meant for wet boots. A long room faces the hiring wall. Behind it, the kitchen opens before the first mine lift and remains active until the harbor tide turns. Two side rooms hold cargo samples, contract witnesses, and arguments that should not occupy the meal benches.

    Sleeping rooms fill the upper floor. Most contain four narrow bunks and one lockable chest fixed through the wall. Larger crews rent a curtained bay beneath the old roof rails. Every bed comes with wash water, a blanket, and the right to leave one sealed equipment case in the dry store below.

    The cellar is divided by dead ceramic walls. Energized tools, ringglass samples, and remote-cut goods stay there until a yard has sounded them. The building's owners added the divisions after a salvager carried an active seam into an upstairs room and every bed frame on the floor began pulling east.
  PROSE

  prose <<~PROSE, section: :operations, heading: "The Hiring Wall"
    Work slips name the vessel or yard, the expected watch, the cargo class, the person who can close the job, and whether the pay is cash, work credit, or a share of recovery. A blank in any position draws a red slash from the house clerk. Slashed slips remain on the wall so nobody can post the same offer again without answering the omission.

    Pell work occupies one board. Independent harbor work occupies another. A narrow third board carries return passages: captains offering bunks to anyone willing to load at the next stop, herd drivers seeking another pair of hands, and stranded workers trading labor for a route inland.

    Hiring happens in the open room. A private promise may still be valid, but it receives no help from the house when pay, injury, or cargo changes the bargain. Crews value that boundary enough to tolerate the clerk's interruptions.
  PROSE

  prose <<~PROSE, section: :people, heading: "Between Ship and Road"
    The kitchen serves harbor stew, steppe bread, fried river grain, and whatever fish arrived too late for the morning market. Long tables mix people whose work rarely shares a workplace. A claim Tuner may sit beside a wool grader, a shower pilot beside a channel-boat family waiting on freight.

    Equipment stays below, so the room has little of the instrument noise common in a yard canteen. Hiring terms, route closures, and ore prices carry across it instead. The staff keeps chalk behind the counter for drawing a seam, load path, or disputed cargo frame on the tabletops. The tables are scrubbed after the late meal and seldom return to bare wood.

    People who remain after their job ends can pay by taking a kitchen, laundry, or night-desk shift. The arrangement catches injured workers and crews whose ship left without them. It also gives the Dry Net a staff that recognizes most kinds of trouble before they reach the front door.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "The Plate Rush"
    The glasswurm colony at Pell Cut has filled the hiring wall with shoring, survey, and loose-plate work. Licensed jobs prohibit powered sounding inside the stockpile. Several unslashed slips omit that condition in smaller writing elsewhere on the page.

    Traders are offering “Pell plates” from locked cases in the side rooms. The Dry Net allows the meetings and refuses the cases space in its dry store. Two crews have hired guards for material that no Glasswake toolmaker has agreed to grade.
  PROSE

  gm_note :appears, "Most Glasswake dock work reaches crews through the Dry Net hiring wall, where the clerk red-slashes any slip missing its vessel, watch, cargo class, closer, or pay terms. " \
                    "Slashed slips stay up, so a bad offer is still readable weeks after it was posted."
  gm_note :triggered_by, "Settling terms in a side room instead of the open hall is allowed, and the house then declines to help when the pay, an injury, or the cargo class turns out otherwise. " \
                         "The clerk states that boundary once and goes back to witnessing the wall."
  gm_note :complicates, "Energized tools, ringglass samples, and remote-cut goods belong in the cellar bays until a yard has sounded them, and the house is refusing that store to the locked cases of " \
                        "#{ref :pell_stockpile_colony, "glasswurm"} plate now arriving from Pell. Those cases sleep upstairs with hired guards."
end

relate :rel_dry_net_located_glasswake, :located_in, :the_dry_net, :glasswake do
  prose "The Dry Net stands on Glasswake's dock fringe between the harbor wash yard and the road to the mineral offices."
end
relate :rel_pell_assembly_maintains_dry_net, :maintains, :pell_freight_assembly, :the_dry_net do
  prose "The Assembly maintains the hiring boards, equipment store, and work-credit desk while resident tenants run the lodging rooms and kitchen."
end
relate :rel_dry_net_resonates_pell_stockpile_colony, :resonates_with, :the_dry_net, :pell_stockpile_colony do
  prose "Pell's glasswurm colony has brought shoring crews, plate buyers, and questionable harvest offers into the house."
end
