creature :perch_circle do
  name "The Perch Circle"
  summary "The Perch Circle is the sarn herd that split from the 2435 passage and remains in a widening orbit around Perch. It sheds mapped combs at every turn while its young hold the spiral's quiet center."
  subkind :animal
  type_of :sarn
  status :complete
  tags :ecology, :resonance, :"kinetic-freq", :orbital
  prominence :recognized

  prose <<~PROSE
    During the current #{encyclopedia_ref :sarn, "sarn"} passage, one herd crossed Perch's far fragment along the recorded route. The other entered a widening circle around the settlement and began shedding combs at every turn.

    The animals keep a stable formation and retain the young near the center. Their repeated circuit carries them through every marked collection band. Perch closes approach lanes as the herd tightens and sends low collection craft beneath the field rather than through it.
  PROSE

  gm_note :appears, "The herd turns up in a lane the charts show as clear, and Perch closes the approach before a crossing vessel sees the spiral."
  gm_note :triggered_by, "A vessel entering the spiral becomes another load in the exchange and is passed toward the outer edge faster than its kite can cancel the turn."
  gm_note :complicates, "Every circuit sheds valuable combs through all the marked collection bands, giving every ward a reason to claim the widening circle should be read in its favor."
end

relate :rel_perch_circle_inhabits_perch, :inhabits, :perch_circle, :perch, since: 2435 do
  prose "The Perch Circle remains around the settlement after splitting from the seasonal passage."
end
