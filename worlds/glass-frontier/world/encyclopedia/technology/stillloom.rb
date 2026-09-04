encyclopedia :stillloom do
  name "Stillloom"
  kind :technology
  subkind :industrial
  status :complete
  log "2026-08-31 — Renamed Cell Loom to Stillloom; the established still vocabulary names the damping work, while loom retains the machine's concrete operation."
  topics :"fluid-reality", :materials, :rebuilding, :training
  prevalence :rare
  appears_when all: { place: [:sealed_hab] }
  summary "A stillloom is a room-sized frame that weaves live stillwater culture into damping sheet inside a purpose-built quiet chamber. Each run is rated and traced to its stillloom, supplying stillhull plate, still-diver suits, and instrument shielding across Kaleidos."
  function "Weaves raw stillwater culture into rated cell — the sheet material cut and layered into stillhull plate, still-suit panels, and instrument shielding"
  classes "The plate stilllooms that weave hull-weight sheet; the fine stilllooms that weave suit and instrument grades; and the old Meridian pattern stillloom that weaves the reference cell other stilllooms are rated against"
  operating_environments "Deep-founded quiet chambers in sealed habs — massive foundations, damped approaches, and a working floor kept still enough that the weave hears only itself"
  operating_limit "The weave takes the chamber's disturbances into the cell as permanent flaws, so a stillloom's rated output is capped by the quietest conditions its site can hold for a full weaving run"
  capacity "A plate stillloom delivers a stillhull's skin in a season of runs; the fine stilllooms deliver suit panels by the dozen, each rated, each traceable to its run"

  descriptive_identity(
    appearance: "A room-sized frame of pale alloy standing on foundations deeper than " \
                "the building, threads of live stillwater culture descending through " \
                "tension gates to a weave face that moves with the patience of a tide, " \
                "the whole machine surrounded by the deliberate hush of its chamber.",
    working: "Weavers load the culture, set the pattern, and then tend the chamber more " \
             "than the machine — walking felt-floored rounds, reading the disturbance " \
             "log, holding the site's silence for the days a run takes — because the " \
             "stillloom weaves whatever the room does into the cell.",
    risks: "A disturbance mid-run is woven in as a permanent dead seam, found at rating " \
           "and cut around; the trade's discipline is therefore scheduling — runs " \
           "timed to the hab's quietest calendar, and a weaving notice on the district " \
           "board that neighbors treat with the courtesy owed a funeral.",
    handling: "Inspectors rate each finished sheet against reference cell, cut around " \
              "soft places, and send every panel out with papers naming its stillloom, run, " \
              "grade, and disturbance record."
  )

  prose <<~PROSE
    The #{encyclopedia_ref :stillhull, "stillhulls"} and the #{encyclopedia_ref :still_diver, "still divers'"} suits are cut from the same cloth, and the cloth is woven on stilllooms — room-sized frames that draw threads of live stillwater culture through tension gates and lay them into the rated sheet the cordon services buy by the panel. Stillwater cell acquires its damping character from the conditions of its weaving: a tram passing three streets away during a run becomes a soft place in the sheet, and a dropped tool becomes a dead seam. The stilllooms therefore stand in quiet chambers on foundations deeper than their buildings, in sealed habs whose districts schedule around the weaving calendar. A run takes days. The weavers' craft is mostly custodial silence — felt-floored rounds, the disturbance log read like a patient's chart, the pattern tended at the gates — and the district's weaving notice is honored with the courtesy owed a funeral, because everyone lives behind what the stillloom is making.

    The stilllooms themselves are counted on one registry and every sheet carries the stillloom's name and run. Cordon quartermasters order weaves by stillloom and grade, the fine stilllooms' suit panels travel with their run papers, and the old Meridian pattern stillloom — the system's reference machine — weaves the standard cell that every other stillloom's output is rated against. Weaving families hold the trade in lines, the pattern knowledge passing hands-on across generations at a pace the short registry list makes visible. Those families tell the same founding account: crews seeking hull plate for the earliest cordons assembled the first postfall stillloom from a salvaged elven culture frame and wove its first sheet in a mine gallery chosen for its silence.
  PROSE

  cue "The district board carries the weaving notice, the tram line runs its slow schedule past the chamber block, and inside, a weaver in felt shoes reads the disturbance log by shaded lamp while the weave face moves like a tide."
  cue "At rating, the inspector runs the new sheet under the reference cell's instruments, finds the one soft place, and the run log tells the chamber exactly which hour of which day got into the material."
  affordance "A stillloom in a quiet chamber turns stillwater culture into the rated cell every cordon, stillhull, and still suit depends on — traceable by run, named by stillloom, and specified across the system the way shipwrights specify keels."
  pressure "A weaving run claims the chamber and its district for days: tram crews slow the line, nearby work follows the weaving notice, and weavers use the disturbance log to match each weak place to the hour that entered the sheet."
  variation "Plate stilllooms weave hull-weight sheet in seasonal runs; fine stilllooms weave suit and instrument grades by the dozen; and the Meridian pattern stillloom weaves only the reference cell, on a calendar its hab plans the year around."
  variation "Weaving lines hold the pattern craft hands-on across generations, and a stillloom changing families is registry news because buyers track who set the patterns behind each run."
end
