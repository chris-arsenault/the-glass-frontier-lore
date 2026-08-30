encyclopedia :keel_hook_car do
  name "Keel Hook-Car"
  kind :technology
  subkind :transport
  status :complete
  topics :transport, :"ring-era", :trade, :orbital
  prevalence :uncommon
  appears_when any: { place: [:road, :dock] }
  summary "A keel hook-car is a freight car that rides the Keel's own structure — hooked onto the elven trunk rails by articulated arms and drawn along by the route's standing drift. Hook crews ride the system's spine on hardware the spine was built to carry."
  function "Carries freight along the Keel's trunk structure on articulated hook arms, drawn by the route's standing drift"
  classes "Single-hook couriers, the four-arm freight standard, and married pairs that swing heavy loads between them"
  capacity "A four-arm standard carries two pallet masses and a riding crew of three; married pairs rate by the swing"
  operating_limit "A hook-car goes where the trunk rails go and holds at every junction for the signal; its pace is the drift's pace, and the drift answers to the Keel"

  descriptive_identity(
    appearance: "A slab-sided freight car slung under articulated hook arms, each arm ending in " \
                "the polished elven hook-head that grips the trunk rail's rolled lip. Working " \
                "cars are painted in route colors below and left bare metal above, where the " \
                "arms do their slow deliberate walking.",
    working: "The arms hook, release, and re-hook along the rail in overlapping sequence, so " \
             "the car is always held twice while it walks — and once hooked into a drift " \
             "section, the route itself draws the car along while the crew rides and watches " \
             "the junctions.",
    risks: "The hooks were made for the rail and the rail for the hooks, and the pairing is " \
           "the safety case: a worn hook-head re-cut by a local shop grips a shade " \
           "differently, and the trade's accident ledger is largely a ledger of shade " \
           "differences."
  )

  prose <<~PROSE
    The #{ref :keel, "Keel"} is the system's trunk route, and its elven structure carries more than berths and moorings: the trunk rails — rolled-lip guideways running the route's length — were built for traffic, and the hook-car is the traffic that still rides them. A hook-car is a slab-sided freight carrier slung under articulated arms, each ending in a polished hook-head shaped to the rail's lip. The arms walk: hook, release, re-hook in overlapping sequence, the car always held twice, and where the route carries standing drift the crew hooks in and lets the Keel itself draw the load along while they ride and mind the junctions.

    Hook freight is the steady stratum of Keel trade — slower than a kite, cheaper than anything else per pallet, and running in weather and band conditions that ground the fast traffic. The cars queue at junction holds by signal, walk the dead sections arm over arm, and make the drift sections in long silent glides that crews describe with the affection reserved elsewhere for a following current. Route colors mark each car's circuit, married pairs swing the heavy loads between them on shared arms, and the great terminal at #{ref :keelward, "Keelward"} sorts arriving hook traffic into the surface yards on a board the freight clerks read like tide tables.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Hook-Heads and the Pattern Shops"
    The hook-head is the trade's crown jewel and its whole risk concentrated in one casting. Original elven heads grip the rail with a surety the crews trust at any load; worn heads must be re-cut, and a re-cut head grips a shade differently — the accident ledger's recurring phrase — so the pattern shops that re-cut heads to the old gauges hold licenses, references, and reputations of jeweler's-shop delicacy. A car's head provenance rides in its papers, junction inspectors read heads the way farriers read hooves, and an unpapered head parks the car at the next hold with freight law's full sympathy.

    Crews ride in threes: the leader on the signals, the arm hand on the walking gear, the third on load and papers. The trade's culture is the Keel's own — patient, schedule-proud, contemptuous of hurry — and its settled ambition is the clean run: a full circuit with every junction taken on signal, every hook on the count, logged in the book with the small mark that other hook crews notice and outsiders miss.
  PROSE

  cue "Overhead, a slab-sided car walks the trunk rail arm over arm with unhurried double grips, then reaches a drift section, hooks in, and slides away in a long silent glide."
  cue "At the junction hold the inspector runs a thumb over each polished hook-head like a farrier checking hooves, and waves the car through with a chalk mark on the lead arm."
  affordance "Hook freight moves pallet loads the length of the Keel in any weather the route itself survives, at prices that set the floor for the whole corridor — and a hooked-in car rides the drift with its crew resting."
  pressure "The whole safety case lives in the hook-and-rail pairing, so a worn or re-cut head is a papered, inspected, argued-over object — and a car with doubtful heads sits at the hold while its cargo's schedule burns."
  variation "Single-hook couriers run light and fast between near junctions; married pairs swing the heavy loads on shared arms and crew like one vessel with two hulls."
  variation "Pattern shops re-cut heads to the old gauges under license, and crews rank the shops in a connoisseurship exactly as fierce as the ropery-mark loyalties of the rigging trades."
end
