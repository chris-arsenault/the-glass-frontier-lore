encyclopedia :resonance_cascade do
  name "Resonance Cascade"
  kind :phenomenon
  subkind :anomalous_event
  status :complete
  log "2026-08-31 — Renamed Cascade to Resonance Cascade; resonance is the established physical system whose coupling makes this specific chain reaction distinct."
  topics :resonance, :danger, :materials, :"ringglass"
  prevalence :rare
  appears_when any: { place: [:ringglass_rich, :yard] }
  summary "A resonance cascade is a chain reaction in which an over-driven tuned structure passes its oscillation to every compatible object within coupling reach. The rising front breaks glass, mounts, and hull seams until crews ground it, starve it across a detuned gap, or cut its path. Grounded cascades leave fused clefts rich in flower."
  medium "Tuned and resonant material in coupling reach of each other — ringglass concentrations, instrument floors, cutting yards, and the ring-fabric districts where everything was built to carry the bands"
  nature "A coupling chain reaction: an over-driven element hands its oscillation to its tuned neighbors faster than damping sheds it, the front spreading structure to structure until it grounds, starves, or is cut"
  hazard "The front shakes apart what it crosses — glass shatters, mounts fail, hulls open at their seams — and it travels along tuning rather than geography, jumping to whatever answers, which is why a cascade's path map looks like a lightning strike drawn through an inventory"
  known_forms "The yard cascade, caught by spacing and cut lines and over in minutes; the district cascade of the dense ring-fabric quarters, fought at the damping stations; and the great grounded cascades of the record, whose fused paths are landmarks"

  descriptive_identity(
    signs: "A tone that should decay and climbs instead — the over-driven " \
           "element's note rising through its neighbors one by one, each " \
           "picking up the ring before the last has peaked — and the " \
           "instant, characteristic response of everyone in earshot who " \
           "knows what the climb means.",
    effects: "The front crosses everything tuned in coupling reach — glass " \
             "shattering at its resonant limit, mounts and bonework " \
             "hammering themselves loose — and where the energy finally " \
             "grounds, it fuses: the cascade cleft, a seam of melted glass " \
             "and condensate crystal marking the path's end like a burial.",
    hazards: "The front follows compatible tuning across physical gaps; crews " \
             "stop it by grounding connected elements or opening a deliberately " \
             "detuned cut line ahead of its path."
  )

  prose <<~PROSE
    A resonance cascade begins when one tuned element receives more oscillation than its damping can shed: a cutter run hot, a long instrument test, or a strike in glass-rich ground. It couples to compatible structures within reach, and each new vibrating element passes the load onward. The first warning is a tone that rises after its source should have decayed, gathering additional notes as neighboring structures join it. The front follows tuning across ordinary physical gaps and shakes apart glass, mounts, bonework, and hull seams. Grounding absorbs the load; a deliberately detuned cut line deprives it of a compatible path.

    Cutting yards separate tuned work with maintained cut lines, and licensing rules limit the load placed on any one element. Dense ring-fabric districts keep damping stations and drill crews to ground or detune bays ahead of an advancing front. Where a cascade finally grounds, heat fuses glass along its path and grows pockets of #{encyclopedia_ref :flower, "flower"}. Cleft-hunters use climbing gear and tuning instruments to locate those pockets and sell the large crystals to instrument houses. Named clefts also preserve the mapped extent of old events. Hunters customarily keep silence before opening a pocket, then mark the seam and begin extraction.
  PROSE

  cue "The test floor's tone climbs instead of decaying, gathering a second voice and a third — and the room is already moving, because everyone raised near glass knows exactly what a rising chord means."
  cue "The cutting crew works ahead of the front by lamplight, detuning the gallery bay by bay — feeding the cascade silence — and the climb behind them peaks, wavers, and starves two bays short of the reservoir."
  affordance "Spacing, maintained cut lines, damping stations, and drills give crews established ways to interrupt a cascade; its grounded cleft later yields unusually large condensate crystals."
  pressure "The front follows tuning rather than distance, so exposure maps to connectivity — the best-integrated districts are the most flammable, and every convenience that couples two systems is also, in the doctrine's cold accounting, a fuse."
  variation "Yard cascades are caught by spacing and over in minutes; district cascades in dense ring fabric are fought at the stations and remembered by name; the great grounded cascades of the record left the named clefts that anchor both the doctrine's teaching and the hunters' trade."
  variation "Cleft-hunting is a licensed trade combining rope work, tuning surveys, and mineral extraction; crews mark each opened seam and keep a moment's silence before the chisel."
end
