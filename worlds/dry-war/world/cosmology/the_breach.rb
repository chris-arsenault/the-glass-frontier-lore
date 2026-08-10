phenomenon :the_breach do
  name "The Breach"
  subkind :catastrophe
  tags :catastrophe, :ecology
  prominence :mythic

  prose <<~PROSE
    The two years in which most of the planet stopped being habitable without being destroyed. It began #{elapsed :the_breach, ago: true}. No proposed cause matches the order of the first sites or their different effects.

    The world was already under enormous strain. The mycelium was changing soils, atmospheric chemistry and ocean microorganisms. The coalitions managed weather, desalination, clouds and vast heat stores, while surviving human governments ran climate programmes across both. No single programme matches the places where the Breach began or the order in which it spread. Line crews say the work made the world thin enough for something to notice us.
  PROSE

  prose <<~PROSE, section: :cause, heading: "Why There Is No Model"
    Two expeditions to the same coordinates return incompatible surveys, each consistent with itself. Instruments that function inside a contested zone stop farther in, and fail differently depending on the route taken.

    The #{ref :the_great_root, "Great Root"} treats the event as an ecology that a large enough biology will eventually read. #{ref :continuity, "Continuity"} treats it as a physical process described with the wrong measurements. After #{elapsed :the_reclamation, approx: true}, route-dependent failures and changes that return to reclaimed ground still fall outside both accounts.
  PROSE

  prose <<~PROSE, section: :aftermath, heading: "What It Left"
    Forests still grow, oceans still move and cities remain standing. Things occupying the old niches of animals still feed, breed and migrate.

    Life in those regions follows constraints unknown elsewhere. A forest grows toward memory rather than light. Predators appear only once something has become afraid of them. An abandoned city holds organisms whose anatomy depends on the direction of approach. Some coastlines have tides that take no reference from the moon.

    Sterilized ground kept producing new organisms without a visible parent or reservoir, and the #{ref :the_reclamation_campaigns, "reclamation"} ended. Line crews say the environments are learning.
  PROSE

  log "2026-08-10 — Removed an active-during link to the Holding. The Breach itself lasted from 2068 to 2070; its consequences continue into the present."
end
