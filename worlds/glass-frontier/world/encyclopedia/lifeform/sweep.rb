encyclopedia :sweep do
  name "Sweeps"
  summary "Sweeps are translucent, slow-moving cultivated organisms that graze spills, refuse, and loose sealant along fixed corridor routes in sealed habitats. They are the surviving sanitation stock of the intact ring, keeping their own three-century circuits, and habs build around them."
  kind :lifeform
  subkind :animal
  status :complete
  topics :"ring-hab", :"ring-era", :ecology, :household
  prevalence :common
  appears_when all: { place: [:sealed_hab] }
  origin "Ring-era cultivated sanitation stock"
  function "Grazes organic waste, spills, and degraded sealant along fixed corridor circuits"
  resonance_relation "Follows residual signal in ring-era deck marker compound and stops at intact boundary paint"

  descriptive_identity(
    appearance: "A knee-high mass of firm translucent tissue that moves like slowly poured glass, " \
                "faintly warm, with a darker digestive core that shows what it has eaten. Older " \
                "sweeps carry a rind of embedded grit and paint flakes along the base.",
    behavior: "It walks a fixed circuit at a fixed pace, arriving at each gallery near enough to " \
              "shift-change that households set refuse out by its schedule. It pours itself around " \
              "obstacles and stops dead at ring-era boundary paint.",
    threat: "A sweep grazes whatever lies on its line, and a sleeper's outflung hand reads to it " \
            "as a spill. Contact burns like strong lye and takes cloth, hair, and skin in that " \
            "order. The route is safe to live beside and dangerous to lie down on.",
    senses: "It reads the deck under it: surveys measure residual signal in the marker compound " \
            "under every established sweep route, and a sweep set on unmarked deck wanders until " \
            "it starves or finds a line.",
    risks: "Feeding a sweep off its route draws it off the route, and a drawn sweep re-walks its " \
           "circuit from the nearest marker in whatever direction it happens to be facing — " \
           "through whatever has been built across the old line since."
  )

  prose <<~PROSE
    Ring fragments with surviving sanitation stock keep sweep circuits through their corridors. A sweep is a knee-high mass of firm translucent tissue that moves at a pace a person overtakes at a stroll, grazing spilled food, refuse, mold, and degraded sealant. Intact-ring maintenance registers list each circuit and feeding schedule beside pumps and filters, and the sweeps in Carom's galleries descend from that stock.

    Since the Glassfall the sweeps have kept their own schedule. The circuits they walk are older than the break, laid down in a marker compound the ring painted into its decks, and they cut across today's settlements on the ring's old logic. Habs have grown around their sweeps the way a road grows around a river crossing: refuse points sit on the route, bunkrooms sit off it, and a corridor the route crosses gets a raised sill and a painted warning, because a sweep stopped by new construction stands against the obstacle and grazes the same span of wall until the wall needs replacing.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Living on the Route"
    The working rules are old and short. Set waste on the route and it is gone by shift-end. Keep bedding, cargo, and animals off the route, because a sweep takes an outflung hand for a spill and its digestion burns like strong lye. Feed a sweep at its refuse points only: a sweep drawn off its line rejoins the circuit at the nearest marker facing whichever way it happens to face, and a sweep re-walking a buried line goes through floorboards, cold stores, and nursery walls with the same patience it gives a corridor.

    A stopped sweep prompts an air and temperature check. They stall where the air runs wrong and thin or slow when a hab grows cold. A dead sweep is cut from its route and the circuit posted as unswept until a neighboring hab can spare a young one, carried over in a lined crate with its feeding schedule written on the lid.
  PROSE

  cue "A translucent mass the height of a child's knee pours itself along the corridor wall at an unhurried pace, and foot traffic parts around it with every head bent to its own business."
  cue "Refuse stands in open pans along one edge of the gallery, set out to a schedule everyone seems to know, and the pans nearest the junction are already empty and clean."
  affordance "A sweep's route is reliable disposal — anything organic left on the line is gone by shift-end — and a stopped or thinning sweep is an early warning about the hab's air or heat that runs ahead of the instruments."
  pressure "The route treats a sleeper as refuse, and a sweep drawn off its circuit by careless feeding re-walks the original line through whatever has been built across it since."
  variation "Established habs raise sills and paint warnings where routes cross living space; newer settlements on old fragments discover their routes one burned bedroll at a time."
  variation "Some galleries feed their sweep heavily at refuse points for a fast circuit; others keep a leaner animal whose slower circuit covers the off-shift."
end
