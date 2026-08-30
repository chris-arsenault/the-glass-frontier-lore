phenomenon :kneeling do
  name "The Kneeling"
  summary "The Kneeling makes a region of the Fracture bend permanently toward whichever sustained force dominates it."
  subkind :physical_phenomenon
  status :complete
  tags :resonance, :"outer-system", :danger, :"structural-freq"
  prominence :recognized
  trigger "One coherent force remains dominant in an affected mass long enough to establish a repeated load direction"
  effect "Rock, structures, trajectories, and local distance progressively bend toward the dominant force"
  recurrence "The active field migrates among Fracture bodies, announced by the same slow three-pulse structural tone"
  ending "Removing or repeatedly reversing the dominant force stops further bending but does not straighten what has already knelt"
  mitigation "Distribute load among changing directions, interrupt its rhythm, or leave the affected mass before one direction becomes dominant"
  anchor_behavior "Settles on the strongest repeated force carried through one connected mass and migrates when that force ends"
  medium "Connected planetary debris, attached structures, and local trajectories"
  hazard "A battlefield, settlement, or fragment can become permanently inclined toward its strongest engine, weapon, or source of gravity"

  descriptive_identity(
    signs: "A slow three-pulse tone travels through the ground while straight structures acquire a shared lean toward the strongest repeated force.",
    effects: "Sustained thrust, recoil, gravity, or impact becomes a direction the affected region increasingly treats as downward.",
    hazards: "Removing the force halts the change without undoing it, leaving tilted settlements, curved approaches, and debris paths that preserve the old dominance."
  )

  prose <<~PROSE
    The Kneeling makes persistence into geography. A mining drive fired in one direction for too long draws its fragment into a bow around the exhaust. A fortress that answers every attack with the same battery eventually leans toward its own fire. On the largest affected bodies, approach paths curve and loose debris falls toward a direction that has no planetary claim to down.

    The phenomenon is one migrating field within #{ref :the_fracture, "the Fracture"}. Surveyors identify it by a slow three-pulse tone carried through every affected mass and by a common bend vector that changes only when the field moves. Separate deformations made during the same occupation align across open space.
  PROSE
  prose <<~PROSE, section: :dangers, heading: "What Remains Bent"
    The change accumulates while one force dominates. Turning off the engine or silencing the battery stops further movement and leaves the result in place. A long occupation can be read from the terrain it produced: landing fields tilted toward old warships, tunnel mouths drawn toward vanished drills, and whole fragments curved around machines removed generations earlier.

    Crews exploit the field by changing what dominates it. A sustained broadside can make enemy ground kneel toward the guns until emplacements tear free. Engines placed on an opposing vector can halt that change, but if their rhythm becomes dominant the field begins writing the new force into the same mass. Victory does not restore the battlefield; it decides which power the battlefield remembers.
  PROSE

  gm_note :complicates, "Any force used repeatedly in the same direction begins becoming local down, so winning with one engine, weapon, or gravitational pull permanently reshapes the ground around it."
end

relate :rel_kneeling_manifests_fracture, :manifests_at, :kneeling, :the_fracture
