ability :all_hunger do
  name "The All-Hunger"
  summary "The All-Hunger is an Adversary mantle whose bearer can consume strength, heat, memory, skill, resonance, or power from an entire host."
  type_of :consumption
  subkind :the_adversary
  status :complete
  tags :resonance, :religion, :danger, :"kinetic-freq"
  prominence :recognized
  qualification "Answers someone who has taken a necessary thing from another person and discovered that necessity did not excuse the taking"
  succession "Passes when another person willingly gives the starving bearer something irreplaceable and survives the mantle's attempt to consume the giver as well"
  cost "Every great consumption permanently removes another ordinary form of satisfaction until only greater acts of taking can quiet the bearer"

  descriptive_identity(
    signs: "Heat, motion, color, memory, or resonant output drains toward the bearer, who displays the stolen quality with terrible excess.",
    effect: "The bearer can use #{encyclopedia_ref :consumption, "Consumption"} against cities, armies, great creatures, and major resonant systems.",
    limits: "Only a quality physically present and active can be taken, no more exists afterward than existed before, and every taking narrows what can satisfy the bearer."
  )

  prose <<~PROSE
    The All-Hunger can take the heat from a burning district, the strength from a charging army, the memory from an archive's keepers, or the resonance from a working city. What is taken enters the bearer as one reserve. They can spend it, speak with it, strike with it, or hold it until the emptied subjects fail.

    Tessellan records place the mantle among the shadow set attributed to the Adversary. Its working resembles an open figure stealing coherence from closed ones to prolong itself. Whether that resemblance proves a source or merely named the fear is disputed. The record of bearers is less ambiguous: every confirmed one lost ordinary satisfactions in the same order they relied upon consumption.
  PROSE
  prose <<~PROSE, section: :dangers, heading: "No Fullness"
    Food continues to nourish the bearer after it stops satisfying hunger. Sleep repairs them after it stops bringing rest. Affection can matter after it ceases to feel like enough. In time, only the qualities they have learned to consume produce relief, and each relief is shorter than the one before it.

    Succession begins with a gift rather than a theft. Someone must offer the starving bearer a quality or memory that cannot be replaced. The mantle then attempts to take the giver whole. A survivor becomes the next All-Hunger; the former bearer is left with every need and no remaining power capable of feeding it.
  PROSE

  gm_note :appears, "A powerful enemy is emptied of the quality that made it unbeatable, and the new problem is the bearer demanding a larger source before the stolen reserve runs out."
end

relate :rel_all_hunger_resonates_false_form, :resonates_with, :all_hunger, :the_false_form
