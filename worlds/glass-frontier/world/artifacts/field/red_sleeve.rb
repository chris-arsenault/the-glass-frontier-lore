artifact :red_sleeve do
  name "The Red Sleeve"
  subkind :instrument
  function "Provides a stable textile trace for field comparison and wash calibration"
  status :complete
  tags :household, :archives, :mystery, :"signal-freq"
  prominence :marginal

  prose <<~PROSE
    A faded pressure coat left the Red Sleeve at #{ref :wash_four, "Wash Four"}: one arm carrying tool abrasion, salt, three repair marks, and a speaking voice from cuff to shoulder.

    Trace washers use it to calibrate portable paddles. A good reading recovers the voice at the cuff, the second owner's engine rhythm at the elbow, and the third owner's route beacon near the shoulder seam. The coat's ringglass mordant holds the layers apart, although every training wash weakens the quiet words first.

    Tess Orr found the same voice in later garments whose materials and histories differ from the sleeve.

    Played in wash order, those short phrases become directions through Wash Four's clean route. Several later garments carry a stronger voice than their treatment history permits, making the sleeve a limit on the evidence as well as its comparison piece.
  PROSE

  gm_note :triggered_by, "Every calibration a party asks for costs the sleeve something: the reading recovers the voice at the cuff, an engine rhythm at the elbow " \
                         "and a route beacon near the shoulder seam, and it strips the quiet words a little further each time."
  gm_note :complicates, "The sleeve fixes how fast a genuine trace should decay, so measuring a promising find against it usually disqualifies the find rather than confirming it."
end

relate :rel_wash_four_possesses_red_sleeve, :possesses, :wash_four, :red_sleeve, since: 2435 do
  prose "Wash Four keeps the Red Sleeve as a calibration piece in Thirty-One."
end
