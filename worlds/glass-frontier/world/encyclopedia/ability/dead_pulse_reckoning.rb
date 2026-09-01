encyclopedia :dead_pulse_reckoning do
  name "Dead Reckoning"
  summary "Dead Reckoning is the navigation craft of fixing position from the timed transmission windows of damaged elven beacons. Their timing cores still open each window on schedule, creating detectable quiet intervals with known bearings."
  kind :ability
  subkind :technique
  status :complete
  log "2026-08-31 — Renamed Reckoning to Dead Reckoning. The familiar navigation phrase gains a literal Kaleidos meaning: the fixes come from the scheduled silences of dead beacons."
  topics :navigation, :"signal-freq", :"ring-era", :training
  prevalence :uncommon
  appears_when all: { place: [:damaged_signal] }
  function "Fixes position and holds course through damaged-signal country by matching scheduled quiet intervals to current pulse tables"

  descriptive_identity(
    signs: "The reckoner sits at the listening set with the pulse tables open " \
           "and a counting hand moving — logging each silence as it falls due, " \
           "the way other navigators log stars — and calls the fix from three " \
           "gaps crossed.",
    effect: "Each dead station's silence arrives on its own schedule and " \
            "bearing; three silences crossed give a fix, a run of them gives a " \
            "course, and a practiced reckoner holds a route through country " \
            "the live network abandoned with the confidence of a pilot under " \
            "working lights.",
    limits: "The method requires current tables and a quiet listening band. " \
            "Live interference obscures the intervals, and a failed timing " \
            "core gives false fixes until the next survey corrects the table."
  )

  prose <<~PROSE
    The Glassfall and Famine ended transmissions from most #{encyclopedia_ref :elves, "elven"} beacons in damaged-signal country, but many timing cores still open their transmission windows on schedule. Each opening creates a quiet interval in the band's ordinary noise, arriving from the dead station's bearing. A reckoner compares those intervals with the pulse tables. Three crossings give a fix; a sequence gives a course through routes beyond the live network.

    Survey crews maintain the pulse tables by visiting each route and recording which windows still arrive on time. Reckoners train against recordings for a season before working a live route, then keep the listening room under acoustic law during a fix. A failed timing core or collapsed station remains in the table until a survey corrects it, while local transmissions can obscure the interval entirely. Experienced reckoners mark a thin or mistimed window for the next survey and refuse a two-window fix when the table has gone stale.
  PROSE

  cue "The listening room goes to acoustic law as the leg begins — the reckoner at the set, pulse tables open, counting hand moving — and the fix is called from three silences crossed before the passengers know navigation happened."
  cue "Mid-route the reckoner frowns at a gap that fell true but felt thin, logs it flagged, and the next survey run finds the station's core in its last season — the tables corrected because an old ear distrusted a punctual silence."
  affordance "A listening set, current tables, and a trained reckoner provide scheduled fixes across routes outside the live beacon network."
  pressure "Station failures corrupt the tables until the next survey, and live transmissions obscure the quiet intervals, so every route depends on both the survey circuit and an enforced listening-room silence."
  variation "Route reckoners hold the freight legs on the standard tables; the survey reckoners who maintain the tables fly the verification circuits, and their flagged-silence logs are the craft's collective ear written down."
  variation "Regional nets differ in density — the thick old station fields of the inner routes give fixes by the minute, and the sparse outer lines are held on two silences and seamanship, which is where the old reckoners' reputations are made."
end
