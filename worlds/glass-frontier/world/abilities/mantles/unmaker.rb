ability :unmaker do
  name "The Unmaker"
  summary "The Unmaker is an Adversary mantle that destroys the coherence of a city, army, great creature, or sustained phenomenon."
  type_of :unmaking
  subkind :the_adversary
  status :complete
  tags :resonance, :religion, :danger, :catastrophe
  prominence :recognized
  qualification "Answers someone who destroys a thing they understand completely and accepts the consequences of everything it had contained"
  succession "Passes to a person who can still perceive and name a coherent whole after the bearer has lost the faculty needed to recognize it"
  cost "Every apex unmaking permanently destroys one of the bearer's senses, abilities, or resonant bands used to perceive the target"

  descriptive_identity(
    signs: "The target separates without blast or heat as its parts cease recognizing one another, and one of the bearer's senses fails at the same instant.",
    effect: "The bearer can use #{encyclopedia_ref :unmaking, "Unmaking"} against cities, armies, great creatures, and recurrent anomalies that still share one coherent pattern.",
    limits: "The bearer must perceive a coherent whole, all constituent matter and released hazards remain, and institutions or beliefs without one physical coherence cannot be targeted directly."
  )

  prose <<~PROSE
    The Unmaker can end a fortress, a marching host, a great living body, or a phenomenon whose separate manifestations still act as one thing. Joined matter becomes loose material. Coordinated bodies become individuals. A sustained field falls silent. There is no explosion unless the subject was containing pressure, heat, momentum, poison, or another force that survives it.

    Of the shadow mantles, this is the one most directly associated with the False Form. It forces a closed figure open and leaves every part present without the coherence that made the parts one subject. Tessellan records disagree on whether the mantle serves the Adversary or wounds it by the same means. Both readings have survived because bearers have unmade works of the Three and manifestations attributed to the False Form.
  PROSE
  prose <<~PROSE, section: :dangers, heading: "A Narrowing World"
    The mantle takes the faculty by which the bearer understood the target. Unmaking a signal host may remove a resonant band. Unmaking a creature may take the sense by which it was tracked. Unmaking a city can erase the bearer's ability to perceive joined structure at all, leaving buildings visible only as unrelated surfaces.

    Succession requires another person to name a whole the bearer can no longer recognize. The test grows harder as the bearer loses senses and abilities. Several accounts end with an Unmaker surrounded by successors who could describe the world and could not make the mantle agree that any of their descriptions were complete.
  PROSE

  gm_note :complicates, "The mantle can erase the coherent threat immediately, then releases every pressure, passenger, fragment, and active substance that threat had held together."
end

relate :rel_unmaker_resonates_false_form, :resonates_with, :unmaker, :the_false_form
