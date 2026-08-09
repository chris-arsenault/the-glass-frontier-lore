npc :yao_lin do
  name "Yao Lin"
  tags :resistance, :legitimacy, :trade
  prominence :marginal

  prose <<~PROSE
    A #{ref :the_preservationists, "Preservationist"} courier on the western run, carrying #{ref :memory_ceramics, "memory ceramics"} eastbound for copying and archive requests westbound. She crosses at #{ref :yumen_gate, "Yumen Gate"} eight or nine times a year and has done since she was nineteen.

    She refuses the #{ref :gate_moss, "plate"}. Every crossing she pays the scraping surcharge, waits the extra hour, and files a written objection stating that a living organism pressed to her skin is a connection whatever the organism can do. The station's file of her objections runs to eleven.
  PROSE

  prose <<~PROSE, section: :people, heading: "The Objection"
    The text barely changes between crossings. It cites the enclave statute on bodily contact with network-descended organisms, notes that the statute has no force at Yumen and that she is filing anyway, and asks the receiving inspector to state in reply whether the station considers itself bound by any law it did not print.

    #{ref :ma_renqing, "Ma Renqing"} has never replied and has never lost one. Yao Lin knows both facts and has said that the second matters more, which is the closest thing to an accommodation either of them has reached.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "What The Run Costs Her"
    The surcharge is four times the plate and she pays it out of a courier's allowance, which means she crosses hungry and the intake-hall traders know it. Her own people are divided on whether the objections are discipline or vanity — the Gobi settlements that receive her cargo fund the surcharge without discussing it, and the archive clerks who receive her paperwork have twice asked her to stop generating documents that require filing on both sides of a border.

    She carries no severed strain of her own, which makes her slower to heal than most couriers on the run and is the single thing about her that #{ref :ma_renqing, "Ma Renqing"} has never been able to account for.
  PROSE
end
