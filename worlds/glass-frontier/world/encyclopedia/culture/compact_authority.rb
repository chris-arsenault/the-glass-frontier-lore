encyclopedia :compact_authority do
  name "Compacts"
  kind :culture
  subkind :collective_standing
  status :complete
  topics :governance, :"social-structure", :trade
  prevalence :uncommon
  available_globally
  summary "Compacts are signed working agreements among parties that share a lane, standard, resource, or hazard. Their rules and protections bind the signatories and the named work until a signature is withdrawn or read out."
  integration "A settlement applies compact rules to the shared work named in its signatures while its territorial government retains authority over the settlement itself"
  formal_register "Compact acts are spoken in the form's own grammar — a rule is 'held' by the signatories, enforcement 'answers to the table', and the gravest sanction is spoken plainly as it works: 'read out', a party's name removed from the agreement it broke"

  descriptive_identity(
    manner: "Compact officers cite the clause and signatories behind each act, " \
            "record objections at the table, and distinguish the shared work " \
            "from matters reserved to each member.",
    appearance: "The instruments of the form: the signed table copies each " \
                "party holds, the compact's mark on what it governs — lane " \
                "buoys, standard stamps, cordon posts — and the meeting " \
                "tables themselves, sized to the signatures.",
    hospitality: "A compact's table hosts its members as equals whatever " \
                 "their size — the smallest signatory speaks in the same " \
                 "order as the greatest — and guests attend by invitation " \
                 "with voice and a seat at the wall, the form's old way of " \
                 "growing."
  )

  prose <<~PROSE
    A compact names shared work and the parties empowered to govern it. The #{ref :shear_compact, "Shear Compact"} holds lanes, salvage rules, and escort standards across the debris field. Smaller route compacts set one road's tolls and maintenance; standards compacts place a common stamp on goods; district water accords schedule one aquifer. Each signatory keeps a table copy, and the compact marks its work on lane buoys, stamps, cordon posts, or valves.

    Recovered #{encyclopedia_ref :elves, "elven"} charters supplied many of the table forms, including equal speaking order and a copy for every member. Modern compacts renew their authority through continued signatures. Fines and suspensions enforce ordinary rules. Reading out removes a party's name from every table copy and closes the compact's protections, standards, and meetings to that party. Withdrawal also narrows the compact: the remaining signatures can govern the named work among themselves but cannot carry the departing member's jurisdiction with them.
  PROSE

  cue "The dispute lands at the compact table and the smallest signatory speaks in order, same as the greatest — a two-barge water accord and a fleet company answering the same clause, in the form's own grammar."
  cue "At a reading-out, the clerk speaks the name, amends the signature page, and corrects every table copy before the former member's routes are repriced."
  affordance "A compact lets several jurisdictions enforce one set of rules on a shared lane, standard, resource, or hazard."
  pressure "Every withdrawal narrows the rules, protections, and enforcement the remaining table can provide, so members regularly renegotiate the cost of staying signed."
  variation "The great compacts hold system-scale writs with standing enforcement; route and standards compacts govern one shared thing each; and the district accords run the same form at a scale where the table is somebody's kitchen."
  variation "Compact marks are the form's public face — lane buoys, standard stamps, accord seals — and traders learn to read a route's governance from its markings the way pilots read waters from their lights."
end
