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
  cue "Someone who has handled duskgrain for years hears narrow-band work below ordinary perception and mistakes which side of a bulkhead a sound came from."
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
      "work below ordinary perception, mistaking which side of a bulkhead a " \
      "sound came from. Possession is lawful under the Accord while the " \
      "cordoned ground it comes from is not, and enforcement reads that " \
      "gray area darkly.",
  )

  prose <<~PROSE, section: :how_it_works, heading: "How It Works"
    Duskgrain crystallizes in #{ref :bloom_zones, "Bloom Zones"} and in deep #{ref :the_shear, "Shear"} pockets where narrow-band resonance has held for an extended period. The grains are dark, rarely larger than a seed, and give off a faint harmonic hum that #{encyclopedia_ref :resonant_tuner, "Tuners"} describe as unsettling.

    One grain can power a mid-bandwidth device for days. Its stored resonance spans the full spectrum and releases across every band at once. Drawing it down into useful output requires narrow-band skill; an uncontrolled release can disrupt instruments, structures, and living tissue across a small site.

    Smuggling routes and black-market dealers carry most duskgrain. The #{ref :tempered_accord, "Tempered Accord"} permits possession while cordon law restricts entry to its known sources. Inspectors therefore treat a grain without documented recovery as evidence of a cordon breach.
  PROSE

  # ---- Hidden (DM) truth ----
  prose <<~PROSE, section: :truth, heading: "The Corruption", dm: true
    Duskgrain is the physical residue of the #{ref :the_false_form, "Adversary"}'s influence bleeding through reality tears.

    Where the Adversary's presence crosses into the world — in Bloom Zones, deep Shear pockets, and other places where narrow-band resonance has weakened the boundary — it leaves crystallized fragments of itself. Duskgrain is solidified alien intent or, in the language of #{ref :the_false_form, "The False Form"}, a non-closing figure frozen into matter.

    The residue contains concentrated resonance contaminated by the Adversary's dimensional framework. Prolonged exposure produces heightened resonance sensitivity, euphoria, and gradually narrowing perception. Continued use aligns the user's perception more closely with that framework.

    The psychedelic honey that circulates on the black market is produced by insects whose hives are located near duskgrain deposits. The honey carries trace amounts of the corruption. The effects are mild at low doses (heightened perception, vivid dreams, enhanced resonance sensitivity) and severe at sustained use (reality perception disorders, dimensional bleeding, eventually a complete inability to maintain coherent spatial identity — a condition that resembles advanced fae dislocation).
  PROSE
  prose <<~PROSE, section: :truth, heading: "The Elven Finding", dm: true
    Elven records from the early Signal Famine identify duskgrain as Adversary residue. Its appearance throughout the resonance infrastructure was one of the primary reasons the elves retreated.

    The Displacement Council's containment of Bloom Zones serves a dual purpose that the #{ref :dern_talish, "Dern Talish"} (First Threshold) understands: containing the resonance anomaly, and limiting the spread of duskgrain into the broader economy. The Council's official position on duskgrain — "dangerous but legal" — is a compromise that Talish privately considers inadequate and publicly defends because the alternative is explaining why it needs to be banned.
  PROSE
end
