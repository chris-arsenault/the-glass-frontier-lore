ability :thief_of_hours do
  name "The Thief of Hours"
  summary "The Thief of Hours is an Adversary mantle that steals duration from an army, city, or catastrophe and forces its bearer to live the interval."
  type_of :timeworking
  subkind :the_adversary
  status :complete
  tags :resonance, :religion, :danger, :cosmology
  prominence :recognized
  qualification "Answers someone who knowingly gives up part of their remaining life so another person can finish an urgent act"
  succession "Passes to a person who voluntarily lives one stolen interval beside the bearer and accepts an equal share of its age"
  cost "Every stolen interval passes through the bearer as lived age, including hunger, fatigue, healing, and bodily decline"

  descriptive_identity(
    signs: "The world hangs between positions while the bearer moves, then the bearer emerges older and the suspended event resumes without the missing interval.",
    effect: "The bearer can use #{encyclopedia_ref :timeworking, "Timeworking"} to steal hours from cities, armies, disasters, and other large physical courses.",
    limits: "The mantle reallocates present duration, cannot enter or rewrite a completed past, and cannot remove the age it places in the bearer."
  )

  prose <<~PROSE
    The Thief of Hours can hold a battle between one impact and the next, stop a city beneath an advancing blast, or take the night from a pursuer while the pursued continue moving. Chosen companions may enter the stolen interval. Everything else remains exactly where motion left it until the time is released.

    Tessellan commentators identify the mantle with a path that returns without completing its course. The suspended event reaches its next moment only after its duration has been lived elsewhere. The effect looks merciful when used for rescue and remains theft: the missing hours enter one body and never return to the world that lost them.
  PROSE
  prose <<~PROSE, section: :limits, heading: "The Life Inside the Pause"
    The bearer lives the full interval. A stolen hour brings an hour of breath, hunger, thought, and age even if memory later compresses it into a few images. Holding a catastrophe for days can consume years because every separate process contributes duration to the stillness imposed upon it.

    Succession requires shared time. A willing companion enters an interval with the bearer and accepts half its age without knowing how long the pause must last. If both emerge alive, the mantle passes. Nothing restores the years to either of them.
  PROSE

  gm_note :appears, "The Thief of Hours gives the group all the time needed to stop a catastrophe, while the bearer visibly ages through the work and cannot know in advance how many years it will take."
end

relate :rel_thief_of_hours_resonates_false_form, :resonates_with, :thief_of_hours, :the_false_form
