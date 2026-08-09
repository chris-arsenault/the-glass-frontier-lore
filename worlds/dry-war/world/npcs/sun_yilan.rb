npc :sun_yilan do
  name "Sun Yilan"
  tags :autonomy, :medicine, :symbiosis
  prominence :marginal

  prose <<~PROSE
    The textile steward for the six western rooms at #{ref :mulberry_court_clinic, "Mulberry Court Clinic"}. Sun Yilan cuts living garments from people who want a week outside the neighbourhood network, keeps the garments viable in shallow basins and grafts them back when their wearers return. Her patients call her Sun-shifu; the clinic roster calls her a symbiosis maintenance worker, grade four.
  PROSE

  prose <<~PROSE, section: :people, heading: "At The Western Wall"
    Sun reads temperature, blood chemistry, sleep, inflammation and the colour of a garment's cut edge. Immediately before she cuts, she asks whether the person still wants the room. A yes begins the work; a no sends the garment and its wearer home together.

    She watches for infection, missed meals and a graft beginning to fail. Her ledger contains more early returns than full weeks. She counts a return as care received, not a failed attempt at solitude.

    #{ref :peng_meizhen, "Peng Meizhen"} stayed all seven days in Room Five. Sun seated her garment on the first attempt, then stopped when a trolley cracked the room numeral and checked the dry space behind the tile before she continued.
  PROSE
end
