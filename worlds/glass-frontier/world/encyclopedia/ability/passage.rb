encyclopedia :passage do
  name "Waybearing"
  summary "Waybearing carries travelers across impossible distance by making a known destination directly reachable for a limited time."
  kind :ability
  subkind :resonant_effect
  status :complete
  log "2026-08-31 — Renamed Known Road to Waybearing; the practice now shares a lexical family with the Waybearer mantle that extends it to fleets and populations."
  log "2026-08-31 — Kept Waybearing as the focused two-way threshold. The former broad self-crossing became Step because moving one practitioner without opening a route has a different target, use, and consequence; the narrow row only enlarged Waybearing's traffic."
  topics :resonance, :navigation, :transport, :"signal-freq"
  prevalence :rare
  available_globally

  tier :focused
  effect "Open one traversable threshold between the practitioner's position and a genuinely known destination long enough for a small group to cross"
  limits "The destination requires lived memory, a trustworthy live signal, or a traveler who belongs there; the opening carries bodies, air, matter, and momentum in both directions and cannot move after it forms"
  consequence "The practitioner cannot close the threshold while anyone is crossing it, so weather, weapons, debris, creatures, and pursuers may follow the intended travelers"

  descriptive_identity(
    signs: "The destination becomes visible through an ordinary opening, while its sound and air enter the practitioner's present room before anyone crosses."
  )

  prose <<~PROSE
    Waybearing makes one destination adjacent through an existing doorway, hatch, or similarly bounded opening. The space between remains where it was; a small group simply stops crossing it. A hatch can open from a ring fragment onto a surface courtyard, or a compartment door onto the deck sending a live signal. Air, light, sound, loose matter, and danger travel through the threshold as readily as people do.

    The destination must be genuinely known. Lived memory is the surest anchor. A live signal can serve when it carries enough of a place to distinguish it from every similar room, and a traveler can anchor a place through the habits and relationships that make it home. A copied name or accurate plan supplies no anchor. If the knowledge is incomplete, the threshold opens onto the last real place that satisfies it.
  PROSE
  prose <<~PROSE, section: :dangers, heading: "What Follows"
    An open way has two sides and no allegiance. Pressure crosses. Fire crosses. A hostile creature can charge through before the last intended traveler clears it. The practitioner cannot close the threshold around an occupant; it remains until everyone in passage reaches one side or turns back.

    #{ref :waybearer, "The Waybearer"} can sustain a road large enough for armies, fleets, or populations anywhere in Kaleidos, far beyond the spell's one fixed threshold.

    #{encyclopedia_ref :step, "Step"} carries only its practitioner across one local obstruction and leaves no opening behind. It needs a destination in direct sight rather than memory, signal, or belonging.
  PROSE
end
