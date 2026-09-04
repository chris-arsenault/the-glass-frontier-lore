encyclopedia :stilling do
  name "Stilling"
  summary "Stilling is a focused archive spell that damps one room's signal band long enough to move one unstable case without waking it."
  kind :ability
  subkind :resonant_effect
  status :complete
  log "2026-08-31 — Restored Stilling after review; the established still root names active resonance damping, while night is only the vault instruments' reading during a hold."
  log "2026-08-31 — Recast Stilling as one focused-tier spell holding one room quiet for one case move; relay practice coordinates several separate castings."
  topics :archives, :resonance, :danger, :training
  prevalence :uncommon
  appears_when all: { place: [:archive] }

  tier :focused
  effect "Damp the signal band throughout one enclosed room long enough to move one unstable archive case across it"
  limits "Walls bound the hold, the practitioner must maintain the central stance and breathing rhythm, and a threshold transfer requires another stiller to overlap a separate casting"
  consequence "A full hold leaves the practitioner hoarse, heavy-limbed, and unable to hear the signal band for several hours; exceeding the rostered holding time risks waking the case before the quiet is released"

  descriptive_identity(
    signs: "The stiller takes the holding stance at the room's center — feet " \
           "planted, arms loose, breath dropped into the slow working " \
           "rhythm — and the room's ordinary band noise settles around them " \
           "like dust in stopped air; the movers watch the stiller's hands, " \
           "and go on the spread fingers."
  )

  prose <<~PROSE
    Deep archives hold recordings, sealed instruments, and #{encyclopedia_ref :braid, "Braids"} that respond to stray signal. A trained stiller takes position at the center of a room, settles into the breathing rhythm learned from the #{encyclopedia_ref :quiet_way, "damped disciplines"}, and extends the quieting until vault instruments read the band as night. Movers cross on the stiller's spread-finger signal and lower the case immediately when the hand curls closed.

    Every stiller's maximum room size and holding time appear on the vault roster. Long moves use relays: the relief stiller overlaps the hold at a threshold before the first worker releases it. Apprentices begin in small rooms with inert cases and add distance only after their instruments and hand signals agree. A long hold leaves the worker hoarse, heavy-limbed, and band-deaf for hours, so the roster caps attempts per shift. At the annual stilling of the reading floor, the vault's stillers hold the great room together, demonstrating their current capacity before the next year's roster is posted.
  PROSE

end
