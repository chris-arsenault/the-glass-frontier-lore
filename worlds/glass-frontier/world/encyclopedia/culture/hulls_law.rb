encyclopedia :hulls_law do
  name "The Hull's Law"
  kind :culture
  subkind :collective_standing
  status :complete
  topics :governance, :"social-structure", :"ring-hab", :diplomacy
  prevalence :common
  available_globally
  summary "The hull's law is the principle that the institutions maintaining a habitat's air, water, and civil order govern that hull. Wider bodies enter its law through treaty, compact, adoption, or the visitor's oath at the lock."
  integration "Compacts, accords, and trade law bind a habitat through its own acts as a signatory or adopter; external delegations petition the council or office named in the posted hull law"
  formal_register "The principle is invoked in its old formula, 'the hull's law is the hull's'; formal contact uses petitions to enter, received delegations, and a visitor's oath sworn at the lock for the duration of the stay"

  descriptive_identity(
    manner: "Hab institutions post their law at the lock, receive petitions " \
            "through the named council or office, administer the visitor's " \
            "oath, and seal acts that cross the hull boundary.",
    appearance: "The visible instruments: the hab's law posted at the lock, " \
                "the visitor's oath tablet worn smooth by hands, the council " \
                "seal on everything that crosses the hull in either " \
                "direction.",
    hospitality: "Sovereignty's hospitality is the lock oath's exchange — the " \
                 "visitor swears to the hull's law and the hab owes the " \
                 "visitor its law's full protection, a bargain struck at " \
                 "every airlock in the system in more or less the same " \
                 "words."
  )

  prose <<~PROSE
    The Glassfall left each surviving habitat responsible for its own air, water, heat, and order. During #{elapsed :the_glassfall, :the_rekindling} of isolation, the councils, charters, courts, and shipboard offices that kept those systems became the hull's government. The resulting principle is stated at civics age and at every formal dispute: *the hull's law is the hull's*.

    Reconnection preserved that authority. #{encyclopedia_ref :compacts, "Compacts"} bind habitats that sign them; Accord obligations bind members through their own institutions; ports apply trade rules they adopt. A visitor reads the posted law at the lock, swears the local oath, and receives the hull's protection for the stay. Delegations submit petitions to the named council, whether the destination is a forty-berth fragment or a city-hab. Emergency aid uses rescue conventions that record the host authority and the scope of entry, keeping assistance distinct from occupation.
  PROSE

  cue "The delegation waits at the lock while the forty-berth fragment's council reads the petition, exchanges oath tablets, and records the fleet captain's entry."
  cue "The visitor swears the lock oath to a law posted in a dialect three fragments removed from home, and from that breath holds the hull's full protection — the bargain struck in more or less these words at every airlock in the system."
  affordance "Every habitat presents a legal partner able to sign compacts, receive delegations, administer visitor oaths, and settle disputes through named institutions."
  variation "Constitutions vary wildly under the one principle — councils, charters, hereditary locks, ship's-law hulls — and the lock oath's local wording is the first thing a traveled factor learns to recite in each port's own form."
  variation "Small habitats often keep the fullest lock formalities because petitions, oath records, and council seals establish their authority to larger neighbors."
end
