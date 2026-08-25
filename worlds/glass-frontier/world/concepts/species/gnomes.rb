species :gnomes do
  name "Gnomes"
  summary "Gnomes are a sapient species engineered during the ring age with ringglass threaded through bone and nervous tissue, giving them direct sensory attunement to resonance."
  playable_as :species
  origin_blurb "Ringglass threads their bones and nerves, making resonance a direct sense that demands lifelong care."
  subkind :sapient_species
  path "player/concepts/species/gnomes.md"
  status :complete
  reviewed "2026-03-18"
  tags :species, :resonance, :"ring-era"
  prominence :mythic
  registry true
  origin "Bioengineered during the ring era"
  biology "Ringglass lattice threaded through bone and nervous tissue"
  lifespan "About 50–150 years, depending on lattice care and exposure"
  resonance_relation "Direct sensory attunement to local resonance"

  descriptive_identity(
    appearance:
      "Small-framed and unexpectedly heavy, a gnome carries a crystalline " \
      "lattice grown through the bone, and it shows: skin with a faint depth to " \
      "it in strong light, a glimmer in direct sun, and a hum from the bones at " \
      "rest that the gnome cannot hear and a quiet room can.",
    senses:
      "A gnome feels the local resonance field the way other species feel " \
      "temperature — what ringglass is present, what is running, what is " \
      "tuned wrong, before conscious thought names any of it. The same " \
      "openness makes distorted resonance a physical assault."
  )

  prose <<~PROSE
    Bioengineered by the #{ref :elves, "elves"} during the ring era. Gnomes were designed — there is no polite way around the word — to interface with the orbital ring's #{ref :resonance, "resonance"} systems. Their biology incorporates #{ref :ringglass, "ringglass"} at a fundamental level: crystalline structures threaded through their skeletal system and nervous tissue, grown in place rather than implanted. A gnome is, in a very literal sense, part crystal.
  PROSE
  prose <<~PROSE, section: :biology, heading: "Biology"
    Small-framed, compact, with a density that surprises people who try to pick one up. Gnomish bone has a crystalline lattice component that makes it harder and heavier than baseline organic bone. Their skin has a faint translucency in strong light — not transparent, but a quality of depth, like looking at something with a layer of glass between you and it. In direct sunlight, gnomes glimmer.

    Their nervous system conducts resonance directly. A gnome can feel the local resonance landscape the way other species feel temperature — not as abstract data, but as immediate sensory experience. Warm and cold, loud and quiet, harmonic and dissonant. Walk a gnome into a room and they can tell you what #{ref :ringglass, "ringglass"} is present, what frequencies are active, and whether anything is tuned wrong, before they've consciously registered any of it.

    At rest, gnomish bones produce a barely audible harmonic hum. Gnomes themselves can't hear it — it's below their conscious threshold — but other species in close proximity sometimes notice. In quiet rooms, in shared beds, in the moment before sleep. Whether this is beautiful or unsettling depends on who you ask. Gnomes generally find the question tiresome.

    Gnomish lifespan has unusually high variance. A gnome with good maintenance — regular lattice realignment, controlled resonance exposure, access to stillwater baths — can live #{duration 150}, longer than any other species in the system. A gnome without maintenance, or one with chronic exposure to bad resonance harmonics, might not see fifty. The crystalline components accumulate microfractures over decades that the body can't fully repair, and the rate of accumulation depends almost entirely on environment and care.

    This makes gnomish longevity a class issue. Gnomes in well-funded technical positions — the ones with institutional backing and access to proper maintenance — live long, productive lives. Gnomes in unregulated Shear operations, frontier settlements, or poverty age fast. The difference between a gnome who's 90 and thriving and a gnome who's 90 and dying is usually money.

    Elderly gnomes in either case experience a gradual dulling of their resonance sense as the lattice degrades — the gnomish equivalent of going deaf, and treated with a similar mix of pragmatism and grief.
  PROSE
  prose <<~PROSE, section: :culture, heading: "The Ethics"
    Gnomes were *made*. Designed by the elves to serve a function in the ring's infrastructure. This is historical fact, not speculation, and the ethical implications are a live issue in the present day even though nobody involved in the decision is still around to answer for it.

    The debate is not abstract. Gnomes are people — fully autonomous, fully intelligent, fully sovereign. Nobody disputes this. What they dispute is what it *means* that an entire species exists because someone decided they should, for a purpose that no longer exists. The ring is shattered. The function gnomes were designed for — direct neural interface with ring-scale resonance systems — is no longer possible. Gnomes are a tool designed for a machine that broke.

    Gnomes themselves have complicated and varied feelings about this. Some consider their attunement a gift — a richer experience of the world than any other species has access to. Some consider it a brand — a reminder that they exist because someone wanted a product. Most hold both views simultaneously and don't appreciate outsiders trying to resolve the tension for them.
  PROSE
  prose <<~PROSE, section: :resonance, heading: "Relationship with Resonance"
    Unmatched among living species. The elves were more knowledgeable, but gnomish attunement is more *immediate* — a gnome doesn't understand resonance intellectually, they experience it sensorially. This makes them invaluable in any resonance-related field: tuning, repair, prospecting, containment, medical applications. A gnome tuner can do in minutes what takes a human technician an hour with instruments.

    The downside is overexposure. Gnomes are more sensitive to resonance disruption than other species. The #{ref :bloom_zones, "Bloom Zones"} are acutely dangerous for gnomes — the reality distortion registers as intense sensory overload, and prolonged exposure causes crystal lattice damage that accelerates the aging process. Gnomish Displacement Council operatives are rare, respected, and closely monitored for exposure limits.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Gnomes are distributed across the system, found wherever resonance work happens — which is everywhere. They are overrepresented in technical fields and underrepresented in politics, a pattern that gnomes themselves are divided on whether to address. Some see it as a natural consequence of their strengths. Others see it as the system quietly steering them back toward the function they were designed for.

    Gnomish communities exist, particularly in settlements built around major ringglass processing operations, but gnomes don't have a species-level homeland. Like most species in the system, their primary identity is cultural.
  PROSE

  gm_note :appears, "Walk a gnome into any room and they can say what ringglass is in it, what frequencies are running, and what is tuned wrong, before the party has finished looking around. The search the table planned is over in a sentence."
  gm_note :triggered_by, "Ask a gnome to work somewhere with distorted resonance and they are pricing years, not danger pay. Sensory overload and lattice microfracture at the #{ref :bloom_zones, "Bloom Zones"} decide whether a gnome sees a hundred and fifty or fifty, and the ones who take the work track their exposure closely."
  gm_note :complicates, "A resting gnome's bones hum below their own hearing, and everyone else in a quiet room can pick it up. Hiding in silence, sharing a bunk, or waiting out a search in a sealed compartment does not work the way the party expects, and the gnome finds the subject tiresome."
end

relate :rel_gnomes_attuned_to_resonance, :attuned_to, :gnomes, :resonance do
  prose "Gnomes are attuned to #{ref :resonance, "resonance"} by design — part ringglass themselves, they read and work it with an ease no other species matches."
  descriptive_identity expression:
    "The working sign is the absence of instruments. Where another " \
    "practitioner reaches for a meter, a gnome goes still for a moment and " \
    "then answers, and the answer covers the whole room."
end
