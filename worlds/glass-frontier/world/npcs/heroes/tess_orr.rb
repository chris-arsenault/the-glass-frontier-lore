npc :tess_orr do
  name "Tess Orr"
  summary "Tess Orr is a Bay Thirty-One textile washer who maps dirt, repairs, pressure, and resonance before choosing a treatment."
  subkind :specialist
  occupation "Textile trace washer"
  specialty "Recovering signal impressions from layered and repaired cloth"
  species "dwarf"
  culture "Hab-Worlder"
  status :complete
  tags :household, :archives, :"signal-freq"
  prominence :marginal

  prose <<~PROSE
    Tess Orr maps difficult textiles at #{ref :bay_thirty_one, "Thirty-One"}. She reads the order in which a garment accumulated dirt, pressure, repairs, and resonance, then chooses a wash that separates those layers.

    Orr learned on sailcloth, where one careless cycle can erase a route beacon or move it into a later patch. She tests every treatment on thread removed from an existing repair. The test becomes part of the job record and returns to the owner in a small glass tube.

    She first found the repeated voice in the #{ref :red_sleeve, "Red Sleeve"}. Her arrangement of the later garments turns its directions into a continuous route toward Wash Four's sealed axis.
  PROSE

  gm_note :triggered_by, "Orr treats nothing until she has taken test thread out of an existing repair, so a garment with no repair to sacrifice waits while she bargains for one; " \
                         "the tested thread goes back to the owner in a small glass tube."
  gm_note :complicates, "She learned on sailcloth and refuses a wash order that could push a route beacon into a later patch, which puts her against anyone who wants the cloth clean faster than they want it readable."
end

relate :rel_tess_orr_located_in_wash_four, :located_in, :tess_orr, :wash_four, since: 2435 do
  prose "Tess Orr works on Wash Four's difficult textile traces."
end
