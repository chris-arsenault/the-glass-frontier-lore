encyclopedia :hinge_step do
  name "Hinge Step"
  summary "Hinge Step is a docking technique for crossing a moving joint during the brief beat when it carries no load. The stepper reads the joint's rhythm, waits for the slack beat, and crosses in it — the dock trades' basic footwork, drilled until the wait feels longer than it is."
  kind :ability
  subkind :technique
  status :complete
  topics :training, :transport, :danger
  prevalence :uncommon
  appears_when all: { place: [:dock] }
  function "Crosses working dock joints safely by stepping in the joint's unloaded beat"

  descriptive_identity(
    signs: "The stepper stands at the joint's lip with weight already committed forward, " \
           "watching the far plate, and crosses in one flowing stride at a moment that " \
           "looks arbitrary to anyone untrained and inevitable to anyone drilled.",
    effect: "Every working joint carries its load in rhythm — clamp, swing, settle — and " \
            "each cycle holds a slack beat when the plates sit unloaded and still. The " \
            "technique is finding that beat by eye and ear and putting the crossing " \
            "inside it.",
    limits: "The beat belongs to the joint's current work, so a stepper reads before every " \
            "crossing, every time — the rhythm changes with the cargo — and the trades " \
            "drill the abort as hard as the step, since the second-worst place to be is " \
            "waiting and the worst is halfway."
  )

  prose <<~PROSE
    Working docks are floored with moving joints — the hinged plates and swing sections that let a berth flex with its traffic — and dock feet learn early that the floor has a rhythm. A loaded joint works in cycles, clamp and swing and settle, and every cycle carries one slack beat when the plates sit still and unloaded. Hinge step is the technique of crossing in it: read the joint's current rhythm from the lip, commit the weight forward, and take the crossing in one flowing stride inside the beat. Drilled steppers cross working joints all shift with the unconsidered fluency of stairs; the undrilled wait for gaps in the traffic that the joints, which answer to cargo rather than courtesy, rarely offer.

    The training is rhythm first, footwork second. Apprentices learn joints from the lip — clapping the cycle before they cross it, calling the beat aloud until the call comes true — and drill the abort stance as hard as the step itself, because the beat is a property of the joint's present cargo and the cargo changes on its own schedule alone. Dock custom reinforces the craft at the culture level: joints are crossed single file by standing rule, a stepper at the lip is given the lip, and the courtesy of calling the beat for a burdened crosser — hands full, child on hip — is the dock's ordinary kindness, offered and taken without ceremony a hundred times a shift.
  PROSE

  cue "At the joint's lip a docker stands weight-forward, clapping the plate's cycle softly — clamp, swing, settle — then crosses in one stride at a moment that looks arbitrary and lands like proof."
  cue "A crosser with both arms full pauses at the lip, and the nearest stepper calls the beat for them as easily as passing the salt."
  affordance "A drilled stepper crosses any working joint at working pace, which keeps a whole dock's foot traffic moving through floors that would otherwise ration every crossing to the traffic gaps."
  pressure "The beat belongs to the joint's current cargo and changes with it, so every crossing begins with a fresh read — and the drilled abort exists because the halfway point of a misread joint is the dock's least forgiving address."
  variation "Passenger docks time their joints slow and post beat-callers at the busy crossings; freight docks let the cargo set the rhythm and expect the feet to keep up."
  variation "Dock children learn the clap-and-call as a game years before their first crossing, and the game's rhyme differs by dock in the way of all the best safety training."
end
