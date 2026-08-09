phenomenon :the_breach do
  name "The Breach"
  tags :catastrophe, :ecology
  prominence :mythic

  prose <<~PROSE
    The two years in which most of the planet stopped being habitable without being destroyed. It began #{elapsed :the_breach, ago: true} and nobody agrees on what happened.

    The world was already under enormous strain, and both gods were intervening at planetary scale — the mycelium modifying soils, atmospheric chemistry and ocean microorganisms; the coalitions managing weather, desalination, cloud formation and enormous thermal systems; surviving human governments running their own climate programmes on top of both. None of it caused the Breach in any sense a model can carry. The most durable account is not an explanation at all: the interventions made the world thin enough for something to notice us.
  PROSE

  prose <<~PROSE, section: :cause, heading: "Why There Is No Model"
    Science requires that the object of study behave consistently enough to be described. Affected regions do not. Two expeditions to the same coordinates return incompatible surveys, both internally coherent. Instruments that function inside a contested zone stop functioning further in, and stop in different ways depending on the route taken.

    The #{ref :the_great_root, "Great Root"} maintains that the event is ecological and will eventually be legible to a large enough biology. The #{ref :continuity, "Continuity"} maintains that it is a physical process being described badly. Both positions have been held, unchanged, for #{elapsed :the_reclamation, approx: true}, which is itself the strongest evidence that neither is close.
  PROSE

  prose <<~PROSE, section: :aftermath, heading: "What It Left"
    Not ruins. That would have been survivable. Forests still grow, oceans still move, animals — or things occupying the niches animals occupied — still reproduce, and the cities are standing.

    The systems operating there are simply no longer constrained the way biology is constrained. A forest grows toward memory rather than light. Predators appear only once something has become afraid of them. An abandoned city holds organisms whose anatomy depends on the direction of approach. There are coastlines with tides that take no reference from the moon.

    Sterilized ground kept producing new organisms without a visible parent or reservoir, and the #{ref :the_reclamation_campaigns, "reclamation"} ended. Line crews say the environments are learning.
  PROSE
end
