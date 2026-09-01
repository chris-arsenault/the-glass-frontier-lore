encyclopedia :signal_tides do
  name "Signal Tides"
  summary "Signal tides are the periodic swells of the signal band that wash through the system on schedules every settlement charts — rising to drown fine transmission, running strong for hours, and ebbing to the clear intervals when the far stations speak. Life with relays is life on the tide table."
  kind :phenomenon
  subkind :physical_phenomenon
  status :complete
  topics :resonance, :"signal-freq", :navigation, :trade
  prevalence :common
  available_globally
  medium "The signal band throughout the Kaleidos system"
  nature "Periodic band swells tracked to overlapping cycles; the almanac offices publish tide tables against the largest components"
  hazard "A rising tide drowns fine transmission and swamps unhardened instruments, and spring-tide crossings silence whole routes for a shift"

  descriptive_identity(
    signs: "Relay speech thickens and furs at the edges, instrument needles lift off their rest " \
           "together, and the duty operator glances at the tide table on the wall before anyone " \
           "reports a fault. Signal mat grips shut, kites come home, and the district settles in " \
           "to wait.",
    effects: "On the ebb, the band runs clear and the far stations speak — the deep-night clear " \
             "is when Pelhari reads Sithari direct — and on the flood, transmission shortens to " \
             "the strong, the near, and the pre-arranged.",
    hazards: "Spring tides, when the cycles stack, silence fine signal work for a shift or more, " \
             "and every trade that runs on relays keeps a standing spring-tide drill."
  )

  prose <<~PROSE
    The signal band has weather, and its weather has tides. On cycles the almanac offices chart to the hour, the band swells: relay speech furs and thickens, fine instruments lift and swamp, and transmission shortens to the strong and the near. Hours later the tide ebbs and the band runs clear — the deep-night clear of a good ebb is when the far stations speak, Pelhari reading Sithari direct, the outer relays passing their accumulated traffic inward like boats refloated off a bar. Every settlement with a relay posts its tide table beside the boards, and 'on the ebb' is a promise of delivery in every signal trade.

    The cycles overlap. The great components track the orbits of the system's large bodies and repeat with astronomical patience; beneath them run shorter local cycles each region charts for itself, and the interference of the two is the table's fine print. When the components stack — spring tides, in the operators' borrowed word — the flood runs high enough to silence fine signal work across whole routes for a shift, and the trades run their standing drills: traffic pre-cleared, kites out for what must move, the duty watch settling in with the patience of people whose profession includes scheduled speechlessness.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Living on the Table"
    The tide table organizes more than the relays. Markets time price postings to the ebb so the district's numbers arrive together. Archives schedule crystal readings for slack water, when the band sits quietest. #{encyclopedia_ref :ravel_clampweed, "Signal mat"} grips shut on the flood and growers read the plant as a free gauge, and the deep-route pilots plan crossings so the silent legs fall where the route is boring. A tide-taught child knows the day's two clears the way a coastal child knows the water, and visitors from quiet districts are identified within the hour by their habit of trying to send at flood.

    The flood carries its own uses. Strong-signal work — the blunt, loud traffic that rides any water — goes out on the rise deliberately, and some listening trades want the flood itself: tide-swell recordings are the raw stock of several archive programs, and tuners describe the high flood as the band showing its grain.
  PROSE

  cue "Every needle on the relay bench lifts off its rest in the same slow breath, and the duty operator taps the wall table and writes 'flood — holding traffic' in the log with their eyes still on the needles."
  cue "In the deep-night clear the relay room fills with far voices — three stations passing a season of accumulated traffic in an hour — and half the district's clerks work the ebb shift by lamplight."
  affordance "The tide table turns band weather into schedule: traffic held to the ebb arrives sure, spring tides are known a season out, and any trade that plans to the table gets the clear intervals almost to the minute."
  pressure "The flood is indifferent to urgency — a message that must move at high water goes by kite or courier while everything else waits, and spring tides hand every route a scheduled silence that emergencies arrive during anyway."
  variation "Relay districts run ebb shifts and sleep the flood; the outer routes, where clears come seldom, batch a season's traffic and spend a whole ebb in one roaring exchange."
  variation "Some archives collect the flood itself, recording the swells as raw stock, and their operators speak of individual spring tides by date the way growers speak of vintages."
end
