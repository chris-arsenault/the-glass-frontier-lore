geographic_location :bloom_zones do
  name "Bloom Zones"
  path "player/locations/landmarks/bloom-zones.md"
  tags :orbital, :danger, :resonance
  prominence :renowned
  prominence_xrefs ["coremark", "displacement-council", "pyre", "tuners"]

  prose <<~PROSE
    Man-made reality tears. Places where the #{ref :resonance, "resonance"} environment has broken so thoroughly that physics stops behaving consistently. They exist in Kaleidos orbit — in the #{ref :the_shear, "Shear"}, adjacent to ring habs, in otherwise clean orbital space — and, for reasons nobody can explain, in the #{future "Fracture"}'s asteroid belt.

    They are expanding slowly. They require constant containment by the #{ref :displacement_council, "Displacement Council"}. They are the system's most dangerous ongoing crisis and its most productive source of artifacts nobody understands.
  PROSE
  prose <<~PROSE, section: :atmosphere, heading: "What They're Like"
    No two zones manifest the same way. The distortion depends on the local resonance environment, the crystal substrate, the specific frequencies involved.

    In some zones, walls develop a translucency that isn't transparency — not see-through, but not committed to being solid. In others, sound arrives from directions it shouldn't. In others, spatial relationships stop being reliable — a corridor that was ten meters long is now thirty, or three. In the worst zones, the concept of "direction" softens.

    #{ref :tuners, "Tuners"} describe the resonance landscape inside a zone as saturated — so dense with information that signal-to-noise collapses. #{ref :gnomes, "Gnomes"} are hit worst — their crystal-laced nervous systems pick up the distortion directly. #{ref :fae, "Fae"} have an unexpected advantage — the spatial dislocation they manage daily is exactly the skill set the zones demand.
  PROSE
  prose <<~PROSE, section: :mechanics, heading: "Growth"
    Bloom Zones grow organically. New zones appear at what seems like random, but the connections follow non-spatial or higher-dimensional logic — a clear line of resonance sight between two zones, constructive interference patterns, links through frequency dimensions that conventional mapping can't represent. Not entirely random, but not easy to predict.

    A zone can appear next to a stable ring hab in clean orbital space. This is the nightmare scenario, and it has happened.
  PROSE
  prose <<~PROSE, section: :significance, heading: "Why the Fracture"
    The Bloom Zones near Kaleidos have known causes — #{ref :coremark, "Coremark"}'s overload at #{ref :pyre, "Pyre"}, the #{future "Span replication experiment"}. But Bloom-identical reality tears have manifested in the #{future "Fracture"}'s asteroid belt, thousands of kilometers from Kaleidos. The Fracture has its own ancient history of destruction — a shattered planet, cosmically older than the ring's collapse.

    Why is the Bloom there? Why not anywhere else? Those who look closely are deeply concerned. Most people either don't believe it or don't care. The connection is one of the system's open questions with no satisfying answer.
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
