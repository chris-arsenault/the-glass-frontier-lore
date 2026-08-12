phenomenon :the_breach do
  name "The Breach"
  subkind :catastrophe
  tags :catastrophe, :ecology
  prominence :mythic
  custom_fact :began, 2068, type: :year, label: "Began"
  extent "Most of Earth"
  ended 2070
  fact :duration, 2

  prose <<~PROSE
    The Breach names the two years in which most of the planet stopped being habitable without being destroyed. It began #{elapsed :the_breach, ago: true}. Forests, tidal flats and agricultural districts developed plants, animals, soils and weather that changed together.

    The first sites appeared on several continents. No proposed cause matches their order or their different effects.
  PROSE

  prose <<~PROSE, section: :cause, heading: "Competing Accounts"
    Two expeditions to the same coordinates return incompatible surveys, each consistent with itself. Instruments that function inside a contested zone stop farther in, and fail differently depending on the route taken.

    Chinese ecologists treat each zone as a living system that can eventually be read. Coalition laboratories treat the same changes as physical processes measured with the wrong instruments. Route-dependent failures and changes that return to cleared ground still fall outside both accounts.
  PROSE

  prose <<~PROSE, section: :aftermath, heading: "What It Left"
    Forests still grow, oceans still move and cities remain standing. Things occupying the old niches of animals still feed, breed and migrate.

    Across the altered regions, life follows constraints unknown elsewhere. A stand of trees may grow toward an earlier fire rather than toward light. Animals change migration and feeding together with the plants around them. The same ground can remain ordinary for years after a line crew clears it.

    Cleared ground along the Amur kept producing new organisms without a visible parent or reservoir, ending the #{ref :the_reclamation_campaigns, "joint reclamation"} there. Line crews still cut each change back as it appears.
  PROSE

  log "2026-08-10 — Removed an active-during link to the Holding. The Breach itself lasted from 2068 to 2070; its consequences continue into the present."
  log "2026-08-10 — Kept the Breach's global extent while removing it as the spine of the present-day timeline."
end

moment :breach_begins, year: 2068, of: :the_breach do
  title "First Breach zones recorded"
end
