encyclopedia :calling_in do
  name "Calling In"
  summary "Calling in is the taught hail that carries a name through a built place — pitched to the structure's carrying bands so the called person hears their name arrive through three decks of noise. Every hab teaches its children the call and the answer, and the answer is mandatory."
  kind :ability
  subkind :technique
  status :complete
  topics :household, :training, :"ring-hab"
  prevalence :common
  available_globally
  function "Sends a name through a structure's carrying bands to reach one person through distance and noise; the paired answer confirms them safe"

  descriptive_identity(
    signs: "The caller sets a hand on wall or rail, takes the caller's stance — weight " \
           "planted, chest open — and sends the name in the rising two-note shape that " \
           "rides the structure, ending on the held tone that asks for the answer.",
    effect: "A well-placed call travels the bonework of a building the way a crier's " \
            "ground note travels a street, and arrives as one's own name, unmistakably, " \
            "through machinery, crowd, and three decks of distance. The answer — the " \
            "falling two-note with the caller's name — closes the loop.",
    limits: "The call carries a name and a tone of voice, and the tone is the message's " \
            "whole vocabulary: the trades' three call tones — ordinary, urgent, and " \
            "the flat emergency call that empties bunks — are kept deliberately few, " \
            "and inventing a fourth is a housekeeping offense everywhere."
  )

  prose <<~PROSE
    The #{encyclopedia_ref :elves, "elves"} built their halls to carry the voice — the same bones that serve the #{encyclopedia_ref :crier, "criers"} and the #{encyclopedia_ref :rill_households, "pipe lines"} — and calling in is the household-scale craft of the fact. A trained call sends one name through a structure: hand set to the wall or rail, the caller's stance taken, and the name pitched in the rising two-note shape that rides the carrying bands, arriving through machinery, crowd, and decks of distance as one's own name, unmistakably, the way a sleeper hears their name in a hubbub. The called person answers — the falling two-note, with the caller's name — and the closed loop is the point: a call answered locates a person, confirms them able to answer, and does it across a hab in the time a shout crosses a room.

    Habs teach the call and answer together as a survival skill. An unanswered name starts a search. Households call in at the evening bell, work crews call the roster down dark sections, and dock closure drills send every manifest name through a sealed district while clerks mark the answers. The craft uses three tones: ordinary, urgent, and the flat emergency call that empties bunks. Keeping that vocabulary short lets a listener recover the name, urgency, and answer through distance and machinery noise.
  PROSE

  cue "A hand goes flat to the corridor rail, the two-note rising call carries a name away through the structure, and three decks down someone lifts their head mid-task and sends the falling answer back."
  cue "At the evening bell the gallery fills with paired calls and answers — the household roll — and one unanswered name turns three heads before the second call finishes."
  affordance "A trained call finds one person through a whole structure's noise and distance, and the mandatory answer makes it a locating tool — the roll-call customs built on the pair let households, crews, and closure drills confirm every name in minutes."
  pressure "An unanswered call starts a search, so anyone leaving its range reports the absence and callers reserve the three tones for real checks."
  variation "Every hab's call carries a local accent in the two-note shape, and hab folk place a caller's home fragment the way surface folk place a dialect."
  variation "The trades run extended rosters on the call — crews called through dark sections in working order — and the dock closure drill that calls the full manifest through a sealed district is the custom at civic scale."
end
