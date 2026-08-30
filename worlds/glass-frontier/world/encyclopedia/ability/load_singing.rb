encyclopedia :load_singing do
  name "Load Singing"
  summary "Load Singing is a salvage-rigging skill that pitches a lifting frame until hidden fractures answer through its cables. The singer holds a rising tone against the rigged load and reads what comes back, and a lift in the heavy trades waits on the singer's word."
  kind :ability
  subkind :technique
  status :complete
  topics :salvage, :resonance, :training, :danger
  prevalence :uncommon
  appears_when all: { place: [:yard, :debris_field] }
  function "Sounds a rigged load through its lifting frame, finding hidden fractures before the lift commits"

  descriptive_identity(
    signs: "One hand on the tensioned frame, the singer holds a long rising tone against the " \
           "load — chest voice, unhurried, climbing the scale in deliberate steps — and the " \
           "whole crew reads the singer's face for the flinch that means something answered " \
           "wrong.",
    effect: "A sound mass answers a swept tone evenly; a fracture answers at its own pitch, " \
            "buzzing back through the cables at the frequency the flaw favors. The singer " \
            "maps the flaws by where the frame talks back, and chalks the load like a " \
            "cutting plan.",
    limits: "The sweep reads what the rigging touches, so a singer's chart is only as " \
            "complete as the frame's grip — and a load re-rigged after the song needs the " \
            "song again, a rule written in the trade's oldest scars."
  )

  prose <<~PROSE
    Before the heavy trades lift anything with a history — a salvage mass, a cracked casting, an ice-scarred hull section — the load gets sung. The singer stands with one hand on the tensioned lifting frame and pitches a long rising tone against it, chest voice climbing in deliberate steps, and the load answers: sound mass evenly, flaws at their own pitch, each hidden fracture buzzing back through the cables at the frequency it favors. The skill is mapping by reply. A singer works the sweep top to bottom, marks where the frame talked back, and chalks the load with the flaw chart the way ice crews score a field before the saws — and the lift plan is redrawn around the chalk before anything leaves the ground.

    The song's authority is the tug operator's test knock scaled up, and the trades treat it with the same standing: the singer's chart is logged, a load sung bad waits, and dock courts take a certified singer's chalk as expert testimony. Training is voice and ear together — apprentices learn the sweep on scrap fields, singing to masses whose flaws the seniors already know, until their charts match the known truth cold — and the certifying examination is the trade at its most theatrical: a salted load, a public sweep, and the candidate's chalk compared line by line against the examiners' sealed chart while the yard watches.
  PROSE

  cue "One hand on the taut cables, the singer climbs a slow scale against the rigged mass, and at one step the whole crew sees the flinch before anyone hears the buzz."
  cue "The load hangs chalked like a butcher's diagram — flaw lines, safe faces, the singer's mark in the corner — and the lift plan on the board has been redrawn to match."
  affordance "A sung load is a mapped load: the chalk chart turns a hidden-flawed mass into a plannable lift, and a certified singer's mark carries the same evidentiary weight in dock court as a tug operator's test call."
  pressure "The song reads only what the rigging touches and only as rigged, so every re-rig voids the chart — and the schedule pressure to skip the second singing is exactly how the trade collects its scars."
  variation "Yard singers work castings and hull sections to a certification standard; Shear claim singers sweep debris masses in vacuum gear, singing through the frame by contact rod, and rank their own hard-suit repertoire."
  variation "The examination is a public sweep over a salted load, chalk against sealed chart, and yards treat a clean pass the way docks treat a clean run — with a drink and a nickname."
end
