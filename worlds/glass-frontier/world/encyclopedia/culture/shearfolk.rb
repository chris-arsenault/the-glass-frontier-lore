encyclopedia :shearfolk do
  name "Shearfolk"
  summary "Shearfolk are people raised aboard the salvage ships, claim stations, and route settlements of the Shear, where rescue debts and current charts determine trust."
  kind :culture
  character_role :culture
  origin_blurb "Route crews trade current charts, shared rescue debts, and work names across the Shear."
  subkind :cultural_identity
  status :complete
  topics :"social-structure", :salvage, :trade, :transport
  prevalence :common
  appears_when all: { place: [:debris_field] }
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

  cue "A Shearfolk introduction gives a working name, the present vessel or station, and the last route whose conditions the speaker can answer for."
  cue "Clothes show repair thread at cuffs, knees, and shoulders, while tools carry stamped chains of owners across several ports."
  affordance "A current route, rescue record, or ownership chain identifies who can confirm a chart, a tow, a debt, or a borrowed tool."
  pressure "A crew that abandons another ship loses bunks, guides, and buyers, and every person transferring away carries the abandonment on their record."
  variation "Shearfolk grow up aboard salvage ships, at claim stations, and in route settlements, often moving between several crews."
  variation "Family names govern households and inheritance, while working names change with the vessel or station that can answer for a person's work."

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
