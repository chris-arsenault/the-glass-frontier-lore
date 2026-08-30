encyclopedia :duskgrain do
  title "Duskgrain"
  kind :resource
  subkind :material
  status :complete
  summary "Duskgrain is solidified resonance found in Bloom Zones and deep Shear pockets; each dark, humming grain stores great power across an unstable range of frequencies."
  reviewed "2026-03-19"
  topics :resonance, :danger, :materials
  prevalence :rare
  appears_when any: { place: [:bloom_adjacent, :debris_field] }

  cue "The grains are small — rarely larger than a seed — dark, and produce a faint harmonic hum that Tuners describe as unsettling."
  cue "Someone who has handled duskgrain for years hears narrow-band work nobody else notices and mistakes which side of a bulkhead a sound came from."
  affordance "A single grain can power a mid-bandwidth device for days."
  pressure "The resonance inside duskgrain releases across the full spectrum simultaneously, so controlled release requires narrow-bandwidth skill and an uncontrolled release can be catastrophic at small scale."
  variation "Duskgrain forms in Bloom Zones where narrow-bandwidth resonance has been sustained for extended periods."
  variation "Duskgrain also forms in deep Shear pockets that behave like the Bloom Zones."

  descriptive_identity(
    appearance:
      "Dark grains rarely larger than a seed, each giving off a faint " \
      "harmonic hum that Tuners call unsettling. They come out of Bloom " \
      "Zones and deep Shear pockets, wherever narrow-band resonance has " \
      "held long enough to solidify.",
    working:
      "One grain can power a mid-bandwidth device for days, but the " \
      "stored resonance is tuned to no band and releases across the " \
      "full spectrum at once — drawing it down cleanly takes " \
      "narrow-bandwidth skill. It changes hands through smuggling " \
      "routes and black-market channels rather than open trade.",
    risks:
      "An uncontrolled release runs from disruptive to catastrophic at " \
      "small scale. Years of handling leave marks: hearing narrow-band " \
      "work nobody else notices, mistaking which side of a bulkhead a " \
      "sound came from. Possession is lawful under the Accord while the " \
      "cordoned ground it comes from is not, and enforcement reads that " \
      "gray area darkly.",
  )

  prose <<~PROSE, section: :how_it_works, heading: "How It Works"
    A crystallized substance found in #{ref :bloom_zones, "Bloom Zones"} and occasionally in deep #{ref :the_shear, "Shear"} pockets. Duskgrain forms where narrow-bandwidth resonance has been sustained for extended periods — it's essentially resonance energy that has solidified into a physical material. The grains are small (rarely larger than a seed), dark, and produce a faint harmonic hum that #{encyclopedia_ref :tuners, "Tuners"} describe as unsettling.

    Duskgrain is valuable because it contains concentrated resonance that can be released on demand — a single grain can power a mid-bandwidth device for days. It's also dangerous. The resonance inside duskgrain is not tuned to any specific band; it releases across the full spectrum simultaneously, which makes applications unpredictable. Controlled release requires narrow-bandwidth skill. Uncontrolled release is, at minimum, disruptive and at maximum, catastrophic at small scale.

    Duskgrain moves through smuggling networks and black market channels. The substance is not illegal under the #{ref :tempered_accord, "Tempered Accord"}, but its sourcing (Bloom Zones, which are cordoned) and its volatility make possession a legal gray area that enforcement treats as dark gray.
  PROSE

  # ---- Hidden (DM) truth ----
  prose <<~PROSE, section: :truth, heading: "The Corruption", dm: true
    Duskgrain is not a natural byproduct of sustained resonance. It is the physical residue of the #{ref :the_false_form, "Adversary"}'s influence bleeding through reality tears.

    Where the Adversary's presence touches normal space — in Bloom Zones, in deep Shear pockets, in places where narrow-bandwidth resonance has weakened the boundary — it leaves behind crystallized fragments of itself. These are duskgrain. The substance is, in a very literal sense, solidified alien intent — or, in the language of #{ref :the_false_form, "The False Form"}, solidified non-closing figure: fragments of a geometry that cannot exist, frozen into matter that nonetheless does.

    The public understanding (concentrated resonance energy) is not wrong — duskgrain does contain resonance, and it does release it when triggered. But the resonance inside duskgrain is contaminated. Prolonged exposure produces effects that map to addiction: heightened resonance sensitivity, euphoria, gradually narrowing perception. Users become more attuned — and more aligned with the Adversary's dimensional framework.

    The psychedelic honey that circulates on the black market is produced by insects whose hives are located near duskgrain deposits. The honey carries trace amounts of the corruption. The effects are mild at low doses (heightened perception, vivid dreams, enhanced resonance sensitivity) and severe at sustained use (reality perception disorders, dimensional bleeding, eventually a complete inability to maintain coherent spatial identity — a condition that resembles advanced fae dislocation).
  PROSE
  prose <<~PROSE, section: :truth, heading: "The Elves Know", dm: true
    The elves identified duskgrain as Adversary residue during the early Signal Famine, before they disappeared. It is one of the primary reasons they chose to retreat — the corruption was appearing in places it shouldn't be, which meant the Adversary's influence was spreading through the system's resonance infrastructure.

    The Displacement Council's containment of Bloom Zones serves a dual purpose that the #{ref :dern_talish, "Dern Talish"} (First Threshold) understands: containing the resonance anomaly, and limiting the spread of duskgrain into the broader economy. The Council's official position on duskgrain — "dangerous but legal" — is a compromise that Talish privately considers inadequate and publicly defends because the alternative is explaining why it needs to be banned.
  PROSE
end
