resource :comparison_tiles do
  name "Comparison Tiles"
  aka "the set"
  tags :ecology, :military, :trade, :legibility
  prominence :marginal

  prose <<~PROSE
    Ten tiles in a copper case, one to each step of #{ref :the_fouling_round, "the round"}. The low tiles are glazes cast at stated roughnesses, from a mirror up through the tooth a film will hold on. The high tiles carry cast relief: the shell rings, tube mats and calcareous crusts that anchored growth builds, taken from casts of surfaces that were pulled.

    They are #{ref :sterile_machines, "sterile-machine"} work — copper body, fired glaze, no organic binder anywhere in the assembly, the case itself an oven box. A set travels wet, gets dragged across whatever is growing on a gate seat, and cannot be permitted to carry the thing it measures from one enclave to the next. Every set is baked in its case before it is issued and after every round.
  PROSE

  prose <<~PROSE, section: :how_it_works, heading: "Dated, Not Inspected"
    A set is stamped with the shop's mark and the season it was cast, and it expires. A grade written against a set past its stamp is void, and the surface it was written for is regraded or pulled.

    Sets are retired by that date and not by examination, because a set wears in the direction that keeps articles in the water. Grading drags the tile across the surface: the mirror tiles take a tooth, the fine glazes polish, the cast relief rounds off at the edges that a pad reads first. A worn set answers every surface a step or two cleaner than it is. The tile that would tell a surveyor the set had gone is the tile that went.

    Sets are not repaired, reglazed or topped up. A retired set goes back to the shed, is broken on the stone and is entered as broken.
  PROSE

  prose <<~PROSE, section: :limits, heading: "One Set, One Surveyor"
    A set is issued to a named surveyor for the quarter and carries their number alongside the shop's mark, so a contested grade names the set that produced it and the hand that held it. Two surveyors do not share a set inside a round; a second opinion is a second set.

    The #{ref :the_mediterranean_chain, "Chain"} enclaves buy sets by the dozen from the shops that make their pumps, at a price that has risen every year the ovens have been running, and a surveyor who breaks a case in the field is out of the round until the next issue.
  PROSE

  log "2026-08-09 — Retirement by date rather than by inspection comes from the wear behaviour of calibration artefacts, which nobody on the Chain treats as a discipline: a reference standard used by contact degrades toward the reading that requires no action, and no examination of the standard against itself can detect it. Borrowed because it gives the round a failure that is nobody's misconduct — the set matched, the grade was correct, and the surface was foul."
end
