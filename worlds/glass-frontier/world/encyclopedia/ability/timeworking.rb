encyclopedia :timeworking do
  name "Hourtaking"
  summary "Hourtaking changes the rate and order of physical events by taking duration from one process and assigning it elsewhere."
  kind :ability
  subkind :resonant_effect
  status :complete
  log "2026-08-31 — Renamed Timeworking to Hourtaking; the practice now shares its defining act with the Thief of Hours mantle instead of using a generic fantasy working compound."
  log "2026-08-31 — Kept Hourtaking as the focused transfer of an interval between two present processes. Stay became the broad hold on one small process because it supplies no second recipient or action; city-scale suspension remains mantle work."
  topics :resonance, :danger, :"kinetic-freq", :cosmology
  prevalence :rare
  available_globally

  tier :focused
  effect "Take several moments from one present creature, projectile, mechanism, or physical process and assign that interval to one other immediate action"
  limits "The spell transfers only present physical duration, cannot revisit a completed event, and holds one source and one recipient within the practitioner's perception"
  consequence "Every transferred moment passes through the practitioner's body as lived age, fatigue, healing, hunger, and injury even when the mind retains only fragments of the interval"

  descriptive_identity(
    signs: "Clocks disagree with bodies, a moving subject hangs between positions, and the practitioner acquires age without an intervening life."
  )

  prose <<~PROSE
    Hourtaking moves a short interval rather than traveling through history. A falling blade can be denied its next moments while a defender spends them stepping aside. A mechanism can be slowed while a hand receives enough time to reach its cutoff. One casting names one source and one immediate recipient; the practitioner keeps both in perception until the interval is spent.

    The transfer remains physical. Hunger, healing, corrosion, thought, motion, and age all proceed according to the time a subject receives. A suspended casualty does not bleed, but neither do medicines reach the wound. Hourtaking cannot return to a completed event, repeat it, or choose another result.
  PROSE
  prose <<~PROSE, section: :dangers, heading: "Stolen Hours"
    The practitioner receives the age of every interval transferred. The body lives those moments as fatigue, thirst, healing, and the progress of any injury even when the mind was occupied for only a few breaths. No later hourtaking can remove that history without making a new transfer through another living subject.

    #{ref :thief_of_hours, "The Thief of Hours"} can hold a city, army, or catastrophe between moments while its bearer acts, exacting the whole denied interval from one life.

    #{encyclopedia_ref :stay, "Stay"} denies several breaths to one small process and sends that duration only through the practitioner. It holds rather than reallocates; no other action receives the missing time.
  PROSE
end
