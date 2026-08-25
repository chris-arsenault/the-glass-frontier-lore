culture :shearfolk do
  name "Shearfolk"
  summary "Shearfolk are people raised aboard the salvage ships, claim stations, and route settlements of the Shear, where rescue debts and current charts determine trust."
  playable_as :culture
  origin_blurb "Route crews trade current charts, shared rescue debts, and work names across the Shear."
  subkind :way_of_life
  status :complete
  tags :"social-structure", :salvage, :trade, :transport
  prominence :recognized
  integration "Raised among routes where charts expire and a crew's rescue record determines trust"

  descriptive_identity(
    appearance:
      "Raised to ships and claim stations, Shearfolk show it in the body's " \
      "habits more than its build: a hand that finds the rail or hold " \
      "without looking, a stance set for a deck that might move.",
    attire:
      "Layered for pressure changes and marked at cuffs, knees, and " \
      "shoulders with repair thread visible from across a work bay. A " \
      "replaced panel keeps the color of the crew that fitted it until the " \
      "next complete overhaul.",
    manner:
      "Introductions give a working name, the present vessel or station, and " \
      "the last route the speaker can answer conditions for. Rescue debts " \
      "are recited beside work shares, and a bare name is heard as expired " \
      "charts.",
    hospitality:
      "Anyone the Shear has put in need gets taken aboard — no questions " \
      "before the rescue and few after. Beyond distress, a berth is earned: " \
      "guests state their route and their business, and the bunk follows " \
      "the answer."
  )

  prose <<~PROSE
    Shearfolk are people raised aboard salvage ships, claim stations, and route settlements across the #{ref :the_shear, "Shear"}. A person may spend a childhood moving between crews and still meet familiar hands at Brake, a Compact office, or a deep-route shelter. The shared culture rests on current route knowledge, visible work, and rescue debts that pass from one crew to the next.
  PROSE

  prose <<~PROSE, section: :values, heading: "Crew Credit"
    A crew's standing begins with the people and vessels it has brought home. Claim yield matters, but a rich crew that abandons another ship loses bunks, guides, and buyers. Rescue obligations are recorded beside work shares. A person who transfers crews carries both records.

    Shearfolk introductions name a working name, present vessel or station, and the last route on which the speaker can answer for conditions. Family names remain important in households and inheritance. Work names govern the first exchange because they identify who can confirm a chart, a tow, or a debt.
  PROSE

  prose <<~PROSE, section: :aesthetics, heading: "What Travels"
    Clothing is layered for pressure changes and marked at cuffs, knees, and shoulders with repair thread visible from across a work bay. A replaced panel keeps the color of the crew that fitted it until the next complete overhaul. Tools carry short chains of stamped owners, allowing a borrowed cutter or sounding weight to find its way back across several ports.
  PROSE

  gm_note :triggered_by, "A player who introduces themselves with a name alone gets asked for their vessel and the last route " \
                         "they can answer conditions for. Skipping the route is heard as an admission that their charts have expired."
  gm_note :appears, "Borrowed gear in the party's kit carries a stamped chain of owners, so a bay hand at #{ref :brake, "Brake"} " \
                    "can read a cutter or sounding weight and ask which crew lent it and whether that crew expects it back."
  gm_note :complicates, "A crew that leaves another ship behind loses bunks, guides, and buyers before it loses the claim, and the abandonment stays on the record of everyone who transfers off that crew."
end

relate :rel_shearfolk_inhabit_shear, :inhabits, :shearfolk, :the_shear, since: 2305 do
  prose "Shearfolk culture joins the crews, claim stations, and route settlements spread through the Shear."
end

relate :rel_shearfolk_inhabit_deep_shear, :inhabits, :shearfolk, :deep_shear, since: 2315 do
  prose "Deep crews keep the culture's strictest rescue customs because no fixed authority can reach them in time."
end

relate :rel_shearfolk_inhabit_brake, :inhabits, :shearfolk, :brake, since: 2305 do
  prose "Brake is a common shore leave, repair, and claim-settlement port for independent Shear crews."
end
