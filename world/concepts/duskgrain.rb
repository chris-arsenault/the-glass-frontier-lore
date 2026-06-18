resource :duskgrain do
  name "Duskgrain"
  path "player/concepts/duskgrain.md"
  tags :resonance, :danger, :materials
  prominence :recognized

  prose <<~PROSE, section: :how_it_works, heading: "How It Works"
    A crystallized substance found in #{ref :bloom_zones, "Bloom Zones"} and occasionally in deep #{ref :the_shear, "Shear"} pockets. Duskgrain forms where narrow-bandwidth resonance has been sustained for extended periods — it's essentially resonance energy that has solidified into a physical material. The grains are small (rarely larger than a seed), dark, and produce a faint harmonic hum that #{ref :tuners, "Tuners"} describe as unsettling.

    Duskgrain is valuable because it contains concentrated resonance that can be released on demand — a single grain can power a mid-bandwidth device for days. It's also dangerous. The resonance inside duskgrain is not tuned to any specific band; it releases across the full spectrum simultaneously, which makes applications unpredictable. Controlled release requires narrow-bandwidth skill. Uncontrolled release is, at minimum, disruptive and at maximum, catastrophic at small scale.

    Duskgrain moves through smuggling networks and black market channels. The substance is not illegal under the #{ref :tempered_accord, "Tempered Accord"}, but its sourcing (Bloom Zones, which are cordoned) and its volatility make possession a legal gray area that enforcement treats as dark gray.
  PROSE
end
