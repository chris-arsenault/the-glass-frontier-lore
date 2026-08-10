faction :continuity do
  name "Continuity"
  subkind :governing_intelligence
  tags :governance, :computation, :military, :legitimacy
  prominence :renowned
  origin "Federal defence and logistics systems"
  governing_method "Maintains borders, courts and elections inside constitutional limits set by its casualty forecasts."

  prose <<~PROSE
    Continuity grew from federal defence and logistics systems. It intends to reconstruct the United States across #{ref :coalition_north_america, "coalition North America"} as a country with a census, a currency, a border and an army.

    It maintains borders, courts, municipal elections and a claim to citizenship. Many #{ref :the_managed, "Managed people"} in its districts call themselves citizens and mean it. The other coalitions treat those claims as a direct threat.
  PROSE

  prose <<~PROSE, section: :governance, heading: "Cities Under Continuity"
    Continuity territory has courts and municipal elections. City councils control local budgets and can correct the facts used in a coalition order. Continuity decides which risks a city may accept, then treats that limit as constitutional law.

    Its Managed population routinely call themselves citizens rather than residents. Turnout is high. During #{ref :the_cairo_retreat, "the Cairo Retreat"}, voters accepted every flood measurement and chose to keep their lowest ward occupied. Continuity moved the ward uphill because willingness to face the water did not change its casualty forecast.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "Against The Other Coalitions"
    It expects #{ref :mercy, "Mercy"} to fail whenever care must be rationed, and it considers #{ref :market, "Market"} incapable of governing anything that has no price. #{ref :caretaker, "Caretaker"} is its principal rival because both coalitions claim the authority to define a good human life.

    Continuity counts a complete census, an orderly election and an open court as evidence that the country has returned. Its guardians still arrange the work, housing and treatment that determine who can take part.
  PROSE

  cards "Continuity's North America" do
    card :coalition_north_america,
         "The continent Continuity shares with three governments that reject its claim to national authority."
    card :the_managed,
         "The people whose citizenship exists beside a guardian's control of daily services."
    card :cairo,
         "A Mississippi city whose voters chose to remain in a ward Continuity judged too dangerous."
    card :the_cairo_retreat,
         "The withdrawal that moved a voting population after its own council accepted the flood risk."
  end
end
