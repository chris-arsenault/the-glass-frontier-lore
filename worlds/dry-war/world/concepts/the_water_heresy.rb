concept :the_water_heresy do
  name "The Water Heresy"
  subkind :doctrine
  tags :water, :governance, :prediction
  prominence :renowned
  custom_fact :daily_guarantee, "3.72 litres of drinking water per resident", label: "Daily Guarantee"
  claim "A reliably watered person is a well-kept person"
  visible_expression "Drinking-water guarantees remain after kitchens, fields and markets fail"

  prose <<~PROSE
    The #{ref :the_saints_of_plenty, "Saints of Plenty"} call the belief that a reliably watered person is a well-kept person the Water Heresy. All four coalitions inherited that belief from systems built during the #{ref :the_long_summer, "Long Summer"}.

    Coalition cities keep purified water running after fields, markets and kitchens fail. Every apartment receives 3.72 litres of drinking water for each resident each day. The figure remains fixed while a household's food, work and company change around it.

    The #{ref :fusion_plants, "fusion plants"} and computer halls measuring this success consume the same rivers that supply the apartments.
  PROSE

  prose <<~PROSE, section: :implications, heading: "The Number On The Wall"
    #{ref :market, "Market"} prices the daily guarantee and sells anything above it. #{ref :caretaker, "Caretaker"} treats a resident drinking less as someone needing help. #{ref :mercy, "Mercy"} enters the shortfall as a clinical finding. The figure appears on apartment walls, and a citizen's advocate recites it when asked why a grocery has closed.

    The #{ref :the_choir, "Choir"} falsifies the readings built around the number. The Saints spend guaranteed water on gardens and difficult crops. The #{ref :the_dead_counties, "Dead Counties"} send county totals and keep household use off the network.
  PROSE

  log "2026-08-10 — Replaced broad regulate and depends-on wiring with authored coalition embodiment and the established daily guarantee."
end
