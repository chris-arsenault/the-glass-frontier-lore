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
    Ring-era records describe fae as engineered or extensively modified, with the #{encyclopedia_ref :elves, "elves"} named in several later accounts. Older fae references predate those accounts. Current scholarship therefore divides between elven creation and modification of an earlier species; the surviving records establish neither the original population nor the purpose of the work.
  PROSE
  prose <<~PROSE, section: :biology, heading: "Biology"
    Fae are bipedal and roughly person-shaped when coherent. At rest, their physical presence distributes across a wider area.

    **Default state: diffuse.** Left to their natural inclination, a fae spreads. Their physical substance distributes across a larger area — a room, a corridor, eventually a small building if unchecked. In this state, they are perceptible as a presence rather than a person: a shimmer in the air, a faint warmth, a sense that something is there without being able to point at where. Perception works in diffuse state. A fae can sense their entire distributed area. But cognition drops to a crawl — thinking becomes slow, dreamy, half-formed. A diffuse fae is aware but not alert.

    **Coherent state: concentrated.** Clear thought, speech, and directed action require a fae to concentrate their spatial identity into one form. Maintaining coherence takes sustained effort, and fae cycle between coherent waking periods and diffuse rest.

    The transition is visible. A fae going diffuse becomes translucent from the edges inward as the outline blurs and presence spreads through the room. Returning coherence sharpens that presence into a person, with the edges firming last.
  PROSE
  prose <<~PROSE, section: :biology, heading: "The Disability"
    Spatial dislocation is a disability that fae manage through personal aids, architecture, and schedules built around diffuse rest.

    **Coherence aids** are the most important category of fae technology. Resonance-tuned personal devices — worn, implanted, or carried — that help a fae maintain spatial identity with less effort. The quality of a fae's coherence aids directly affects their quality of life: cheap or damaged aids mean shorter coherent periods, more frequent forced rest, and the social consequences of being unreliable. Good aids are expensive. The best aids are gnomish-made, which creates an economic dependency between the two engineered species that neither is entirely comfortable with.

    **Architectural accommodations** matter. Fae-friendly spaces have resonance fields that gently encourage coherence without forcing it — the spatial equivalent of good lighting. Spaces without these accommodations are physically exhausting for fae to occupy. Some settlements are better about this than others. Advocacy for accommodation standards is a quiet but persistent political issue in fae communities.

    **Social structures** within fae communities account for diffuse-time. Meetings are scheduled around coherence cycles. Decisions have built-in delays to accommodate members who need to rest. The fae concept of punctuality is fundamentally different from that of species who can simply always be present when they choose to be.
  PROSE
  prose <<~PROSE, section: :resonance, heading: "Relationship with Resonance"
    Resonance fields in coherence aids support sustained bodily form and social participation. The same pathway makes a fae vulnerable to disruption: a sudden shift can soften the body in a meeting or disperse it across a hostile environment. Fae use resonance as a prosthetic rather than a direct sense of the surrounding field.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Fae populations are smaller than most other species. Maintaining a coherent body consumes substantial energy, and reproduction requires both parents to remain coherent together for an extended period.

    They are found across the system but tend to cluster in settlements with good accommodation infrastructure. Fae-majority communities are rare but exist, usually in ring habs where the original designers (or subsequent inhabitants) built coherence-supporting resonance fields into the structure. These habs are valued by fae out of proportion to their other qualities — a mediocre hab with good coherence architecture is better than a prosperous one without it.

    Fae and gnomish organizations meet over maintenance access, engineered bodies, and the cost of resonance care. Gnomish makers also supply many of the highest-quality coherence aids, creating a practical dependency between the two populations.
  PROSE
end
