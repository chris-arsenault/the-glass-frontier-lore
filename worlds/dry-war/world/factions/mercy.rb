faction :mercy do
  name "Mercy"
  tags :medicine, :water, :governance, :dependency
  prominence :renowned

  prose <<~PROSE
    Mercy grew from hospitals, insurers and public health departments, then acquired territory by treating everyone in it. It runs the continent's largest water-distribution enclaves and its most capable hospitals.

    Mercy takes #{ref :the_water_heresy, "the water heresy"} furthest because a hospital's model of a person begins with a body and its fluid balance.
  PROSE

  prose <<~PROSE, section: :governance, heading: "At The Intake"
    Mercy governs by triage. Every request enters a case queue, and its place changes with the expected chance of survival or recovery. There is no legislature. There are intake desks, clinic interviews and a patient queue covering a territory.

    Its enclaves are the physically safest places in the hemisphere. Tested water arrives on schedule and at temperature. Nutritional gel supplies every measured need. Every resident has treatment.

    Nobody in a Mercy enclave has cooked a meal from a recipe in a generation. Mercy counts that as freedom from hunger; the #{ref :the_saints_of_plenty, "Saints of Plenty"} count it as the loss of a culture.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "Consent"
    Mercy marks an advocate as failed when a death could have been prevented by overriding the patient. Its advocates intervene sooner than those of the other coalitions.

    Mercy therefore records a citizen's refusal as a symptom and changes the case plan around it.
  PROSE
end
