installation :brake do
  name "Brake"
  summary "Brake is a salvage settlement of about nine thousand people in the Glass Frontier, built across a reinforced ring fragment and eleven anchored wrecks."
  playable_as :chronicle_location, :homeland
  origin_blurb "A free-cutting hab built around derelict recovery, shared claims, and hard rescue rules."
  subkind :settlement
  status :complete
  tags :"ring-hab", :salvage, :transport, :trade, :materials
  prominence :recognized
  population 9000
  population_band "About nine thousand permanent residents, plus rotating cutter crews"
  role "Derelict capture, shipbreaking, and mixed-hull repair"
  setting "A reinforced ring fragment surrounded by anchored wrecks and cutting lots"
  access "One tug shift from Clearance Eight, then escorted passage through the capture lanes to three inhabited docks"
  omit_facts :maintained_by

  prose <<~PROSE
    Eleven inhabited hulls surround Brake's central fragment. They were built in different eras for different gravities, and streets pass between them through cargo locks, temporary bridges, and torn engine rooms. Permanent routes remain on the central fragment and carry bright orange handrails.

    Wrecks arrive stripped of momentum and leave as sorted plate, machinery, pressure fittings, wire, glass, and sealed cargo. A sound habitat ship can remain intact and petition for ward status after its crew clears fuel, weapons, and unstable systems. Cutter lines reduce one vessel deck by deck while another arrives beside it, changing the settlement's skyline every month.

    The central fragment began as a freight platform fitted with kinetic arrestors. Rekindling salvage crews used those arrays to stop derelicts before cutting them. Pilots called for a tow to the brake, and their working name passed to the settlement growing among the captured ships.
  PROSE

  prose <<~PROSE, section: :operations, heading: "From Hull to Lots"
    Tug crews bring a derelict into the outer lane and fix it to three independent anchors. Intake teams read pressure, chemical residue, structural tone, and ownership marks. Safe compartments open first for records and personal effects. Fuel, weapons, and live biological systems move to isolated lots.

    Cutting proceeds from the outer hull toward the structural spine. Crews paint every planned line and clear the compartment on both sides before heat or kinetic tools touch it. Salvaged pieces receive a lot mark at removal. Buyers can trace a pressure door or engine brace back to its vessel and deck.

    #{ref :ira_voss, "Ira Voss"} runs intake on inhabited and recently abandoned ships. #{ref :five_bolts, "*Five Bolts*"} handles short tows between the capture lane and the cutting lots. The largest enclosed work happens at #{ref :lot_forty, "Forty"}, whose doors accept a complete cutter hull.
  PROSE

  prose <<~PROSE, section: :people, heading: "Wards Made From Ships"
    A crew seeking ward status keeps its ship intact through a thirty-day survey. Brake residents inspect life support, access routes, weapons spaces, and the systems that would couple into the central fragment. The crew then chooses a permanent anchor and opens one public passage through the hull.

    Each ship ward retains its deck plan and household arrangements. Shared law covers pressure safety, trade, docks, and routes across hull boundaries. A narrow mining vessel may sit beside a broad passenger drum, with a school operating through the joined airlocks between them.

    Cutter families often live in former ships whose sister hulls they dismantled. Their homes carry fittings from several wrecks and doors whose old labels point to rooms elsewhere in the yard.
  PROSE

  prose "#{embed :shardfall, :aftermath}", section: :history, heading: "Shardfall"

  prose "#{embed :hospital_hull_recovery}", section: :present_day, heading: "Hospital Hull Recovery"

  gm_note :appears, "Only the central fragment's permanent routes carry bright orange handrails. Every other way across the settlement passes through eleven hulls built in different eras for different gravities, joined by cargo locks, temporary bridges and torn engine rooms."
  gm_note :triggered_by, "A crew that wants to keep its ship whole can petition for ward status, at the price of a thirty-day survey of its life support, access routes and weapons spaces, and one public passage opened permanently through the hull."
  gm_note :complicates, "Salvaged pieces take a lot mark at removal, so a buyer can trace a pressure door back to its vessel and deck, and anything a party sells into the lots can be traced the same way."
end

relate :rel_brake_located_in_frontier, :located_in, :brake, :the_glass_frontier, since: 2305 do
  prose "Brake anchors derelicts around a reinforced fragment of the inhabited ring."
end

relate :rel_ratters_operate_in_brake, :operates_in, :ratters, :brake, since: 2435 do
  prose "Ratter crews use Brake's capture lanes and lots for derelicts that remain safe to cut by hand."
end

relate :rel_ira_voss_operates_lot_forty, :operates_in, :ira_voss, :lot_forty, since: 2435 do
  prose "Ira Voss uses Forty as the records room and clinical staging area for the captured medical vessel."
end

relate :rel_five_bolts_operates_lot_forty, :operates_in, :five_bolts, :lot_forty, since: 2435 do
  prose "Five Bolts holds vessels at Forty's outer anchors during enclosed or quarantined work."
end
