encyclopedia :span_listening do
  name "Span Listening"
  summary "Span Listening is a learned structural skill for hearing changes in the load carried by old ring beams before they shift. The listener works ear and palm against the metal, walks the span's stations in order, and calls what the beam is carrying today against what it carried last season."
  kind :ability
  subkind :technique
  status :complete
  topics :training, :"ring-hab", :"structural-freq", :danger
  prevalence :uncommon
  appears_when all: { place: [:sealed_hab] }
  function "Reads load changes in ring-era structure by ear and palm before the metal begins to walk"

  descriptive_identity(
    signs: "The listener works a span like a physician on rounds — palm flat to the beam, ear " \
           "to the palm's back, a soft tap with the small hammer, a pause — station to station " \
           "along marks generations of listeners have worn into the metal.",
    effect: "Ring structure carries its load as tone, and the tone shifts before the metal " \
            "does. A trained ear catches the new note in a beam — the added weight, the " \
            "settling joint, the member gone slack — seasons before anything visible walks.",
    limits: "The skill reads change against memory, so a listener is only as good as their " \
            "history with the structure: the first year on a new span is spent learning its " \
            "voice, and a span whose listener dies loses its baseline with them."
  )

  prose <<~PROSE
    Every hab hangs from beams the ring made, and the beams talk about their work. Span listening is the trained ear for it: palm flat on the metal, ear against the back of the hand, the small hammer's soft tap, and a practiced silence. Load rides in the beam as tone, and the tone moves ahead of the metal — a member picking up its first taste of a new weight, a joint settling into a new angle, a stay gone slack in a chorus that once held it taut. The listener's craft is the comparison. A span is walked station by station, in the order worn into the metal by generations of hands, and today's voice is called against the listener's memory of last season's.

    The trade descends from the ring's own maintenance corps, whose station marks still guide the rounds, and its teaching runs like a wright's apprenticeship: years of following a senior along the same spans, learning each beam's ordinary voice before earning the right to call an extraordinary one. Listeners keep logs — the date, the station, the note, in a notation half music and half survey — and a span's log passes with the round. Where a #{encyclopedia_ref :minder, "minder"} keeps one running machine, a listener keeps a geometry, and the habs pay both trades for the same reason: the structure knows things first, and somebody has to speak its language.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Calls and Consequences"
    A listener's call moves real weight. 'Station nine, new note, third beam carrying the walkway's share' empties the walkway pending inspection under the same custom that honors any watch-holder's halt, and rigging crews stage their loads to the listener's chart of which members are fat and which are hungry. The calls grade by urgency in trade shorthand — a note for the log, a note for the season, a note for today — and 'a note for today' clears galleries with the efficiency of a cordon bell.

    The baseline problem shapes the trade's institutions. A listener new to a span spends a year learning its voice before their calls carry full weight, so rounds change hands slowly and overlap long, senior and successor walking together until the memory is copied. A span that loses its listener suddenly is treated as newly unknown — walked cautious, loaded light — until a new ear has lived with it through a full cycle of seasons, and habs that have been through it keep their listeners' logs in the archive with the charters.
  PROSE

  cue "A figure works along the high gallery with a palm on the beam and an ear to the palm, tapping softly with a small hammer at stations worn bright by generations of the same touch."
  cue "At station nine the listener goes still, taps twice more, and writes in the log at deliberate length while the walkway traffic slows around the silence."
  affordance "A listener's chart of the span — which members run fat, which hungry, where the new notes live — lets rigging crews stage heavy work with confidence and gives the hab seasons of warning ahead of anything a visual inspection catches."
  pressure "The craft reads change against an established baseline. Rounds pass through long overlaps and written logs; without them, a new listener must keep the span lightly loaded through a full seasonal cycle while learning its ordinary voice."
  variation "Great habs run listener guilds with formal rounds and archived logs; a small fragment's span is listened by one trained ear between other work, and the round passes down a family."
  variation "Notation schools differ — the Vey hand scores beams like music, the Carom hand like survey tables — and listeners trading rounds across habs grumble through the translation."
end
