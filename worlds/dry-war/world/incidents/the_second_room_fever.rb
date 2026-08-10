incident :the_second_room_fever do
  name "The Second-Room Fever"
  subkind :operational_failure
  tags :medicine, :autonomy, :symbiosis, :legibility
  prominence :forgotten
  date 2086

  prose <<~PROSE
    Three occupants of Room Two at #{ref :mulberry_court_clinic, "Mulberry Court Clinic"} ran fevers on the third or fourth day of their disconnected weeks in the autumn of 2086. All three showed inflammation where their living garments had been cut away. #{ref :sun_yilan, "Sun Yilan"} ended two stays early and rejoined all three garments without loss.

    The municipal health record counted all three fevers as injuries caused by the cut. It had no date for medicine taken before the room closed.
  PROSE

  prose <<~PROSE, section: :course, heading: "The Drug Histories"
    The district's clinical committee proposed closing the western rooms to anyone on a course of medication. Most Joined adults receive some continuous treatment, so the change would have closed the rooms to most of the district. Its figures showed three fevers in six stays and omitted when the three patients had taken their last doses.

    Two had finished a five-day antimicrobial on the day before entering Room Two. The third had stopped an antipyretic four days before the cut; half of each dose remained in the body for nine days. Their connected garments also held the previous fortnight's readings, which showed the same range of inflammation before any of them entered the room.
  PROSE

  prose <<~PROSE, section: :aftermath, heading: "Five Half-Lives"
    The committee withdrew its proposal. Western-room cards now record the last dose of every medicine and rule off the early readings with a blue diagonal. Staff compare them only after five half-lives have passed, the same interval the connected wards already used.

    The municipal total for 2086 still includes the three fevers as injuries caused by the cut. Sun's paper ledger records three completed stays and the earlier drug histories beside them.
  PROSE
end
