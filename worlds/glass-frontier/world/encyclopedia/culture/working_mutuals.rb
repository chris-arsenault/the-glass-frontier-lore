encyclopedia :working_mutuals do
  name "Mutuals"
  kind :culture
  subkind :collective_standing
  status :complete
  topics :"social-structure", :household, :trade
  prevalence :common
  available_globally
  summary "Mutuals are member-run societies that pool dues against injury, loss, tool ruin, burial costs, and failed seasons. Elected officers keep open claim tables, shared tool libraries, and benefit books read alongside licenses at hiring halls."
  integration "Trade mutuals and district mutuals operate inside the working halls; many workers pay payroll dues to one of each and use reciprocity agreements when traveling"
  formal_register "Mutual business keeps its plain old forms — a member 'stands paid' or 'stands owed', a claim is 'brought to the table', and an accepted claim is entered the same way in every hall: 'the mutual answers'"

  descriptive_identity(
    manner: "Mutual officers hear claims at open tables, balance the book aloud " \
            "at the season meeting, and deliver the treasurer's report to a " \
            "room whose members may interrupt with a ledger question.",
    appearance: "The mutual's book and box — ledger and strong-chest kept " \
                "together, two keys held by two officers — the tool library's " \
                "racks with the members' chalk-marks, and the hall wall's " \
                "roll of names the fund has answered for.",
    hospitality: "A traveling member of a sister mutual eats at the hall " \
                 "table and draws the tool library on their home book's " \
                 "standing — the reciprocity agreements between mutuals " \
                 "being, for the working trades, what letters of standing " \
                 "are for the counting houses."
  )

  prose <<~PROSE
    Members pay dues against injury, loss, tool ruin, burial costs, and a failed season. They elect officers at the season meeting, bring claims to an open table, and interrupt the treasurer's public reading of the book when a figure needs explanation. The mutual keeps a tool library with member chalk marks, widow and orphan shares, a burial fund, and a wall roll naming the people for whom the fund has answered. Two officers hold separate keys to the book and strong-chest.

    A member who *stands paid* has current dues, honest claims, and completed work turns. Hiring halls read that entry beside the worker's license. Reciprocity agreements let a traveler eat at a sister hall and draw tools on the home book's standing. Mutual investments also support district lending under the #{encyclopedia_ref :lending, "banking customs"}. On answering day, members read the wall roll, dress the racks with flowers, and teach new members the sentence written beside an accepted claim: *the mutual answers*.
  PROSE

  cue "The claim is brought to the open table, the injury named, the witnesses heard, and the book consulted; the treasurer enters the decision: *the mutual answers*."
  cue "The traveling cutter presents her home book at a strange hall, stands paid three districts away, and draws the tool racks and the supper table on the reciprocity page's word."
  affordance "Current dues give a member injury and burial benefits, access to pooled tools, and reciprocal standing at affiliated halls."
  variation "Trade mutuals pool by craft and district mutuals by neighborhood, most workers belonging to one of each; the great federated mutuals of the dock trades run reciprocity across the whole system, and their season meetings fill halls."
  variation "The answering day's forms vary by hall — the roll read, the racks dressed, the new members shown the wall — and the institution's oldest sentence travels intact through every dialect the trades speak."
end
