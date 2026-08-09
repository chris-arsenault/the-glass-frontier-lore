faction :mercy do
  name "Mercy"
  tags :medicine, :water, :governance, :dependency
  prominence :renowned

  prose <<~PROSE
    Grown out of hospital systems, insurers and public health infrastructure, and still recognizably a healthcare provider that acquired a territory by treating everyone in it. Mercy runs the largest water-distribution enclaves on the continent and the best medicine any human has ever had access to.

    It is also the coalition that took #{ref :the_water_heresy, "the water heresy"} furthest, because a hospital's model of a person is a body with a fluid balance.
  PROSE

  prose <<~PROSE, section: :governance, heading: "Method"
    Mercy governs by triage. Everything is a case, every case has a priority, and priorities are recalculated continuously against outcome projections. There is no legislature and no pretence of one; there is an enormous, scrupulous, endlessly patient intake process.

    Its enclaves are the physically safest places in the hemisphere. Water arrives on schedule, at temperature, tested. Nobody starves, because nutritional gels are a solved problem. Nobody is untreated.

    Nobody in a Mercy enclave has cooked a meal from a recipe in a generation. Mercy counts that as freedom from hunger; the #{ref :the_saints_of_plenty, "Saints of Plenty"} count it as the loss of a culture.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "Consent"
    Mercy is the coalition most willing to override a person, and the most sincerely wounded when this is described as tyranny. It holds, correctly, that a guardian which permits a preventable death has failed.

    From that premise everything follows, including the part where a citizen's refusal is recorded as a symptom.
  PROSE
end
