phenomenon :white_interval do
  name "The White Interval"
  summary "The White Interval is a transparent moving plane that inserts traversable distance between adjacent places and leaves false geography after collapsing."
  type_of :distance_insertion
  subkind :physical_phenomenon
  status :complete
  tags :resonance, :"fluid-reality", :danger, :navigation
  prominence :recognized
  trigger "The transparent plane crosses two places held adjacent by structure, sight, or a maintained route"
  effect "The places remain visible beside each other while the path between them acquires distance from a few steps to several days of travel"
  recurrence "One plane drifts through the Deep Shear, identifiable by a white edge, an exact signal delay, and the ringglass drawn toward both faces"
  ending "Accumulated ringglass eventually coats both faces in the same pattern and collapses the inserted distance"
  mitigation "Route around the plane, seed both faces with matched ringglass to force an early collapse, or provision travelers for the full inserted distance"
  anchor_behavior "Moves as a plane through structures and open space, adding distance only along paths that cross its two faces"
  medium "Open space, occupied structures, maintained routes, and loose ringglass"
  hazard "A visible doorway can become days away, travelers can be stranded inside the added distance, and collapse leaves instruments navigating space that no longer exists"

  descriptive_identity(
    signs: "A white-edged transparent plane crosses the scene; the far side remains visible at arm's reach while signals and travelers take far longer to arrive.",
    effects: "Every path through the plane gains the same inserted distance, and loose ringglass drifts toward mirrored positions on its two faces.",
    hazards: "The interval can split rooms, fleets, and bodies of travelers from their visible destination, then collapse while maps and trained navigation still include the vanished space."
  )

  prose <<~PROSE
    The White Interval is visible as a clear plane with a white edge. What lies beyond it can remain close enough to touch by sight. Crossing tells the truth. A hand may take minutes to reach the surface it appears to meet. A corridor can require days of walking while its far door remains visible throughout. Every signal acquires the same delay as physical travel.

    The plane moves through the #{ref :deep_shear, "Deep Shear"} without respecting hull or open space. Loose ringglass gathers at paired points on its two faces. The pattern provides the most reliable way to identify the same interval after it has crossed another route or structure.
  PROSE
  prose <<~PROSE, section: :dangers, heading: "After the Distance Is Gone"
    When enough ringglass forms the same pattern on both faces, the inserted distance collapses. Travelers still inside emerge at the nearer face in the order they entered, often carrying days of age and supplies spent in a space that no longer measures anywhere. Navigation systems, trained pilots, and route records continue to account for the lost distance unless corrected.

    That remnant is called phantom geography. A pursued vessel can hide its maneuver inside it. A crew following a memorized route may spend fuel turning around an absent obstacle. Seeding both faces can force an early collapse, but doing so while people are inside determines where they emerge and whether the mass following them arrives in the same moment.
  PROSE

  gm_note :appears, "The objective remains visibly a few steps away while the crossing takes hours or days, and the group can force the interval to collapse only by deciding where everyone still inside will emerge."
end

relate :rel_white_interval_manifests_deep_shear, :manifests_at, :white_interval, :deep_shear
