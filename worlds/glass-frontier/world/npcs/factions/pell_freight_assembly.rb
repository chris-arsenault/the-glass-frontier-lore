faction :pell_freight_assembly do
  name "Pell Freight Assembly"
  summary "The Pell Freight Assembly is a Glasswake-based, member-owned network of freight crews, repair yards, claim brokers, and cargo cooperatives."
  playable_as :allegiance
  origin_blurb "Independent carriers pool bulk cargo, equipment, and risk across the outer Pell routes."
  subkind :trade_network
  type_of :working_mutuals
  belongs_to :culture, :infrastructure_authority
  founded 2416
  tags :trade, :transport, :salvage, :resonance, :"social-structure"
  prominence :recognized

  descriptive_identity(
    ideology:
      "Working crews should own their own network: one member, one vote, " \
      "however many vessels the member runs, and lenders never sit the " \
      "route council. Whoever will bear the cost of a decision speaks " \
      "before anyone votes on it, and a debt like Pell Four belongs to the " \
      "members, not to anyone else.",
    methods:
      "Five elected route factors publish schedules, set the common safety " \
      "rules, and decide which losses the pooled fund covers; they cannot " \
      "order a member ship to fly, only withhold docks, insurance, and " \
      "freight access until the argument settles. Cargo dues and work " \
      "credits pay for the network — a crew short of cash takes " \
      "maintenance watches, rescue standby, or an empty return leg.",
    presence:
      "Flight crews, yards, cargo hands, claim operators, and resonance " \
      "staff working shared receiving yards and freight junctions on the " \
      "Pell approaches. A meeting runs like a claim board: hazard named " \
      "first, price second, the person accepting the risk on their feet " \
      "before the vote. Since the Emergence, every remote array clock in " \
      "the network runs separately and the on-site Tuner can stop the " \
      "work alone.",
    attitude:
      "Outside money may lend to the Assembly and will never vote in it. " \
      "When Pell Four came, it did not argue jurisdiction — it closed the " \
      "affected routes, surrendered its array records, and put its repair " \
      "crews under Displacement Council direction until the boundary was " \
      "gone."
  )

  prose <<~PROSE
    A member-owned freight and extraction network based in #{ref :glasswake, "Glasswake"}. Its voting shares belong to working crews, repair yards, claim brokers, and cargo cooperatives. A member may own several vessels but holds one vote. Outside investors can lend to the Assembly but cannot sit its route council.

    The Assembly moves bulk freight through the outer Pell routes and equips remote claims in the #{ref :deep_shear, "Deep Shear"}. It grew large enough to run industrial arrays while retaining the habits of people who expect to meet the crew that bears the cost of a decision.
  PROSE
  prose <<~PROSE, section: :history, heading: "Formation"
    The first members organized during the #{ref :the_bitter_reach, "Bitter Reach"}, when freight contracts were being broken faster than independent crews could price the risk. They pooled replacement parts, guaranteed one another's cargo losses, and set a common refusal rate for routes that lacked rescue coverage. The arrangement survived the fighting because it solved ordinary problems after the emergency ended.

    Claim brokers joined next, followed by #{encyclopedia_ref :ratters, "Ratter"} crews who wanted access to heavy receiving bays without selling their claims. The Assembly financed shared yards at Glasswake and a line of freight junctions on the Pell approaches. Members pay for the network through cargo dues and work credits. A crew that cannot meet a cash call can take maintenance watches, rescue standby, or an empty return leg instead.
  PROSE
  prose <<~PROSE, section: :structure, heading: "The Route Council"
    Each class of work elects a route factor: flight crews, yards, cargo hands, claim operators, and resonance staff. The five factors publish schedules, set the common safety rules, and decide which losses the pooled fund will cover. They cannot order a member ship to fly. They can refuse it Assembly docks, insurance, and freight access, which usually settles the argument.

    #{ref :daro_venn, "Daro Venn"} is the current senior factor. He came out of Ratter brokerage and still conducts meetings like a claim board: the hazard is named first, the price second, and the person accepting it speaks before anyone votes.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Pell Work"
    The Assembly's Deep Shear business is built around #{encyclopedia_ref :remote_cutting, "Claim Coupling"}. Member coupling crews work unstable seams; shared receiving yards sort the returns; heavy haulers take separated cargoes inward. The system reduces exposure and gives small crews access to processing capacity they could not finance alone.

    Its weakness is coordination. Shared clocks keep berths and haulers moving, and pooled losses reward uniform procedure. At #{ref :pell_cut, "Pell Cut"}, the Assembly extended that discipline to four extraction arrays. The synchronized test triggered #{ref :pell_four, "Pell Four"}.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "After the Emergence"
    The Assembly closed the affected routes, surrendered its array records, and put its repair crews under #{ref :displacement_council, "Displacement Council"} direction until the boundary was gone. Members voted to keep Daro in office after a long open meeting at Glasswake. They also separated every remote array clock in the network and gave on-site #{encyclopedia_ref :tuners, "Tuners"} independent stop authority.

    Pell remains expensive. The pooled fund pays cordon costs, interrupted contracts, and the crews who dismantle the synchronized equipment. Members argue over how long those payments should continue. They do not dispute that the debt belongs to them.
  PROSE

  gm_note :triggered_by, "Someone eventually asks the Assembly to send a ship or order a crew somewhere. The five route factors cannot direct a member vessel; they can withhold docks, insurance, and freight access, so the pressure reaches a member through the ledger rather than through an order."
  gm_note :appears, "A crew that cannot meet a cash call at a Pell yard is offered work credit instead: maintenance watches, rescue standby, or an empty return leg. Rescue standby is a real obligation and it gets called in at the yard's convenience."
  gm_note :complicates, "#{ref :daro_venn, "Daro Venn"} runs Assembly meetings like a claim board, naming the hazard first, the price second, and letting the person who will carry the risk speak before anyone votes. Players who want the decision made for them have to stand up and say what they are accepting."
end

relate :rel_pell_assembly_hq_glasswake, :headquartered_in, :pell_freight_assembly, :glasswake, since: 2416 do
  prose "The Assembly keeps its route council and common yards in #{ref :glasswake, "Glasswake"}, close to Ratter brokers and the inward freight lanes."
end
relate :rel_pell_assembly_maintains_pell_cut, :maintains, :pell_freight_assembly, :pell_cut, since: 2428 do
  prose "It built and maintains the shared receiving yards at #{ref :pell_cut, "Pell Cut"}."
end
relate :rel_pell_assembly_maintains_heavy_haulers, :maintains, :pell_freight_assembly, :steady_return, since: 2416 do
  prose "Its member yards maintain *Steady Return* for the Pell routes."
end
relate :rel_pell_assembly_participated_in_pell_four, :participated_in, :pell_freight_assembly, :pell_four do
  prose "The Assembly financed the synchronized array test that caused Pell Four and supplied the crews that helped close it."
end
