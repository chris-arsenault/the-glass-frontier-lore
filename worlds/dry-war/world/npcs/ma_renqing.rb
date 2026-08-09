npc :ma_renqing do
  name "Ma Renqing"
  tags :trade, :medicine, :symbiosis
  prominence :marginal

  prose <<~PROSE
    Senior inspector at #{ref :yumen_gate, "Yumen Gate"}, Hui, from a Zhangye family that held posts on this road before the corridor became a border. She has run the eastbound hall for #{elapsed future: "Ma Renqing takes the senior inspector's post at Yumen", about: 9, approx: true}.

    Ma reads garments: dry weight against wet, seam wear, how a collar sits on a colonized neck, whether a #{ref :gate_moss, "plate"} blackened from the swab or from contamination at its edge. She holds one of the two case-room keys and calibrates the balance against the Jiayuguan reference herself.
  PROSE

  prose <<~PROSE, section: :people, heading: "How She Works"
    She keeps a card for every crossing where the scale and the moss disagree. Over time they show which lineages arrive thin, which convoy masters dress every traveller on the morning of inspection, and which clinic beds began giving uncertain stains before anyone removed them.

    The cards record weights and growth, never manner. Ma considers suspicion based on a face more dangerous than a questionable plate because the first cannot be tested again.
  PROSE

  prose <<~PROSE, section: :perception, heading: "The Tissue At The Gate"
    The station can detect living fungus on a traveller. It cannot show whether the #{ref :the_great_root, "Great Root"} already received what that fungus carried. Someone can pass clean in both directions after giving the network a month of memory the week before.

    #{ref :yao_lin, "Yao Lin"} calls Ma a collaborator because her inspections make trade with the fungal civilization possible. Ma says the gate judges the tissue crossing its floor, not the government that sent it. They have worked the same road for years without settling the argument.
  PROSE
end
