npc :ma_renqing do
  name "Ma Renqing"
  tags :trade, :medicine, :symbiosis
  prominence :marginal

  prose <<~PROSE
    Senior inspector at #{ref :yumen_gate, "Yumen Gate"}, Hui, from a Zhangye family that has held posts on this road since before the corridor was a border. She rules on every contested reading at the station and has done for #{elapsed future: "Ma Renqing takes the senior inspector's post at Yumen", about: 9, approx: true}.

    What she can read is a garment: dry weight against wet, seam wear, how a collar sits on a neck that has been colonized and one that has not, whether a #{ref :gate_moss, "plate"} went black from the front or from the edge. She holds one of the two case-room keys and calibrates the balance against the Jiayuguan reference herself rather than sending a deputy.
  PROSE

  prose <<~PROSE, section: :people, heading: "How She Works"
    She keeps a working card on every contested crossing, separate from the station's weight record. The cards track patterns across cases: which lineages come through thin, which convoy masters arrive with travellers who have all been dressed that morning, which beds were pulled early and what their cards looked like afterwards.

    Her standing instruction to her inspectors is that a card records weights and never manner. She enforces it, and the reason she gives is that an inspector who starts reading faces starts finding what they expect.
  PROSE

  prose <<~PROSE, section: :perception, heading: "Upstream Of The Seal"
    The station audits the strains it grows. Everything upstream of a sealed shipment arrives on paper, and Ma tells travellers that before she weighs it.

    The #{ref :the_weighing, "Weighing"} cannot show whether the #{ref :the_great_root, "Great Root"} has already had what a garment carried. It reads tissue and Ma does not pretend otherwise; a westbound traveller can pass clean on both weights having handed over a month of their life the week before.

    Couriers ask whether the work makes her a collaborator. #{ref :yao_lin, "Yao Lin"} has asked eleven times. Ma gives the same answer each time: the station judges what crosses its floor, not the government that sent it.
  PROSE
end
