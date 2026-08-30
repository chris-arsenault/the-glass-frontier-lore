encyclopedia :hab_worlder do
  name "Hab-Worlder"
  summary "Hab-Worlders are people raised in sealed ring habitats, where atmosphere, structural maintenance, and mutual obligation are part of ordinary household life."
  kind :culture
  character_role :culture
  origin_blurb "Raised in sealed habs, Hab-Worlders read air, exits, maintenance, and mutual obligation instinctively."
  subkind :cultural_identity
  status :complete
  reviewed "2026-03-18"
  topics :"social-structure", :"ring-hab"
  prevalence :common
  available_globally
  integration "Raised in sealed habitats where atmosphere and structure are communal work"

  descriptive_identity(
    appearance:
      "The hab sets the frame — spin, ration, and work differ can to can — " \
      "but the posture is near-universal: contained, economical movement, a " \
      "body conserving space that used to be scarce.",
    attire:
      "Layered against temperature swings, fitted so nothing snags on " \
      "infrastructure, with pockets and attachment points for tools. Cloth " \
      "in a can is repaired rather than replaced, and the mending is neat by " \
      "upbringing.",
    manner:
      "Checks the exits before anything else in an unfamiliar room, hears " \
      "mechanical ambient sound as the sound of things being fine, and keeps " \
      "a practical count of favors given and owed.",
    hospitality:
      "Hospitality in a can is a working arrangement: a guest gets air, a " \
      "bunk, and a share of the table, and is expected to pull weight " \
      "without being asked. The count of favors starts at the first meal."
  )

  cue "A Hab-Worlder enters an unfamiliar room by checking its exits and moves through open space with contained, economical posture."
  cue "A change in fans, recyclers, or pressure regulators catches a Hab-Worlder's attention before the room's instruments report a fault."
  affordance "Hab-Worlders can read the ordinary sound and arrangement of sealed infrastructure for failing air, blocked escape, or neglected maintenance."
  pressure "Hospitality begins a practical account of work and favors, so a guest who takes air, a bunk, and food without pulling weight weakens every later request."
  variation "Hab-Worlder communities include musical governments, military outposts, anarchist settlements, and dark habs navigated by hum and memory."
  variation "Some habs maintain rich textile traditions, while others have used the same standardized work clothes for generations."

  prose <<~PROSE
    The shared identity of people raised in ring habs. Not a single culture so much as a cultural family — Hab-Worlders from different habs can be as different from each other as any two surface settlements. What they share is the experience of growing up in sealed environments: an intuitive understanding of pressure, atmosphere, structural integrity, and the constant low-level awareness that everything outside the walls will kill you.
  PROSE
  prose <<~PROSE, section: :values, heading: "What They Share"
    Every Hab-Worlder, regardless of which hab they come from, knows the following things in their body:

    - **Where the exits are.** A Hab-Worlder entering an unfamiliar room checks the exits before they check anything else. This is not paranoia. It is the spatial awareness of someone who grew up in places where knowing how to get out was the difference between living and not. Surface-dwellers find this habit unsettling. Hab-Worlders find surface-dwellers' *lack* of this habit terrifying.

    - **What the air sounds like.** Every sealed environment has an ambient sound — fans, recyclers, pressure regulators. Hab-Worlders hear it the way others hear silence: it's the sound of things being fine. When the sound changes, something is wrong. A Hab-Worlder visiting a surface settlement for the first time will spend the first night unable to sleep because the absence of mechanical ambient sound registers as a system failure.

    - **That walls are load-bearing relationships.** Not just structurally — socially. In a sealed environment, your neighbors are your life support. You cannot avoid them, and you cannot afford to make enemies of the people who maintain the systems you breathe through. This produces a particular social style: direct, boundary-conscious, intensely aware of reciprocity. Hab-Worlders keep score. Not maliciously — practically. In a can, everyone has to pull weight.
  PROSE
  prose <<~PROSE, section: :values, heading: "What They Don't Share"
    Almost everything else. The cultural range within the Hab-Worlder umbrella is enormous. A hab governed by structured musical improvisation is Hab-Worlder. So is a disciplined military outpost. So is a hab that runs on anarchist consensus. So is a hab where the lights haven't been fully on in thirty years and the residents navigate by resonance hum and memory.

    Hab-Worlder naming conventions vary significantly by hab and region. There is no single naming pattern — instead, there are clusters of patterns that share certain features (shorter names, practical over ornamental, often referencing habitat functions or locations within the hab). Two Hab-Worlders from different habs might not recognize each other's naming style, but they'll recognize the *type* of naming style: functional, compact, designed for small spaces where everyone knows everyone.
  PROSE
  prose <<~PROSE, section: :aesthetics, heading: "Visual Identity"
    No single aesthetic. Hab-Worlder clothing tends toward the practical — layered for temperature variation, fitted to avoid snagging on infrastructure, with pockets and attachment points for tools. But "practical" looks different in every hab. Some habs have developed rich textile traditions within the constraints. Others standardized on jumpsuits three generations ago and never looked back.

    The one near-universal visual marker is posture. Hab-Worlders move differently in large spaces — more contained, more economical, less sprawling. A Hab-Worlder on a planet has the body language of someone conserving space that isn't scarce anymore but used to be. This is the thing that makes two Hab-Worlders recognize each other across a surface station within minutes, even if they share nothing else.
  PROSE
  prose <<~PROSE, section: :perception, heading: "The Label"
    "Hab-Worlder" is the broadest cultural bucket in the system. It says "I grew up in a can" and nothing more specific. Some Hab-Worlders embrace it as a shared identity. Others consider it reductive — they're from *their* hab, not from "habs" generically. The label is most useful to surface-dwellers, who use it to mean "not from here," and least useful to Hab-Worlders themselves, who know exactly how much internal variation it papers over.

    The one context where the label carries unambiguous weight is the Bloom displacement. Hab-Worlders who lost their habs during the Silent Bloom share a specific subset of the identity: people who know what it means to lose a sealed environment. The Displacement Council draws heavily from this population, and the phrase "I'm Hab-Worlder" carries a different resonance when spoken by someone whose hab no longer exists.
  PROSE
end
