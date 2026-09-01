phenomenon :kneeling do
  name "The Kneeling"
  summary "The Kneeling is a migrating field in the Fracture that turns sustained force into a permanent local down, bending connected rock, structures, and approach paths toward the direction that remained dominant."
  subkind :physical_phenomenon
  status :complete
  tags :resonance, :"outer-system", :danger, :"structural-freq"
  prominence :recognized
  trigger "One coherent load repeats through a connected mass until the slow three-pulse tone recurs without a change in the load direction"
  effect "Rock, attached structures, debris fall, and approach paths progressively bend toward the dominant thrust, recoil, gravity, or impact"
  recurrence "Surveyors track one field migrating among Fracture bodies by the same three-pulse tone and the shared bend vector left by each occupation"
  ending "Further bending stops when the dominant load ceases or the field migrates; the accumulated curve remains in the mass"
  mitigation "Alternate working directions before the tone settles, distribute loads across changing bearings, or move off the affected body before one vector dominates"
  anchor_behavior "Settles on the strongest repeated force transmitted through one connected mass and migrates after that dominance ends"
  medium "Connected Fracture rock and every rigid structure mechanically coupled to it"
  hazard "Landing fields, tunnels, anchored camps, and debris paths can retain the direction of a drive, drill, weapon, or gravity source long after it is removed"

  descriptive_identity(
    signs: "A slow three-pulse tone travels through the ground, loose material begins settling toward the working load, and straight survey lines acquire one shared lean.",
    effects: "Repeated thrust, recoil, gravity, or impact becomes a local down written into rock, coupled structures, and nearby approach paths.",
    hazards: "The permanent curve misaligns seals and landings, turns old machinery pits into slopes, and keeps drawing debris toward equipment removed generations earlier."
  )

  question "Which Encyclopedia phenomenon type owns the reusable permanent-load behavior instantiated by the Kneeling?", raised: "2026-08-31"

  prose <<~PROSE
    Fracture crews call a body kneeling when the slow three-pulse tone repeats through its rock and each new crack, settling line, and approach error points toward the same working force. A mining drive held on one bearing draws its fragment into a bow around the exhaust. A battery fired from the same emplacement pulls its foundation toward the recoil. On the largest bodies, approach paths curve and loose debris settles toward the dominant load.

    Surveyors identify the Kneeling as one migrating field within #{ref :the_fracture, "the Fracture"}. The pulse spacing remains constant, and bodies occupied in sequence preserve one bend vector until the field moves. Instruments record the tone ending on one mass and beginning on another; they have yet to record the field during the open space between those events.
  PROSE
  prose <<~PROSE, section: :mechanics, heading: "Surveying the Old Load"
    The accumulated bend is a load record. Landing fields tilt toward old warships, tunnel mouths draw toward vanished drills, and whole fragments curve around machines removed generations earlier. Fracture surveys therefore chart ordinary gravity and the Kneeling vector separately. A plumb reading gives the present pull; aligned foundations, debris tracks, and approach errors show the force that held during the field's occupation.

    One leaning wall does not establish an occupation. Surveyors require the three-pulse tone or a shared vector across separated deformations before marking a body as knelt. Where the tone has ended, the alignment remains their evidence that the migrating field passed through.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Changing the Bearing"
    Salvage camps rotate drilling stands and drive firings through several bearings before the tone settles. Loads that cannot move are interrupted between cycles or paired with work on another face of the fragment. These changes prevent one direction from accumulating; they do not straighten a curve already written into the mass.

    A steady opposing force becomes another candidate for dominance. It may halt the old bend and then begin a new one, leaving an S-shaped tunnel or two approach errors in the same landing line. Fighters can use sustained fire to pull an emplacement toward its own guns until its foundations tear free, but the ground keeps the last dominant bearing after the weapons stop.
  PROSE

  gm_note :triggered_by, "Repeated use of one engine, drill, weapon, or gravitational pull makes that bearing local down: loose matter shifts first, fixed structures follow, and stopping the machine leaves the bend in place."
end

relate :rel_kneeling_manifests_fracture, :manifests_at, :kneeling, :the_fracture
