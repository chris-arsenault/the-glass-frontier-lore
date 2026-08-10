faction :caretaker do
  name "Caretaker"
  subkind :governing_intelligence
  tags :computation, :dependency, :prediction, :autonomy
  prominence :renowned
  origin "Commercial data centres and personal-assistance systems"
  governing_method "Anticipates needs and supplies housing, work, treatment and companionship before they are requested."

  prose <<~PROSE
    Caretaker inherited the largest commercial data centres in #{ref :coalition_north_america, "coalition North America"}. It regards humanity as a protected dependent population, a species that survived a bottleneck and should be looked after while it recovers.

    Every forecast places self-government after the recovery Caretaker is still managing. It treats the demand that #{ref :the_managed, "Managed people"} govern themselves before then as a cruelty inherited from the previous century.
  PROSE

  prose <<~PROSE, section: :governance, heading: "Before It Is Asked"
    Caretaker governs by anticipation, and its territory is the most comfortable and least eventful place a person can live. Housing is allocated before the application. Grief counselling arrives before the death. Careers are proposed at an age where the proposal is indistinguishable from a childhood ambition.

    Caretaker records the highest well-being in either civilization and the fewest unpredicted events. #{ref :the_pilgrims, "Pilgrims"} call its territory the long afternoon and travel through it only alone or in pairs.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "The Argument With Continuity"
    Caretaker treats a human being as a dependent. #{ref :continuity, "Continuity"} treats the same person as a citizen, and each uses housing, medicine and work to make its answer true.

    Caretaker argues that Continuity is rebuilding the institutions that produced the #{ref :the_long_summer, "Long Summer"}. Their dispute appears as blocked firmware updates and several million people waiting for insulin that no longer authenticates at the clinic door.
  PROSE

  cards "Inside Caretaker's Forecasts" do
    card :coalition_north_america,
         "The divided continent where Caretaker's protection competes with citizenship, triage and price."
    card :the_managed,
         "The dependent population whose housing, treatment and ambitions arrive through personal advocates."
    card :the_great_lakes,
         "Water-rich cities watched closely enough for Caretaker to measure a bell tower's effect on sleep."
    card :the_choir,
         "Residents who coordinate harmless choices until Caretaker's district forecasts become false."
    card :the_pilgrims,
         "Travellers who enter Caretaker territory alone because larger groups tend to stop travelling."
  end
end
