culture :shearfolk do
  name "Shearfolk"
  playable_as :culture
  origin_blurb "Route crews trade current charts, shared rescue debts, and work names across the Shear."
  subkind :way_of_life
  status :complete
  tags :"social-structure", :salvage, :trade, :transport
  prominence :recognized
  integration "Raised among routes where charts expire and a crew's rescue record determines trust"

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
