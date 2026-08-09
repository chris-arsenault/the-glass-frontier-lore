npc :sun_yilan do
  name "Sun Yilan"
  tags :autonomy, :medicine, :symbiosis
  prominence :marginal

  prose <<~PROSE
    The textile steward for the separation rooms at #{ref :mulberry_court_clinic, "Mulberry Court Clinic"}. Sun Yilan checks living margins, keeps removed garments viable and grafts them back when their wearers return from #{ref :separation_leave, "separation leave"}. Her patients usually call her Sun-shifu; the clinic roster calls her a symbiosis maintenance worker, grade four.
  PROSE

  prose <<~PROSE, section: :people, heading: "What She Records"
    Sun reads temperature, blood chemistry, sleep, inflammation and the colour of a garment's cut edge. She asks whether the citizen still wants the room immediately before she cuts. If the answer is yes, she writes *purpose withheld* and begins the baseline without asking for a different answer.

    Her responsibility is to prevent a week of solitude from becoming an untreated infection, a missed meal or a failed graft. A citizen who declines every question about the decision but keeps the two daily checks is receiving care by her measure. Her ledger contains more early returns than full weeks, and records both as completed leave.

    At the end she records the condition of the body and the garment; the municipal clerk records any action the citizen asks the city to take. Her card for #{ref :peng_meizhen, "Peng Meizhen"} supplies the clinical record of #{ref :the_fifth_room_week, "the Fifth-Room Week"}.
  PROSE
end
