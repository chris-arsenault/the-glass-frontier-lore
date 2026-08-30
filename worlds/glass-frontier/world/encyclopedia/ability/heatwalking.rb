encyclopedia :heatwalking do
  name "Heatwalking"
  summary "Heatwalking is an Ashvane yard-crossing skill that reads dangerous pressure shimmer through the soles of insulated boots — the walker feels the ground's heat load as texture underfoot and routes across a live yard on the strength of it. The skill grew in the Famine yards and the hot trades certify it like rigging."
  kind :ability
  subkind :technique
  status :complete
  topics :danger, :training, :"outer-system"
  prevalence :uncommon
  appears_when all: { place: [:hot, :yard] }
  function "Reads ground heat and pressure shimmer through boot soles to route safely across hot working ground"

  descriptive_identity(
    signs: "The walker crosses a shimmering yard in a line that ignores the painted paths, " \
           "weight rolling heel to toe with a tester's deliberation, and stops occasionally " \
           "with full weight on one foot, reading, before choosing the next stride.",
    effect: "Hot ground telegraphs its load through the soles — the fine buzz of pressure " \
            "shimmer, the dead give of a softening crust, the crisp answer of sound plate — " \
            "and a certified walker builds a live map of the yard from footfall to footfall.",
    limits: "The reading is only as current as the last step, so walkers move continuously " \
            "or stand on proven ground — and the boots are half the instrument, resoled to " \
            "spec and broken in personally, with a borrowed pair read as a borrowed ear."
  )

  prose <<~PROSE
    Ashvane's working yards run hot enough that the ground itself is machinery — heat mains, buried returns, crusts over live channels — and the yards' answer is a skill worn like a certification badge. Heatwalking reads the ground through the boots. Pressure shimmer arrives through an insulated sole as a fine buzz, a softening crust as a dead sponginess, sound plate as a crisp answer, and a walker crossing a yard is running a continuous underfoot survey, weight rolled heel to toe, each stride placed on the last one's evidence. The painted paths mark where the ground was sound at the last formal survey; the walker knows where it is sound now, and the difference is the trade.

    The skill was born in the Famine years, when the shielded crossings failed with everything else and the yards still had to be crossed, and its teaching keeps the era's economy: learners walk behind a certified walker, boot to bootprint, for seasons before walking point. Certification is a walked examination over a course the examiners have salted — a soft patch here, a masked live line there — and the hot trades treat the badge as they treat a rigger's ticket: yards post walker requirements at the gate, insurers price them, and 'walker first' is the standing order for any crossing off the painted paths. The boots complete the instrument. Soles resoled to trade spec, broken in by their owner, retired ceremonially when the feel goes — a walker's stacked dead soles are the trade's service stripes, and yard walls display them.
  PROSE

  cue "A figure crosses the shimmering yard in a line that ignores the painted paths, rolling each step heel to toe, and pauses mid-yard with all weight on one boot, reading."
  cue "By the gate, a rack of retired boot soles hangs like service stripes, each pair tagged with a name and the yards it walked."
  affordance "A certified walker turns a live yard into a crossable one in real time — routing crews, flagging soft ground ahead of the survey, and giving the yard a moving inspection every shift at the price of a walk."
  pressure "The reading expires with every step. A following crew must stay inside the walker's boot line, and a long crossing uses a second walker to check the route and take point on the count."
  variation "Ashvane certifies walkers on salted examination courses and posts requirements at yard gates; Crucible's ore fields run paired walkers on long crossings, point and check, swapping on a count."
  variation "The boots are personal instruments — resoled to spec, broken in by their owner, retired with ceremony — and lending a pair is read across the hot trades as either deep trust or deep insult, context deciding."
end
