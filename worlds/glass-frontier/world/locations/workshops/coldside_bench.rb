installation :coldside_bench do
  name "Coldside Bench"
  summary "Coldside Bench is a shaded public repair hall on a lower Shadewell terrace, rebuilding heat-rated pumps, radiator controls, and road-hauler gear."
  playable_as :chronicle_location
  context_tags :"realm:outer_system"
  subkind :workshop
  type_of :workshop
  function "Rebuilds heat-rated pumps, radiator controls, and road-hauler running gear"
  status :complete
  tags :"outer-system", :trade, :transport, :resonance, :rebuilding
  prominence :marginal

  descriptive_identity(
    setting:
      "A public repair hall on a lower Shadewell terrace, opening " \
      "toward the crater wall and shaded through the full surface " \
      "cycle. Four receiving bays with roof radiators and sand beds " \
      "face the terrace road, belt-driven machine tools fill the " \
      "central room on separate foundations, and the long stone cold " \
      "bench runs beside a water wall for the delicate final fitting.",
    activity:
      "Sealed machines rest on the sand until casing, lubricant, and " \
      "ringglass return all agree with the hall; workers map a heat " \
      "failure's whole chain before touching the part that stopped, and " \
      "rebuild off-world assemblies so a neighboring shop can open " \
      "them. Evening food stalls line the terrace once the outer bays " \
      "cool.",
    access:
      "Anyone can bring work; the owner's marker goes on the cold bench " \
      "and moves inward with the job, so the queue and every argument " \
      "about it happen in public. Visiting engineers are welcome at the " \
      "bench and barred from the receiving bays until they pass the " \
      "local heat drill.",
    hazards:
      "Restricted return lines have machines cooling through more than " \
      "one giant-shade, the terrace road jammed with parked haulers, " \
      "and the lines the cinderbacks tore open jumping every commercial " \
      "job in the queue."
  )

  prose <<~PROSE
    Coldside Bench is a public repair hall on a lower terrace of #{ref :shadewell, "Shadewell"}. It handles pumps, radiator controls, heat-road running gear, and tools brought down from the Keel yards after their field and temperature have settled. The hall opens toward the crater wall and stays shaded through the full surface cycle.

    The name refers to both the terrace and the long stone workbench along its inner wall. Delicate assemblies rest there before opening. Hot work stays in the outer bays.
  PROSE

  prose <<~PROSE, section: :structure, heading: "From Hot Bay to Stone Bench"
    Four receiving bays face the terrace road. Each has a roof radiator, a sand bed, and a drain leading away from the inner rooms. Machinery arrives sealed, rests on the sand, and cools until its casing, lubricant, and ringglass return agree with the hall.

    The central room contains ordinary machine tools driven through separate belts. No two large tools share a foundation. Beyond it, the cold bench runs beside a water wall fed from the managed return. Instrument housings, valve seats, and core frames come there for final fitting.

    Parts waiting for off-world replacements occupy numbered shelves above the bench. Local substitutions occupy open bins below. A repair record names which kind entered the machine.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Ashvane Repairs"
    Heat damage rarely affects one part. A seized bearing changes the shaft, the housing, and the return line that carried its waste heat. Workers map the chain before replacing the piece that stopped moving. A machine reopened without that map often returns with a different failure.

    Off-world assemblies are rebuilt for local service where possible. Seals become replaceable cord. Closed cooling blocks become jointed channels that can be washed. Control housings receive pale exterior plates and handles large enough for heat gloves.

    Port certification requires the rebuilt equipment to match its declared field. Road work cares whether a neighboring shop can repair it. Coldside Bench writes both accounts on the final card and refuses a part that satisfies only the first.
  PROSE

  prose <<~PROSE, section: :people, heading: "The Repair Queue"
    Customers place a marker on the cold bench when their machine enters a bay. The marker moves inward with the work. Its position shows whether the delay is cooling, diagnosis, parts, fitting, or test. Arguments start at the marker rather than at a private office.

    Apprentices rotate between radiator cleaning, sand beds, machine tools, and the water wall. Everyone learns to recognize heat traveling through an assembly before specializing. Visiting engineers are welcome at the bench and kept out of the receiving bays until they pass the local heat drill.

    Evening food stalls gather along the terrace when the outer bays cool. Workers eat beside customers and point at the queue whenever a promise made at the port reaches the workshop in a shorter form.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "Short Returns"
    Shadewell's restriction on two lower workshop return lines has cut the hall's receiving capacity. Machines now cool in the outer bays through more than one giant-shade, filling the road with parked haulers and borrowed radiator frames.

    Cinderbacks damaged three flexible lines while following the cold-store leak beneath the port. Those repairs have priority over commercial work. A Keel crane controller, two road pumps, and a hauler drive remain unopened on the sand while their owners compete for the next safe return slot.
  PROSE

  gm_note :appears, "Work left here gets a marker on the cold bench, and its position says whether the delay is " \
                    "cooling, diagnosis, parts, fitting, or test. Owners argue at the marker in front of everyone " \
                    "else waiting, so an urgent job is public the moment it is asked for."
  gm_note :triggered_by, "Asking for a rebuild certified for the port alone gets the part refused. The hall writes " \
                         "the port account and the road account on the same card and will not fit an assembly that " \
                         "a neighboring shop cannot open."
  gm_note :complicates, "Cooling lines #{ref :keel_yard_herd, "the culvert herd"} tore open outrank commercial " \
                        "work, so a Keel crane controller, two road pumps, and a hauler drive sit unopened on the " \
                        "sand. Machines now cool through more than one giant-shade and the terrace road outside is " \
                        "full of parked haulers."
end

relate :rel_coldside_located_shadewell, :located_in, :coldside_bench, :shadewell do
  prose "Coldside Bench occupies a shaded lower terrace beneath Shadewell's port wards."
end
relate :rel_shadewell_maintains_coldside, :maintains, :shadewell, :coldside_bench do
  prose "The city maintains the public receiving bays, water wall, and repair queue."
end
relate :rel_coldside_resonates_heat_hauler, :resonates_with, :coldside_bench, :third_radiator do
  prose "The hall rebuilds heat-road running gear and holds parked haulers while their assemblies cool."
end
relate :rel_coldside_resonates_keel_yard_herd, :resonates_with, :coldside_bench, :keel_yard_herd do
  prose "Damage from the port's culvert herd has placed public cooling-line repairs ahead of commercial work."
end
