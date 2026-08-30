encyclopedia :cell_loom do
  name "Cell Loom"
  kind :technology
  subkind :industrial
  status :complete
  topics :"fluid-reality", :materials, :rebuilding, :training
  prevalence :rare
  appears_when all: { place: [:sealed_hab] }
  summary "A cell loom weaves stillwater cell — the layered damping material that becomes stillhull plate and still-diver suit — in a chamber quieted to the deepest silence industry can hold. The looms are counted on one registry, their weaves carry the loom's name like a vintage, and every cordon service in the system is a customer of a machine most people will hear described before they meet anything it made."
  function "Weaves raw stillwater culture into rated cell — the sheet material cut and layered into stillhull plate, still-suit panels, and instrument shielding"
  classes "The plate looms that weave hull-weight sheet; the fine looms that weave suit and instrument grades; and the old Meridian pattern loom that weaves the reference cell other looms are rated against"
  operating_environments "Deep-founded quiet chambers in sealed habs — massive foundations, damped approaches, and a working floor kept still enough that the weave hears only itself"
  operating_limit "The weave takes the chamber's disturbances into the cell as permanent flaws, so a loom's rated output is capped by the quietest conditions its site can hold for a full weaving run"
  capacity "A plate loom delivers a stillhull's skin in a season of runs; the fine looms deliver suit panels by the dozen, each rated, each traceable to its run"

  descriptive_identity(
    appearance: "A room-sized frame of pale alloy standing on foundations deeper than " \
                "the building, threads of live stillwater culture descending through " \
                "tension gates to a weave face that moves with the patience of a tide, " \
                "the whole machine surrounded by the deliberate hush of its chamber.",
    working: "Weavers load the culture, set the pattern, and then tend the chamber more " \
             "than the machine — walking felt-floored rounds, reading the disturbance " \
             "log, holding the site's silence for the days a run takes — because the " \
             "loom weaves whatever the room does into the cell.",
    risks: "A disturbance mid-run is woven in as a permanent dead seam, found at rating " \
           "and cut around; the trade's discipline is therefore scheduling — runs " \
           "timed to the hab's quietest calendar, and a weaving notice on the district " \
           "board that neighbors treat with the courtesy owed a funeral."
  )

  prose <<~PROSE
    The #{encyclopedia_ref :stillhull, "stillhulls"} and the #{encyclopedia_ref :still_diver, "still divers'"} suits are cut from the same cloth, and the cloth is woven on cell looms — room-sized frames that draw threads of live stillwater culture through tension gates and lay them into the rated sheet the cordon services buy by the panel. The loom's governing fact is its material's attentiveness. Stillwater cell takes its damping character from the conditions of its weaving, and it takes everything: a tram passing three streets away during a run becomes a soft place in the sheet, a dropped tool becomes a dead seam, and so the looms stand in quiet chambers on foundations deeper than their buildings, in sealed habs whose districts schedule around the weaving calendar. A run takes days. The weavers' craft is mostly custodial silence — felt-floored rounds, the disturbance log read like a patient's chart, the pattern tended at the gates — and the district's weaving notice is honored with the courtesy owed a funeral, because everyone lives behind what the loom is making.

    The looms themselves are counted on one registry and their sheet carries the loom's name like a vintage: cordon quartermasters specify weaves the way shipwrights specify keels, the fine looms' suit panels travel with their run papers, and the old Meridian pattern loom — the system's reference machine — weaves the standard cell that every other loom's output is rated against. Weaving families hold the trade in lines, the pattern knowledge passing hands-on across generations at a pace the short registry list makes visible, and the trade's one universally told story is its founding arithmetic: the first postfall loom was assembled from a salvaged elven culture frame by crews who needed hull plate for the earliest cordons, wove its first sheet in a mine gallery chosen for the silence, and taught the system that the way to make the material that quiets the world is to be quiet around it first.
  PROSE

  cue "The district board carries the weaving notice, the tram line runs its slow schedule past the chamber block, and inside, a weaver in felt shoes reads the disturbance log by shaded lamp while the weave face moves like a tide."
  cue "At rating, the inspector runs the new sheet under the reference cell's instruments, finds the one soft place, and the run log tells the chamber exactly which hour of which day got into the material."
  affordance "A loom in a quiet chamber turns stillwater culture into the rated cell every cordon, stillhull, and still suit depends on — traceable by run, named by loom, and specified across the system the way shipwrights specify keels."
  pressure "The weave records its chamber's failures permanently, so a loom's output is hostage to its district's discipline — and a hab that hosts a loom has agreed, collectively and indefinitely, to be quiet on schedule."
  variation "Plate looms weave hull-weight sheet in seasonal runs; fine looms weave suit and instrument grades by the dozen; and the Meridian pattern loom weaves only the reference cell, on a calendar its hab plans the year around."
  variation "Weaving lines hold the pattern craft hands-on across generations, and a loom changing families is registry news — the sheet's buyers track the succession the way vintners' customers track a change of cellar."
end
