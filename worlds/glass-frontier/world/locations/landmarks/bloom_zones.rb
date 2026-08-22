geographic_location :bloom_zones do
  name "Bloom Zones"
  playable_as :chronicle_location
  subkind :hazardous_zone
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

  prose <<~PROSE
    Man-made reality tears. Places where the #{ref :resonance, "resonance"} environment has broken so thoroughly that physics stops behaving consistently. They exist in Kaleidos orbit — in the #{ref :the_shear, "Shear"}, adjacent to ring habs, and in otherwise clean orbital space — as well as in #{ref :the_fracture, "the Fracture"}'s asteroid belt. No accepted model accounts for the full distribution.

    They are expanding slowly and require constant containment by the #{ref :displacement_council, "Displacement Council"}. They are the system's most dangerous ongoing crisis and its most productive source of new artifacts. Each artifact's properties and risks have to be established separately because no general theory predicts what a zone will produce.
  PROSE
  prose <<~PROSE, section: :atmosphere, heading: "What They're Like"
    No two zones manifest the same way. The distortion varies with the local resonance state and the frequencies active within it.

    In some zones, walls admit light while remaining impossible to see through, and their surfaces lose a reliable boundary. In others, sound arrives from the wrong direction. Elsewhere, spatial relationships fail: a corridor that was ten meters long becomes thirty, or three. In the worst zones, even "direction" loses a stable meaning.

    #{ref :tuners, "Tuners"} describe the resonance landscape inside a zone as saturated — so dense with information that signal-to-noise collapses. #{ref :gnomes, "Gnomes"} are hit worst — their crystal-laced nervous systems pick up the distortion directly. #{ref :fae, "Fae"} have an unexpected advantage — the spatial dislocation they manage daily is exactly the skill set the zones demand.
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
end

relate :rel_bloom_zones_in_orbit_of_kaleidos, :in_orbit_of, :bloom_zones, :kaleidos do
  prose "The Bloom Zones sit in #{ref :kaleidos, "Kaleidos"}'s orbit, clustered across the mid-drift ring fragments where the cascade first took hold."
end
relate :rel_bloom_zones_in_orbit_of_the_fracture, :in_orbit_of, :bloom_zones, :the_fracture do
  prose "Their outer edge reaches toward #{ref :the_fracture, "the Fracture"}, where the distortion is worst and the cordons thinnest."
end

# --- history (moment) ---
moment :bloom_zones_created, year: 2378, of: :bloom_zones do
  prose "The Bloom Zones were born in the #{ref :the_silent_bloom, "Silent Bloom"} cascade — the resonance disaster that tore the first reality fractures open across the mid-drift and left a crisis that has only spread since."
end
