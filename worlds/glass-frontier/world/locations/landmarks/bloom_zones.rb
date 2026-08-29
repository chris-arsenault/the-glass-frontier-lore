geographic_location :bloom_zones do
  name "Bloom Zones"
  summary "Bloom Zones are expanding reality tears in Kaleidos orbit and the Fracture, where physical rules and distance become inconsistent."
  playable_as :chronicle_location
  context_tags :"realm:orbital"
  subkind :hazardous_zone
  type_of :hazardous_zone
  path "player/locations/landmarks/bloom-zones.md"
  status :complete
  reviewed "2026-03-18"
  tags :orbital, :danger, :resonance
  prominence :renowned
  prominence_xrefs ["coremark", "displacement-council", "pyre", "tuners"]
  nature "Expanding tears where physical rules and distance become inconsistent"
  first_recorded 2378
  containment_status "Permanent cordons maintained around active zones"

  log "Reality doesn't work right here — dimensional instability, warped physics. New relic-magnitude artifacts are generated in the zones: genuinely new powers, not pre-collapse tech. The Adversary seeps through the tears, and the elves have increased their hidden presence [DM]."
  log "2026-08-20 — Reframed public uncertainty around recorded causes, observed effects, and frontier research; removed an erroneous crystal-substrate claim and named Xyloathax as the stable hab beside which a zone appeared."

  log "2026-08-21 — Bloom relics now form when a moving boundary pins an existing physical relationship into an exposed object. Formation is conditioned by structure, load, and the local boundary rather than by repetition."

  descriptive_identity(
    setting:
      "Tears in reality scattered through Kaleidos orbit and the " \
      "Fracture's belt, no two manifesting alike: in one zone walls " \
      "admit light but cannot be seen through, in another sound " \
      "arrives from the wrong direction, in another a ten-meter " \
      "corridor runs thirty, or three. In the worst of them even " \
      "direction loses a stable meaning.",
    activity:
      "The Displacement Council maintains permanent cordons around " \
      "the active zones and treats every inhabited orbit as a " \
      "possible containment site. The zones are also the system's " \
      "most productive source of new artifacts, each one's properties " \
      "established separately because no general theory predicts what " \
      "a zone will produce.",
    hazards:
      "The zones expand slowly, and new ones open where nobody has " \
      "cordoned — one appeared beside a stable ring hab in otherwise " \
      "clean space. Inside, the resonance landscape is so saturated " \
      "that signal drowns in noise; gnomes take the distortion " \
      "directly through their crystal-laced nervous systems, while " \
      "fae cross on the spatial dislocation they already manage daily."
  )

  prose <<~PROSE
    Man-made reality tears. Places where the #{encyclopedia_ref :resonance, "resonance"} environment has broken so thoroughly that physics stops behaving consistently. They exist in Kaleidos orbit — in the #{ref :the_shear, "Shear"}, adjacent to ring habs, and in otherwise clean orbital space — as well as in #{ref :the_fracture, "the Fracture"}'s asteroid belt. No accepted model accounts for the full distribution.

    They are expanding slowly and require constant containment by the #{ref :displacement_council, "Displacement Council"}. They are the system's most dangerous ongoing crisis and its most productive source of new artifacts. Each artifact's properties and risks have to be established separately because no general theory predicts what a zone will produce.
  PROSE
  prose <<~PROSE, section: :atmosphere, heading: "What They're Like"
    No two zones manifest the same way. The distortion varies with the local resonance state and the frequencies active within it.

    In some zones, walls admit light while remaining impossible to see through, and their surfaces lose a reliable boundary. In others, sound arrives from the wrong direction. Elsewhere, spatial relationships fail: a corridor that was ten meters long becomes thirty, or three. In the worst zones, even "direction" loses a stable meaning.

    #{encyclopedia_ref :tuners, "Tuners"} describe the resonance landscape inside a zone as saturated — so dense with information that signal-to-noise collapses. #{encyclopedia_ref :gnomes, "Gnomes"} are hit worst — their crystal-laced nervous systems pick up the distortion directly. #{encyclopedia_ref :fae, "Fae"} have an unexpected advantage — the spatial dislocation they manage daily is exactly the skill set the zones demand.
  PROSE
  prose <<~PROSE, section: :atmosphere, heading: "The Cordon Line"
    From a ship, a cordon edge is nothing to look at: open space, ordinary light, the boundary invisible except near a damping buoy or a #{ref :liras_wall, "Lira's Wall"} anchor. What marks it is the sign every ship's sensors register as the line approaches — the standing broadcast that a boundary is ahead and crossing is regulated.

    The custom is to register the crossing with whichever authority holds the local cordon and receive permission before proceeding. The practice is honored unevenly. Enforcement is thin, the punishments handed out for violations are arbitrary — a warning for one crew, a seizure for the next — and the offices around the cordons carry more corruption than any other institution the Frontier maintains. People who work the boundaries say the zones eat more than space: close to the Bloom, the patience and good faith the rest of the system runs on decay first.
  PROSE
  prose <<~PROSE, section: :mechanics, heading: "Growth"
    Bloom Zones grow organically. Frontier researchers have proposed several explanations for where new zones appear: a clear line of resonance sight between two zones, constructive interference patterns, or links through frequency dimensions that conventional maps cannot represent. Each hypothesis fits some appearances and fails to predict others.

    One zone appeared beside the stable ring hab #{ref :xyloathax, "Xyloathax"} in otherwise clean orbital space in 2431. The Council now treats every inhabited orbit as a possible containment site.

    #{ref :karet_three, "Karet-3"} opened around an inhabited freight hab in the outer Shear in 2426, long after the first cascade. Its permanent station at #{ref :outside, "Outside"} is evidence that new zones can become towns as well as emergencies: contractors rotate through the cordon while evacuated families build their lives beside it.
  PROSE
  prose <<~PROSE, section: :significance, heading: "Why the Fracture"
    The Bloom Zones near Kaleidos have known causes — #{ref :coremark, "Coremark"}'s overload at #{ref :pyre, "Pyre"} and the conductive guide left by the #{ref :second_span_trial, "Second Span trial"}. But Bloom-identical reality tears have manifested in #{ref :the_fracture, "the Fracture"}'s asteroid belt, thousands of kilometers from Kaleidos. The Fracture has its own ancient history of destruction — a shattered planet, cosmically older than the ring's collapse.

    Frontier researchers have found no shared cause that explains both groups of tears. Some argue that the two sites are connected through resonance geometry; others treat their apparent similarity as incomplete evidence. The dispute has drawn sustained concern within containment and research circles and little attention outside them.
  PROSE

  gm_note :triggered_by, "Fix one distortion per zone before the party enters and hold it: this zone bends distance, that one misplaces sound, another leaves no surface with a reliable edge. The rule does not carry to the next zone."
  gm_note :complicates, "A #{encyclopedia_ref :gnomes, "gnome"} in the party takes the distortion through their own nervous system while a #{encyclopedia_ref :fae, "fae"} crosses on skills they use daily, so one walk splits a mixed group into casualties and guides."
  gm_note :appears, "New zones open where nobody has cordoned, as one did beside #{ref :xyloathax} in 2431. Any orbit the party is standing in can become a containment site, which puts them inside a new perimeter rather than outside it."
end

relate :rel_bloom_zones_in_orbit_of_kaleidos, :in_orbit_of, :bloom_zones, :kaleidos do
  prose "The Bloom Zones sit in #{ref :kaleidos, "Kaleidos"}'s orbit, clustered across the mid-drift ring fragments where the cascade first took hold."
end
relate :rel_bloom_zones_in_orbit_of_the_fracture, :in_orbit_of, :bloom_zones, :the_fracture do
  prose "Their outer edge reaches toward #{ref :the_fracture, "the Fracture"}, where the distortion is worst and the cordons thinnest."
end

# --- history (moment) ---
moment :bloom_zones_created, year: 2378, of: :bloom_zones do
  summary "The Silent Bloom opened the first reality fractures across the mid-drift in 2378, creating the Bloom Zones."
  prose "The Bloom Zones were born in the #{ref :the_silent_bloom, "Silent Bloom"} cascade — the resonance disaster that tore the first reality fractures open across the mid-drift and left a crisis that has only spread since."
end
