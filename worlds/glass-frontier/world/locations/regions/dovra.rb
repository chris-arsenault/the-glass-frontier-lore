geographic_location :dovra do
  name "Dovra"
  summary "Dovra is a low tidal river country on Korvath's middle sea, where shifting channels carry farms and towns toward the port of Lowbank."
  playable_as :chronicle_location
  context_tags :outer_system, :surface, :waterway, :unstable_route, :garden
  subkind :region
  status :complete
  tags :"outer-system", :ecology, :trade, :resonance, :transport
  prominence :recognized

  descriptive_identity(
    setting:
      "Low tidal river country on Korvath's middle sea, where " \
      "hundreds of channels divide around wooded islands across a " \
      "coast wider than some provinces. The shore moves every season " \
      "— silt closes one mouth, storms open another — and towns stand " \
      "on rises, old levees, and driven piles, facing water in " \
      "several directions.",
    activity:
      "Family channel barges collect rice, fruit, reeds, and fish " \
      "from landing stairs and run them to Lowbank, piloted by people " \
      "who read current color, reed direction, and the tone a pole " \
      "returns off buried iron sand. Water boards keep thousands of " \
      "small gates and spillways, and flood labor is compulsory for " \
      "anyone able to give it.",
    hazards:
      "A chart a few seasons old routes through channels that are now " \
      "orchard boundaries. During flood, two gates tuned too closely " \
      "can answer each other through saturated ground and release " \
      "together, a pole-thief near the reed banks can fake a " \
      "convincing bottom strike, and the maze of channels draws " \
      "smuggled cargo that brings inspections down on honest pilots."
  )

  prose <<~PROSE
    Dovra is a low river country on Korvath's middle sea. Older maps give the name to one of its five major rivers. That mouth divided and moved so many times that later charts applied Dovra to the whole tidal plain. Hundreds of smaller channels cross it, divide around wooded islands, and meet the tide through a coast wider than some provinces. The shore moves every season. Silt closes one mouth, storms open another, and a channel that carried barges can become an orchard boundary within a generation.

    People live on natural rises, old levees, driven piles, and earth mounds raised by many rounds of communal work. Towns face water in several directions. Roads exist, but ferries, #{encyclopedia_ref :dovran, "Dovrans"}, and tow paths carry more local traffic. #{ref :lowbank, "Lowbank"} is the largest port and the usual transfer point between river cargo and seagoing vessels.
  PROSE
  prose <<~PROSE, section: :geography, heading: "Channels and Gates"
    Flood control spreads across thousands of small works rather than one wall. Timber gates protect orchard channels. Stone spillways take spring water around towns. Reed beds slow storm surge and trap silt. Large tidal doors stand where a salt channel threatens a freshwater district. Each structure belongs to a local board whose members usually live inside the area it protects.

    Korvath's broad native resonance field passes through wet iron-bearing sediment. Gates use small imported ringglass cuts to sense pressure across that field and release before the water overtops them. The cut does not lift the door by itself. Counterweights, chains, and capstans do the work. A clear change in tone gives the gate crew time to start them.

    Channels can couple distant gates during a flood. Two cuts tuned too closely may answer through saturated ground and release together. Every water board therefore keeps its own interval, registered with the neighboring boards and sounded at the start of the wet season. Children near a gatehouse learn their district's note along with the flood path to higher ground.
  PROSE
  prose <<~PROSE, section: :economy, heading: "River Work"
    The coast grows rice, grain, fruit, oilseed, reeds, and dye plants. Freshwater ponds support fish and shellfish. Salt works occupy the outer islands, where storm loss is expected and buildings come apart for seasonal retreat. Clay from the inner channels feeds the kilns that make Korvath's resonance-insulating ceramic.

    #{encyclopedia_ref :dovran, "Dovrans"} collect produce from landing stairs and carry it to Lowbank or smaller sea ports. Most are family or village vessels with shallow hulls and removable deck houses. A crew may run the same loop for decades while changing half its course as channels move. Route knowledge belongs to pilots who read color, reed direction, bottom pressure, and the tone returned by a pole against buried iron sand. Near reed banks, a #{encyclopedia_ref :tolven, "tolven"} can add a convincing false strike.

    Workshops follow the water. Mills, presses, net lofts, and kiln sheds are built in sections that can be raised or moved when a bank fails. The #{ref :counterweight, "Counterweight"} has taken several coast contracts, but most relocations use local crews and equipment designed for lighter buildings.
  PROSE
  prose <<~PROSE, section: :people, heading: "Boards and Neighbors"
    A water board can cross municipal, family, and property lines because a channel crosses them first. Membership follows the protected area. Landowners, tenants, fishers, workshops, and public wells all hold places according to the work and water at stake. Meetings are practical, long, and held at gatehouses during the dry season when crews can inspect the structure being argued over.

    Flood labor is compulsory for anyone able to provide it, with care work, cooking, transport, and message running counted alongside lifting earth. A household that cannot send a worker contributes boats, animals, tools, or stored food. The obligation carries social weight beyond formal penalties because the repaired levee records every mark and crew.

    Settlements celebrate the closing of the outer gates at the end of storm season. The gates are washed, sounded, and left open to the tide. Markets gather on the exposed aprons. Retired chain and cracked ceramic are sold as scrap after their faults are painted where buyers can see them.
  PROSE
  prose <<~PROSE, section: :tensions, heading: "Freight and Concealment"
    The number of channels makes Dovra useful to smugglers. A small cargo can leave a sea vessel, pass through three barges, and reach an inland road without entering a major port. Freight agents buy that movement one pilot and warehouse at a time, leaving little evidence that any two legs belonged to the same shipment.

    Local pilots resist scrutiny that would place every household route in an off-world registry. They also lose business when criminal traffic brings inspections and insurer refusals. Several boards now issue sealed transit tallies that prove a cargo's route without publishing the channel details. Ports accept the tallies unevenly, and forged versions appeared within a season of the first issue.
  PROSE

  gm_note :appears, "Every water board sounds its own registered gate interval at the start of the wet season, so crossing districts " \
                    "changes the note underfoot; children raised near a gatehouse can name their interval and the flood path that " \
                    "goes with it."
  gm_note :triggered_by, "Directions in Dovra go stale: a route given by landmark may name a channel silt has since closed, and a chart " \
                         "a few seasons old can run a party into what is now an orchard boundary."
  gm_note :complicates, "A sealed transit tally proves a cargo crossed inspected water without naming a single channel, so it settles " \
                        "the route and nothing about who loaded the crate; forged tallies appeared within a season of the first issue."
end

relate :rel_dovra_on_korvath, :on_surface_of, :dovra, :korvath do
  prose "Dovra forms one of #{ref :korvath, "Korvath"}'s largest settled river plains."
end
relate :rel_counterweight_operates_dovra, :operates_in, :counterweight, :dovra, since: 2432 do
  prose "The Counterweight takes occasional contracts on the coast when a town must move a gatehouse or mill too large for local rigs."
end
