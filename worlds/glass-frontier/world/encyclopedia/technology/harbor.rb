encyclopedia :harbor do
  name "Harbor"
  aka "air frame", "bellframe"
  kind :technology
  subkind :infrastructure
  status :complete
  log "2026-08-31 — Renamed Bellhouse Air Frame to Harbor; dock-country hostels use the port word for the frame that turns any sealed room into temporary refuge."
  topics :"ring-hab", :danger, :household, :rebuilding
  prevalence :uncommon
  appears_when any: { place: [:sealed_hab, :dock] }
  summary "Harbor is folding emergency life support for a sealed room: an accordion frame of scrubber panels and stored air that unfolds wall to wall and sustains its rated twelve people through a dock closure. The public hostels developed the pattern around one plain promise — the guests survive whatever the port does."
  function "Sustains a sealed room's occupants through closures, pressure events, and air faults — twelve sleepers, one frame, a full closure's duration"
  classes "The hostel standard, the household half-frame, and the dock-office long-duration pattern with doubled stores"
  capacity "A standard frame carries twelve through a closure at rest; the drill card on every frame states the arithmetic for more people, less time"
  operating_limit "The frame buys duration at rest — its numbers assume sleepers, and a room that spends the closure pacing and arguing is spending the margin"

  descriptive_identity(
    appearance: "A waist-high accordion cabinet in hostel livery that unfolds wall to wall " \
                "into a lattice of scrubber panels, air cells, and hanging lamps, with the " \
                "drill card and the last inspection's wax seal riveted at eye height.",
    working: "Two people unfold a frame in the drilled minute — walls, seal checks, the " \
             "scrubber panels wetted from their own store — and the room becomes its own " \
             "small hab: air worked by the panels, warmth pooled, the frame's soft " \
             "clicking the sound of the margin being spent slowly.",
    risks: "The frame keeps a room alive and keeps its own books — the panels' color " \
           "shows the margin plainly — and the pattern's one demand is the drill, since " \
           "a frame unfolded badly in the event's first panic protects exactly as well " \
           "as it was practiced."
  )

  prose <<~PROSE
    The great port hostels — Fourth Bell House first — answered an old dock-country nightmare with furniture. They call the frame a *harbor* because it turns any sealable room into refuge when a closure seals the district. The cabinet unfolds wall to wall in a drilled minute and makes the room its own small hab: scrubber panels working the air, stored cells topping the pressure, hanging lamps in the lattice, and the drill card's plain arithmetic riveted at eye height — twelve sleepers, a full closure, the numbers assuming rest. The hostels drill their staff on the frames the way ships drill boats, and the pattern's philosophy is stated in Fourth Bell House's original standing order, still posted: the guests survive whatever the port does.

    The frames spread from the hostels to everywhere sealed rooms hold sleeping strangers — the dock offices, the waiting halls, the household half-frames that ride under family bunks — and their maintenance culture is the pattern's second invention: every frame carries its inspection seal in wax, the wetting stores are cycled on a posted calendar, and hostel guests in dock country learn to glance at the seal date on check-in with the same reflex that reads a lifeboat's davits. The scrubber panels grade their own remaining margin by color as they work, dusk-blue fading toward gray, and closure veterans describe the long waits by the palette — a one-panel night, a night that went to gray — in the dock districts' understated idiom for how close whatever it was came.
  PROSE

  cue "The cabinet unfolds wall to wall in a practiced minute — panels, cells, hanging lamps — and twelve strangers' berths become one small hab with its own soft clicking heartbeat."
  cue "Checking in, the traveler's eye goes to the wax inspection seal on the folded frame by the wall, and the clerk watches them look with professional approval."
  affordance "A maintained frame turns any sealable room into twelve survivable berths for a closure's full duration — which is why dock-country hostels post their inspection seals like licenses and closures in frame country are waits rather than emergencies."
  pressure "The margin assumes sleepers and honest maintenance, so the frame's enemies are panic and neglect — the badly unfolded frame and the stale wetting store are the incident reports — and the drill calendar is the whole difference."
  variation "Hostels run the full standard with staff drills; households rack half-frames under the bunks; and the dock offices' long-duration pattern doubles the stores for the closures that arrive unscheduled."
  variation "Closure veterans measure their nights in panel colors — a one-panel night, a night that went to gray — and the dock districts hear the difference exactly."
end
