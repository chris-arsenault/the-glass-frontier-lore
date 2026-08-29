installation :pelhari do
  name "Pelhari"
  summary "Pelhari is a vertical city carved into a deep crater on an inhabited moon of Vastine, and the outer system's largest center of learning and trade."
  playable_as :chronicle_location
  context_tags :"realm:outer_system"
  subkind :settlement
  type_of :settlement
  path "player/locations/settlements/pelhari.md"
  tags :"outer-system", :training, :resonance, :trade, :"ring-era"
  prominence :recognized

  descriptive_identity(
    setting:
      "A vertical city carved down the wall of a crater two kilometers " \
      "across and nearly as deep, terraces stacked on terraces — the " \
      "broad bright rim holding the Academy and observatory, workshops " \
      "and markets spiraling below, ice lifts and freight yards at the " \
      "floor. Overhead, the banded face of the parent planet fills a " \
      "fifth of the sky and turns slowly through colors the locals name.",
    activity:
      "Examinations and observatory practice run on the upper terraces, " \
      "wright shops turn out tuned ringglass instruments, miners work " \
      "ice veins that reach kilometers into the moon, and the dock " \
      "houses handle Span Nine's traffic. Weddings, commissions, and " \
      "exams are all scheduled by the gas giant's storm-faces.",
    access:
      "Span Nine's terminus lands on the outer-rim dock complex with its " \
      "customs and signal bureaucracy, and public lifts connect every " \
      "terrace from rim to floor.",
    hazards:
      "The upper terraces are resonance-quiet enough that a cracked " \
      "array, a tuned pin, or undeclared ringglass in a bag reads " \
      "plainly to anyone attuned walking past. Which terrace a visitor " \
      "sleeps on is what the Pelharin read them by, and nobody says so " \
      "aloud."
  )

  prose <<~PROSE
    A moon of the seventh planet, the outer-system #{ref :kaleidos_system, "water giant"}. Pelhari is a single vertical city carved down the wall of a kilometers-deep crater — terraces stacked on terraces, gas-giant-facing terraces brightest, shadow-side terraces densest. The crater opens to a sky dominated by the banded face of the parent planet, which fills a fifth of the upper hemisphere and turns slowly through colors that the locals know by name.

    The #{ref :clarisant, "Clarisant"} holds the upper terraces and built its academy here. The rest of the crater belongs to people who were doing other things first, or who have come since to do something else.
  PROSE
  prose <<~PROSE, section: :atmosphere, heading: "The Crater"
    The crater is older than the settlement and older than the ring. It pre-dates the Glassfall by an unknown margin. Most geological surveys classify it as an impact crater, while a minority cite its unusually regular geometry as evidence that the cause remains unsettled. Whatever made it left a roughly cylindrical pit some two kilometers across and nearly as deep, with walls steep enough to terrace cleanly.

    The terraces were cut over generations. The upper rim, broadest and brightest, holds the Academy's halls, the observatory, and the senior residences. Descending the crater wall in spiral terraces are the workshops, the markets, the housing for the city's working population, the dock complex around #{ref :span_nine, "Span Nine"}'s terminus, and at the deepest terraces, the ice-mining lifts and the freight yards.

    An address higher on the crater wall carries social status, though polite introductions omit the implication. Public lifts connect every terrace while the distribution of halls, workshops, and housing makes the hierarchy visible.
  PROSE
  prose <<~PROSE, section: :origin, heading: "The Observatory"
    The Clarisant joined an upper rim whose oldest structures predate the guild.

    Embedded in the upper terraces is a pre-Glassfall observatory whose original purpose is absent from surviving records. Its ring-era architecture is unmistakable. The central hall is a long crystalline chamber tuned to a resonance state so quiet that a Tuner standing inside it can feel the rest of the system as background hum: a clean room for resonance practice, a place where a trained sense can be calibrated against silence.

    The crater's resonance-quiet pocket extends across most of the upper terraces. Orbital geometry and the parent planet's mass account for part of the effect, but current models cannot account for the crater's full contribution. Other resonance-quiet sites exist; Pelhari offers the most reliable conditions and the easiest long-term habitation among them.

    The observatory itself still functions. The Academy uses it for examinations and for the deepest stages of mastery training. What it was originally observing remains an open question.
  PROSE
  prose <<~PROSE, section: :economy, heading: "Economy"
    The Academy is the largest single employer and the city's defining institution among several independent industries:

    **Span Nine terminus.** One of #{ref :span_nine, "Span Nine"}'s three known termini lands on Pelhari's outer-rim dock complex. The port handles the only Span-bandwidth comms traffic in the outer system. Customs, freight, signal-traffic management, and the small dense bureaucracy that surrounds the terminus together employ thousands. The dock houses are a city within a city, with their own dialect and their own grudges.

    **Ice mining and water export.** The crater's lower terraces meet veins of clean ice that run kilometers into the moon. Water is extracted, refined, and shipped throughout the outer system. The miners are the city's largest working population and the foundation of the Pelharin middle class. Mining families have worked the veins for generations and treat Tuners as one profession among others.

    **Resonance instrumentation.** The city's wright shops produce some of the system's best resonance instruments: tuned ringglass measurement rigs, training arrays, calibrated reference tools. The wrights work in close contact with the Academy but operate independently, and several wright houses are older than the guild itself. A Pelharin instrument carries a maker's mark that means quality across the system.

    **The retreat economy.** People come to Pelhari to recover, to study, to retire, to disappear. The resonance-quiet environment is restorative. The Academy's libraries are open to credentialed scholars from any institution. Long-stay residences along the middle terraces serve pilgrims, sabbatical academics, recovering Tuners, and the occasional well-funded eccentric. The quiet trade in long-stay hospitality is unglamorous and reliable.

    The Academy, mines, docks, and wright shops have separate employers and institutions. Their independence gives Pelhari several centers of civic and economic power, an uncommon arrangement among habs and surface settlements.
  PROSE
  prose <<~PROSE, section: :culture, heading: "Sky-Watcher Culture"
    The parent planet rules the sky. The gas giant's banded face fills a fifth of the upper hemisphere at any time, turning through a slow procession of colors that the Pelharin read like weather. The bands have names. The standing storms have names. The seasonal shifts in the banding pattern — local effects that recur in roughly the same form year after year — have names. A Pelharin child learns the names of the storm-faces before they learn to read.

    The local calendar is keyed to the gas giant's appearance. **Storm-face** mornings are bright and turbulent. **Hush-face** mornings are still and gray. **Dark-face** spans are the rare intervals when the parent planet's bands all darken simultaneously and the city's mood follows. Outsiders often find dark-face days unsettling; locals treat that reaction as a newcomer's habit.

    Festivals follow the gas giant. The major civic celebrations align with banding events that recur on multi-year cycles, and the planning of a wedding or a major commission is routinely scheduled around the next favorable storm-face. The Academy schedules examinations by the same pattern while downplaying the calendar's influence in its public teaching.

    Outsiders are visible for years. A Tuner who comes to Pelhari for mastery training and stays after may live there for a decade before they stop being read as new. A Pelharin who leaves the moon and returns can pick up local conversation within a day.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Pelhari is a working city built around an institution that governs only part of it. The Academy defines part of the city's identity while treating Pelhari as the site of its work rather than part of the guild's own identity. Miners, wrights, and dock houses maintain institutions that would continue without the guild. The observatory and resonance-quiet terraces tie the Academy more closely to Pelhari than the other industries depend on it, a dependence the Academy usually acknowledges.

    Current work follows the city's established divisions: examinations and observatory practice on the upper terraces, trade and craft below them, and ice extraction at the crater floor. The changing face of the parent planet sets the schedule across all three.
  PROSE

  gm_note :appears, "Business here is vertical: the client sits on the upper rim, the affordable bed is halfway down the wall, the freight is at the crater floor, and every leg of the day is a public lift ride. Which terrace a visitor sleeps on is what Pelharin read them by, and nobody says so out loud."
  gm_note :triggered_by, "Asking a Pelharin to fix a date gets an answer in storm-faces and hush-faces rather than days, because weddings, major commissions and Academy examinations are all set by the parent planet's banding. Pressing for a specific day usually buys the wrong face."
  gm_note :complicates, "The upper terraces are quiet enough that a response which would vanish into background noise anywhere else reads plainly — a cracked array, a tuned pin, undeclared ringglass in a bag. Anyone attuned walking past picks it up without trying."
end

relate :rel_pelhari_orbits_vastine, :orbits, :pelhari, :vastine do
  prose "Pelhari orbits #{ref :vastine, "Vastine"}, far enough out that its independence was never really in question."
end
relate :rel_pelhari_terminus_span_nine, :terminus_of, :pelhari, :span_nine do
  prose "It holds the midpoint of #{ref :span_nine, "Span Nine"}, the relay that keeps the old conduit's signal coherent across the gap."
end

# --- history (moment) ---
moment :pelhari_academy_founded, year: 2200, of: :pelhari do
  summary "Clarisant founders established the Pelhari Academy around a resonance-silent pre-Glassfall observatory in 2200."
  prose "The Famine-era founders of the #{ref :clarisant, "Clarisant"} discovered by accident that the embedded pre-Glassfall observatory was a clean room for #{encyclopedia_ref :resonance, "resonance"} practice — a place where a trained sense could be calibrated against silence — and built the Academy around it. What the observatory was originally observing remains an open question."
end
