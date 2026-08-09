npc :yao_lin do
  name "Yao Lin"
  tags :resistance, :legitimacy, :trade
  prominence :marginal

  prose <<~PROSE
    A #{ref :the_preservationists, "Preservationist"} courier on the western run. She carries #{ref :memory_ceramics, "memory ceramics"} east to the copying houses and brings archive requests back, eight or nine crossings a year at #{ref :yumen_gate, "Yumen Gate"} since she was nineteen, and she has never lost a piece.

    At the gate she asks for the scraping read, pays the surcharge for it out of a courier's allowance, waits the extra hour in the drying shed, and files a written objection while she waits. The station holds eleven of them.
  PROSE

  prose <<~PROSE, section: :people, heading: "The Objection"
    The text barely changes between crossings. It cites the enclave statute on bodily contact with network-descended organisms, notes that the statute has no force at Yumen and that she is filing anyway, and asks the receiving inspector to state in reply whether the station considers itself bound by any law it did not print.

    #{ref :ma_renqing, "Ma Renqing"} returns the same answer on each objection: Yumen is bound by the crossing rules it prints, not by an enclave statute. She has also never lost one of Yao's pieces. Yao considers the second fact more important.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "What The Run Costs Her"
    The surcharge is four times the plate and she pays it out of a courier's allowance, which means she crosses hungry and the intake-hall traders know it. Her own people are divided on whether the objections are discipline or vanity. The Gobi settlements fund the surcharge as a cost of keeping courier bodies away from living plates; archive clerks call the repeated paperwork vanity.

    She carries no severed strain of her own because Preservationist teaching treats one as mutilated fungal tissue. She heals more slowly than most couriers on the run and accepts the difference.
  PROSE
end
