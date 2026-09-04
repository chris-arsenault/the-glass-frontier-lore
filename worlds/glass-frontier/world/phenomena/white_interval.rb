phenomenon :white_interval do
  name "The White Interval"
  summary "The White Interval is the single white-edged distance plane charted in the Deep Shear: paths crossing it acquire hours or days of traversable space while their endpoints remain visibly adjacent, and its collapse leaves phantom geography in route records."
  type_of :middle
  subkind :physical_phenomenon
  status :complete
  tags :resonance, :"fluid-reality", :danger, :navigation
  prominence :recognized
  trigger "The drifting plane crosses a doorway, berth, convoy line, or other path whose endpoints are held adjacent by structure, sight, or a maintained route"
  effect "The endpoints remain visibly beside each other while every physical and signal path through the plane acquires the same added travel time"
  recurrence "Deep-runners recognize one plane moving through the Deep Shear by its white edge and the paired ringglass pattern that persists across appearances"
  ending "The inserted distance collapses when ringglass closes the same pattern on both faces, returning anything still inside through one face in entry order"
  mitigation "Route around the plane, measure and provision for its full crossing time, or seed both faces with matched ringglass to choose an early collapse"
  anchor_behavior "Moves through hulls and open space as a plane, adding distance only to paths that cross from one face to the other"
  medium "Open space, occupied structures, maintained routes, signals, travelers, and loose ringglass"
  content "Traversable distance with ordinary elapsed time, holding every signal, traveler, and load until it completes the crossing or the interval collapses"
  hazard "A visible doorway can become days away, travelers can exhaust supplies inside the added distance, and corrected space can leave instruments following routes that have ceased to exist"

  descriptive_identity(
    signs: "A transparent plane with a white edge crosses a route; the far side remains close by sight while a timed signal takes minutes, hours, or days to arrive.",
    effects: "Every crossing gains the measured interval, and loose ringglass gathers into the same paired pattern on the plane's two faces.",
    hazards: "Rooms and convoys remain in view across days of travel, while collapse returns entrants in sequence and leaves charts and navigation systems carrying vanished distance."
  )

  prose <<~PROSE
    Deep-runners named the White Interval from the two measurements entered in a route log: the thin white edge seen across the path and the interval counted before a signal reaches the visible far side. Sight preserves the old adjacency. Travel follows the inserted one. A hand may take minutes to reach the surface it appears to meet, and a corridor may require days of walking while its far door remains in view.

    A pair of repeaters gives the working measure: a pulse sent across the plane and returned carries twice the crossing delay. Matter, people, and signals all take that measured time. Loose #{encyclopedia_ref :ringglass, "ringglass"} gathers at paired points on the two faces, preserving an irregular pattern as the plane moves through the #{ref :deep_shear, "Deep Shear"}. Deep-runners use that pattern to identify the same interval after it crosses another hull or route.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Crossing Watch"
    A crew that cannot route around the plane establishes one repeater on each face, measures the delay twice, and provisions the crossing for the longer result. The entry watch records every person and load in order. A destination that looks one step away receives no voice, aid, or cargo before the measured interval has passed.

    The plane continues drifting while the inserted path remains usable. Route records carry the face positions, the measured delay, and the paired ringglass pattern. Those three marks let a later crew recognize the interval after the white edge has crossed a different structure.
  PROSE
  prose <<~PROSE, section: :aftermath, heading: "Phantom Geography"
    Ringglass accumulates naturally until the patterns on both faces close and the inserted distance collapses. Travelers still inside emerge through the return face in entry order, carrying the age, hunger, and supplies spent during transit. Crews can force the event with matched seed glass; completing the pair from a chosen face makes that face the return, while people and loose loads distributed through the interval may arrive moments apart or together.

    The obsolete route left in instruments and memory is called phantom geography. Navigation systems continue budgeting the vanished delay, a pursued vessel can hide a maneuver inside the old timing, and a pilot following a learned route may spend fuel turning around an absent obstacle. Deep-runner logs strike an interval only after a fresh pulse crosses with no added delay.
  PROSE

  gm_note :appears, "A doorway, berth, or objective remains visibly nearby while every signal and traveler crossing the white edge acquires the same hours- or days-long passage."
  gm_note :triggered_by, "Completing the matched ringglass pattern collapses the interval toward the chosen face; everyone still inside returns in entry order, but separated people and loads may arrive in the same moment."
end

relate :rel_white_interval_manifests_deep_shear, :manifests_at, :white_interval, :deep_shear
