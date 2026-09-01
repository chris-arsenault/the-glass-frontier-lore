encyclopedia :shaping do
  name "Shaping"
  summary "Shaping is the resonant alteration of nonliving matter without cutting, melting, or replacing it."
  kind :ability
  subkind :resonant_effect
  status :complete
  log "2026-08-31 — Classified Shaping as narrow because it changes person-sized material behavior beyond ordinary workshop practice. Seaming became the broad operation on one existing join; district-scale reforming remains the Worldsmith mantle's reach."
  topics :resonance, :"structural-freq", :materials, :rebuilding
  prevalence :rare
  available_globally

  tier :narrow
  effect "Bend, join, part, or smooth one contiguous person-sized mass of understood nonliving material within the practitioner's reach"
  limits "The spell preserves mass, composition, and material history, cannot alter living tissue, and follows the practitioner's actual model of every void, join, and load in the target"
  consequence "The practitioner's corresponding joints take the target's working strain as numbness and painful stiffness; an omitted load can fracture the body as it becomes a flaw in the finished work"

  descriptive_identity(
    signs: "Worked matter moves without heat or tool marks. Grain, seams, and old damage remain visible while their paths bend into the new form."
  )

  prose <<~PROSE
    Shaping changes one contiguous person-sized mass of nonliving matter within the practitioner's reach. A shaper can part a door along a new seam, draw shattered hull plate together, turn a fallen beam into an arch, or close a breach around a casualty. The worked substance does not liquefy. It moves according to its own structure: crystal faces travel through glass, grain bends through stone, and old welds curve through metal.

    The spell is exact and literal. Mass remains mass. A hollow stays hollow unless its walls are moved to fill it. Mixed substances retain their boundaries unless the shaper understands how they can be joined. Living tissue resists the effect completely, though armor, implants, and foreign matter inside a body can still answer it.
  PROSE
  prose <<~PROSE, section: :limits, heading: "Understanding the Load"
    Shaping follows the model held by the person using it. Touch supplies much of that model, but training supplies the rest: the direction of a load, the way a material fails, the space hidden behind a panel, and the difference between a crack that can close and one carrying contamination. A clean alteration made from a bad model is still a bad alteration.

    The error can ruin an object, trap a hand, or make a repair fail under its first real load. The same error enters the practitioner's corresponding joints as pain, stiffness, or fracture. Crews therefore expose joints, sound voids, and mark live conduits before a shaper begins. #{ref :worldsmith, "The Worldsmith"} extends Shaping across connected structures measured in districts and carries a harsher version of the same consequence.

    #{encyclopedia_ref :seaming, "Seaming"} moves only an existing join through a hand-sized extent of material. It is broad-band work used where the required change follows a seam rather than reforming the surrounding mass.
  PROSE
end
