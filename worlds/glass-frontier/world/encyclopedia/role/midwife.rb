encyclopedia :midwife do
  name "Midwife"
  summary "A midwife attends pregnancy, birth, and the month of lying-in that follows — and in Kaleidos the trade's second instrument, after the hands, is the tide table, because labor runs easier through a resonance calm and every birth room is damped like a small quiet chamber. The midwife's satchel and the midwife's authority enter houses that admit no other outsider so freely."
  kind :role
  subkind :profession
  status :complete
  topics :household, :training, :resonance, :"social-structure"
  prevalence :common
  available_globally

  descriptive_identity(
    attire: "Working aprons over soft-woven clothes that make small sound, sleeves " \
            "banded at the forearm for scrubbed hands, and the trade's door token — " \
            "a smooth wooden fish worn at the belt — that opens any household at " \
            "any hour with a knock and its name.",
    tools: "The satchel: listening horn, cord kit, salves and the herb rolls of the " \
           "local pharmacy, the felt door runners and damping cloths that quiet a " \
           "birth room, and the tide table marked in the midwife's own hand with " \
           "the district's calms.",
    manner: "Calm and direct; a midwife commands the birth room by custom that outranks " \
            "the household head, using plain words, a steady voice, and one instruction " \
            "at a time."
  )

  cue "The knock comes with the wooden fish held to the door slot, the house opens at once and at any hour, and the midwife's first act inside is laying the felt runners that turn the birth room quiet."
  cue "The tide table comes out of the satchel, the midwife reads the district's next calm against the labor's pace, and tells the household plainly whether this child is coming on the calm or through the chop."
  affordance "A midwife brings the birth room its calm, its authority, and its month of aftercare in one visit — hands trained on hundreds of deliveries, a damped room, the lying-in schedule, and a door token that gets all of it inside any house at any hour."
  pressure "The district round records expected dates, travel time, and the tide table. When two labors overlap, the midwife assigns the apprentice or calls another round, and the lying-in visits continue under the same named practice."
  variation "District midwives walk a neighborhood round and know three generations of its bodies; the route midwives of thin country ride circuits timed to their families' dates, and a route midwife's winter schedule is set at midsummer."
  variation "Hab practice leans on the damped room and the dock services' backup; river and surface practice leans on the tide tables and the herb rolls — and the two traditions trade students to round them."

  prose <<~PROSE
    Birth in Kaleidos has a weather. Labor runs easier through a resonance calm — the #{encyclopedia_ref :still_mornings, "still mornings"} are the trade's favorite shift, and every district midwife keeps a tide table annotated in their own hand — and newborns arrive raw to the bands, startling at disturbances the adults in the room stopped hearing years ago. The trade is built around both facts. A midwife's first act in any house is laying the felt runners and hanging the damping cloths that turn the birth room into a small quiet chamber; the satchel carries the listening horn and cord kit of the hands-on craft beside the tide table of the timing craft; and the choice the midwife announces early — this child comes on the calm, or through the chop — organizes the household's whole night.

    The wooden fish at the belt is the trade's door token, admitted at any hour. Inside, the midwife commands the birth room by a custom that outranks the household head. The work extends a month past the birth. The lying-in — the damped, fed, visited-by-schedule month that follows — is the midwife's to open and close: the trade posts the #{encyclopedia_ref :latch_watch, "latch watch"}, sets the visiting order, and ends the confinement with the walking-out visit that returns the household to the street. An apprentice carries the satchel for years of another midwife's rounds before the district's households, in the trade's phrase, learn her knock.
  PROSE
end
