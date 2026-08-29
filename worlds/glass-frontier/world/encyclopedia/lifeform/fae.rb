encyclopedia :fae do
  name "Fae"
  summary "Fae are a sapient ring-era people whose spatially diffuse bodies require sustained attention and resonance aids to hold a coherent form."
  kind :lifeform
  character_role :species
  origin_blurb "Spatially diffuse people use coherence aids and practiced attention to hold a stable bodily form."
  subkind :sapient_species
  status :complete
  reviewed "2026-03-18"
  topics :species, :resonance
  prevalence :uncommon
  available_globally
  registry true
  origin "Engineered or extensively modified during the ring era"
  biology "Spatially diffuse at rest; coherent form requires sustained effort"
  resonance_relation "Coherence aids use resonance as a prosthetic"
  principal_accommodation "Coherence-supporting devices and architecture"

  descriptive_identity(
    appearance:
      "When coherent, a fae is roughly person-shaped with edges that never " \
      "quite settle — an outline that softens when they tire, a translucence " \
      "that starts at the fingers. Most wear a coherence aid openly somewhere " \
      "on the body, and its quality is the most legible fact about them.",
    senses:
      "A diffuse fae perceives its whole spread area at once, slowly and " \
      "dreamily; a coherent fae perceives much as a person does. A sudden " \
      "resonance shift hits the body before any sense names it, and can pull " \
      "coherence apart uninvited."
  )

  cue "A coherent fae has an outline that never quite settles, softening at the edges and turning translucent from the fingers as concentration fails."
  cue "Most fae wear a coherence aid openly on the body, and a diffuse fae remains as a shimmer, faint warmth, or presence spread through a room."
  affordance "In a diffuse state, a fae perceives its entire distributed area at once even though thought and action slow to a crawl."
  pressure "Coherence is sustained effort, and a sudden resonance shift can disperse a fae involuntarily in the middle of a negotiation, journey, or fight."
  variation "Coherence aids may be worn, implanted, or carried, and their quality determines how long the wearer can remain active."
  variation "Some fae live in ordinary settlements with personal aids, while rare fae-majority habs support coherence through their architecture."

  prose <<~PROSE
    Engineered origin, created or modified during the ring era. The details of who made them and why are debated — the #{encyclopedia_ref :elves, "elves"} are the obvious candidates, but the fae predate some ring-era records in ways that don't track with a clean "the elves made them" narrative. Some scholars believe fae are a modification of a pre-existing species rather than a ground-up creation. The fae themselves consider the question irrelevant to their present circumstances, which are complicated enough without worrying about origins.
  PROSE
  prose <<~PROSE, section: :biology, heading: "Biology"
    Fae are bipedal and roughly person-shaped when coherent. Their defining biological characteristic is spatial dislocation: a fae's physical presence is not naturally bounded to a single location.

    **Default state: diffuse.** Left to their natural inclination, a fae spreads. Their physical substance distributes across a larger area — a room, a corridor, eventually a small building if unchecked. In this state, they are perceptible as a presence rather than a person: a shimmer in the air, a faint warmth, a sense that something is there without being able to point at where. Perception works in diffuse state. A fae can sense their entire distributed area. But cognition drops to a crawl — thinking becomes slow, dreamy, half-formed. A diffuse fae is aware but not alert.

    **Coherent state: concentrated.** To think clearly, speak, act, work, or interact meaningfully with other species, a fae must actively concentrate their spatial identity into a single coherent form. This takes effort. Maintaining coherence is like holding a muscle flex — sustainable for extended periods, but not indefinitely. Fae cycle between coherent waking periods and diffuse rest.

    The transition between states is visible. A fae going diffuse looks like someone slowly becoming translucent from the edges inward — their outline blurs, their presence spreads, and eventually there's no one standing there anymore, just an occupied space. Coming back together is the reverse: a presence sharpening into a person, edges firming up, until someone is standing where a moment ago there was only air.
  PROSE
  prose <<~PROSE, section: :biology, heading: "The Disability"
    Spatial dislocation is not a power. It is a disability that fae have built their entire material culture around managing.

    **Coherence aids** are the most important category of fae technology. Resonance-tuned personal devices — worn, implanted, or carried — that help a fae maintain spatial identity with less effort. The quality of a fae's coherence aids directly affects their quality of life: cheap or damaged aids mean shorter coherent periods, more frequent forced rest, and the social consequences of being unreliable. Good aids are expensive. The best aids are gnomish-made, which creates an economic dependency between the two engineered species that neither is entirely comfortable with.

    **Architectural accommodations** matter. Fae-friendly spaces have resonance fields that gently encourage coherence without forcing it — the spatial equivalent of good lighting. Spaces without these accommodations are physically exhausting for fae to occupy. Some settlements are better about this than others. Advocacy for accommodation standards is a quiet but persistent political issue in fae communities.

    **Social structures** within fae communities account for diffuse-time. Meetings are scheduled around coherence cycles. Decisions have built-in delays to accommodate members who need to rest. The fae concept of punctuality is fundamentally different from that of species who can simply always be present when they choose to be.
  PROSE
  prose <<~PROSE, section: :resonance, heading: "Relationship with Resonance"
    Complex. The resonance fields in coherence aids are what make fae social participation possible — resonance is their prosthetic. But the same sensitivity that makes them dependent on coherence aids also makes them vulnerable to resonance disruption. A sudden resonance shift can destabilize a fae's coherence involuntarily, which ranges from embarrassing (going partially diffuse in a meeting) to dangerous (full involuntary dispersal in a hostile environment).

    Fae do not naturally attune the way gnomes do. Their relationship with resonance is dependency, not affinity.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Fae populations are smaller than most other species, partly due to the biological overhead of their condition and partly because fae reproduction requires both parents to be coherent simultaneously for an extended period, which is logistically non-trivial.

    They are found across the system but tend to cluster in settlements with good accommodation infrastructure. Fae-majority communities are rare but exist, usually in ring habs where the original designers (or subsequent inhabitants) built coherence-supporting resonance fields into the structure. These habs are valued by fae out of proportion to their other qualities — a mediocre hab with good coherence architecture is better than a prosperous one without it.

    The fae relationship with the system's other engineered species — gnomes — is complicated. Both were made. Both live with the consequences. But gnomes were given a gift (attunement) while fae were given a burden (dislocation). The solidarity is real but asymmetric.
  PROSE
end
