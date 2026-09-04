ability :all_hunger do
  name "The All-Hunger"
  summary "The All-Hunger is an Adversary mantle that applies Hunger or Want across a crew, army, city, great creature, or resonant system and gathers what it takes into its bearer."
  type_of :hunger
  subkind :the_adversary
  status :complete
  log "2026-08-31 — Distinguished the mantle's physical taking through Hunger from its theft of learned and remembered patterns through Want; the mantle can perform either across a collective subject."
  tags :resonance, :religion, :danger, :"kinetic-freq", :"signal-freq"
  prominence :recognized
  qualification "Answers someone who took a needed quality from another person and remained with them long enough to account for the loss"
  succession "Passes when another person willingly gives the starving bearer something irreplaceable and survives the mantle's attempt to consume the giver as well"
  cost "Each kind of quality consumed weakens the bearer's ability to feel satisfied by its ordinary counterpart until relief comes only from taking a greater example"

  descriptive_identity(
    signs: "The bearer names a quality, a dark resonant trace draws it out of the source, and the missing heat, motion, memory, skill, or power appears in the bearer with excessive intensity.",
    effect: "The mantle applies #{encyclopedia_ref :hunger, "Hunger"} to a collective physical quantity or #{encyclopedia_ref :want, "Want"} to a learned or remembered pattern shared across many subjects.",
    limits: "A physical quantity must be present and doing work; a learned pattern must be actively recalled or performed. Each transfer preserves the original quantity or character, while incompatible reserves strain the body that holds them."
  )

  question "Who is the present or most recently attested All-Hunger, and what irreplaceable gift and surviving giver established that succession?", raised: "2026-08-31"

  prose <<~PROSE
    The All-Hunger takes one physical quantity or learned pattern already doing work across a collective subject. The bearer can gather the shared strength of a crew, the heat of a city lattice, the momentum of a charging host, the resonance of a connected array, or a maneuver being performed across a fleet. Every member or component loses its share of exactly what enters the bearer.

    Each reserve keeps its original character. Stolen engine output can leave the bearer running hot and fast; a pilot's trained motion guides the hands without explaining the life that taught it; a memory arrives with sensation and habit but without its place among other memories. The bearer may spend the reserve, return what remains, or feed it into another body or machine capable of receiving it. Contradictory capacities pull the body in different directions and are carried safely only one at a time.
  PROSE
  prose <<~PROSE, section: :dangers, heading: "The Appetite Learns"
    Hunger and Want teach the bearer to recognize taking as nourishment. After consuming heat, warm food still nourishes but loses its comfort. After consuming memory, the bearer's own past can remain accessible while ceasing to satisfy the desire to remember. Strength, rest, affection, skill, and achievement narrow in the same way. Relief comes from consuming the corresponding quality again, and each later appetite demands a larger source.

    Tessellan shadow lists assign the All-Hunger to the Adversary set. Its figure appears to prolong itself by drawing coherence from closed forms. Surviving accounts disagree about that doctrine and agree about the bodily record: each bearer lost ordinary satisfactions in the order they relied on the mantle.

    Succession begins when someone freely offers the starving bearer an irreplaceable quality or memory. The mantle attempts to take the giver along with the gift. A survivor becomes the next All-Hunger; the former bearer keeps every narrowed appetite and loses the power that fed them.
  PROSE

  gm_note :triggered_by, "Any active quality can become a resource: the bearer's touch can take a pursuer's momentum, a pilot's trained motion, a fire's heat, or a machine's output, leaving the source without exactly what the bearer gains."
  gm_note :complicates, "Using a stolen quality teaches the bearer's body to seek that form of nourishment again; later relief requires a larger source, even after the immediate reserve has been spent or returned."
end

relate :rel_all_hunger_resonates_false_form, :resonates_with, :all_hunger, :the_false_form
