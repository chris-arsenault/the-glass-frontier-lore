faction :counterweight do
  name "The Counterweight"
  subkind :mutual_aid
  status :complete
  founded 2429
  tags :surface, :"structural-freq", :"kinetic-freq", :transport, :training
  prominence :recognized

  prose <<~PROSE
    The Counterweight is a four-person moving crew that relocates structures a settlement cannot afford to lose. Its jobs include pump houses, mills, kilns, bridge heads, clinic wards, and workshops built on ground that has begun to fail. The structure usually remains in use while it moves. Towns hire the crew when interruption would be more dangerous than working beneath the load.

    Four people cannot move a building alone. The Counterweight brings load judgment, rigging, cutting tools, engines, and a method. The settlement supplies labor, local material, access, and knowledge of what the structure serves. On a large job, hundreds of hands may work under four calls.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Choose What Holds"
    Every job begins by tracing the full service. A mill is not only walls and machinery; it is grain intake, power, dust extraction, water, product storage, and the road that carries flour away. The crew identifies what must remain live, what can stop briefly, and what may be cut away. Owners participate in that decision but do not control the physical move.

    The crew then unpacks the #{ref :counterweight_road_rig, "Counterweight Road Rig"} and builds another path for every load. Its mats, cribbing, sleds, and temporary services move the structure in short lifts. Its stakes and warning shackles make a changing assumption audible before the next count begins.

    The ground can still reject the plan. None of the rig's readings decides where to go. The crew settles the load, compares the instruments with the structure and local knowledge, and changes the road before lifting again.
  PROSE
  prose <<~PROSE, section: :values, heading: "The Stop Call"
    Any worker can stop a Counterweight move. The crew obeys the call first, settles the load, and asks for the reason afterward. The rule applies to hired hands, town volunteers, apprentices, and owners. A person who repeatedly calls for attention rather than danger is moved away from the rig. A person who notices one changing note can save everyone under it.

    Deliberate work beneath unsupported weight ends a contract. So does disabling a warning core because its noise slows the job. Retired shackles are cut open in front of the local crew, their faults shown before the iron goes to scrap. The crew records each fault and leaves the cut core with local trainers.

    The Counterweight refuses prisons and siege engines. It will move an occupied home only when the residents consent, and it has no authority to order an evacuation. When a safe move requires people to leave and they refuse, the crew can explain the load, mark the likely fall, and walk away. It cannot turn expertise into jurisdiction.
  PROSE
  prose <<~PROSE, section: :structure, heading: "Four Calls"
    One member owns the route: the whole structure, the ground beneath it, and the direction of travel. One owns rigging and cuts away material that would pull the rest down. One keeps machinery and temporary services running. The fourth calls lifts and works with local hands, translating hundreds of small actions into one movement.

    Ownership means responsibility rather than rank. A lift caller cannot overrule a rigging stop. The engine hand can veto a route that would break a live water or power line. The route pilot can erase their own marks when the ground changes. Arguments happen while the load is resting. Once a count begins, every hand follows the call they agreed.

    Crew members teach as they work because a settlement must maintain the moved structure after they leave. A job that ends with the building upright and nobody able to inspect its new foundation is unfinished. Their contracts reserve time for local training, a clause owners often try to price out and towns later defend.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Where They Work"
    Most Counterweight jobs are on Kaleidos. Glass-bearing soils, old impact debris, and surviving ring-era foundations create failures that ordinary construction crews do not often meet elsewhere. The move at #{ref :ladderwell, "Ladderwell"}, where an operating chain-pump house crossed a settling terrace, made the crew known beyond the steppe.

    Outer-system settlements also hire them. Korvath's river towns move flood gates and workshops when channels migrate. Ashvane uses their methods on heat exchangers that cannot go cold during foundation work. Transit makes those contracts expensive, so the crew travels only when local riggers have exhausted a repair or several towns share the fare.

    The Counterweight owns no yard. Its heavy mats, cribbing, sleds, and spare drives travel in two cargo kites. Settlements store replacement timber and iron between jobs under reciprocal agreements. A town may wait years to call on the cache. When it does, the material has usually acquired another use and must be gathered again.
  PROSE
end

relate :rel_counterweight_operates_avar, :operates_in, :counterweight, :avar, since: 2429 do
  prose "The Counterweight takes most of its work across #{ref :avar, "Avar"}, where roads and foundations cross moving glass-bearing clay."
end
relate :rel_counterweight_cooperates_ladderwell, :cooperates_with, :counterweight, :ladderwell, since: 2434 do
  prose "Its move of #{ref :ladderwell, "Ladderwell"}'s operating chain house left the town with a permanent rigging cache and trained local crew."
end
relate :rel_counterweight_uses_tuning_compass, :depends_on, :counterweight, :tuning_compass do
  prose "The crew compares its load stakes with a #{ref :tuning_compass, "tuning compass"} so a local field shift is not mistaken for structural movement."
end
