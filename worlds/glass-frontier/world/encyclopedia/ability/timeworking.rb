encyclopedia :timeworking do
  name "Timeworking"
  summary "Timeworking changes the rate and order of physical events by taking duration from one process and assigning it elsewhere."
  kind :ability
  subkind :ability
  status :complete
  topics :resonance, :danger, :"kinetic-freq", :cosmology
  prevalence :rare
  available_globally

  tier :broad,
       effect: "Slow or hasten one hand-sized process for several breaths by moving its unused duration into the user",
       cost: "The user ages by the interval removed from the process"
  tier :focused,
       effect: "Take several moments from one creature, projectile, or mechanism and spend them on another immediate action",
       cost: "The user ages by days and temporarily loses the sequence of events around the transfer"
  tier :narrow,
       effect: "Suspend, accelerate, or repeat the physical course of a room, vessel section, or battle line for several minutes",
       cost: "The user ages by years and retains injuries from every repeated course"
  tier :apex,
       effect: "Steal hours from an army, city, or catastrophe and act freely while everything chosen remains between moments",
       cost: "The stolen interval passes through the bearer as lived age and cannot be restored to them"

  descriptive_identity(
    signs: "Clocks disagree with bodies, moving objects leave several positions visible at once, and the user acquires age without an intervening life.",
    effect: "Timeworking reallocates duration among present physical processes, slowing one course so another can happen sooner or more often.",
    limits: "It does not reveal or rewrite a completed past, create duration without a source, or spare the user the age carried by stolen time."
  )

  cue "A moving subject hangs between positions while the user completes actions in the missing interval."
  cue "The user emerges visibly older, carrying dust, wounds, or exhaustion from time no one else experienced."
  affordance "Timeworking can stop a projectile, outrun a collapse, complete a rescue before fire advances, or hold an enemy force still while allies reposition."
  pressure "The user lives every stolen interval in their body even when their mind retains only fragments of what occurred."
  variation "Fine work transfers fractions of a second among mechanisms, wounds, chemical reactions, and moving hands."
  variation "Large work creates a still interval in which the user and selected companions move while the surrounding event waits."

  prose <<~PROSE
    Timeworking moves duration rather than traveling through history. A falling blade can be denied its next second while a defender spends that second stepping aside. A spreading fire can be held at the edge of a room while a rescue proceeds in the time taken from it. A failing mechanism can be given the quiet hours it needs to cool, provided those hours pass through someone else.

    The transfer remains physical. Hunger, healing, corrosion, thought, motion, and age all proceed according to the time a subject receives. A suspended casualty does not bleed, but neither do medicines reach the wound. A repeated action repeats its strain. The ability cannot return to a completed event and choose another result.
  PROSE
  prose <<~PROSE, section: :dangers, heading: "Stolen Hours"
    The user receives the age of every interval taken. Small workings add minutes that appear as fatigue and thirst. Greater transfers add visible years. The body has lived them even when the mind was occupied for only a few breaths, and no later timeworking can remove that history without placing it in another living subject.

    #{ref :thief_of_hours, "The Thief of Hours"} can hold a city, an army, or a catastrophe between moments while the bearer acts. The title is exact: the mantle does not stop time without price. It steals the interval into one life, and that life emerges older by everything the world was denied.
  PROSE
end
