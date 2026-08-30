installation :eleven do
  name "Eleven"
  summary "Eleven is a settlement of nine thousand people along eleven shafts in the Glass Frontier, sharing one gravity-fed water and coolant line."
  playable_as :chronicle_location
  context_tags :sealed_hab
  aka "Service Habitat Eleven"
  subkind :settlement
  status :complete
  tags :"ring-hab", :household, :"social-structure", :transport, :resonance
  prominence :marginal
  population 9000
  population_band "About nine thousand residents"
  role "Water-transfer settlement and maintenance route through a long service fragment"
  setting "Eleven inhabited shafts spaced along a gravity-fed water and coolant line"
  access "End docks on the inner service-fragment circuit between Holl and Vey, plus small locks at four middle shafts"
  omit_facts :maintained_by

  descriptive_identity(
    setting:
      "Eleven round courts descend to a water tunnel spaced along six " \
      "kilometers of service fragment: living quarters on the upper " \
      "rings, lift machinery in the middle, and a stone-lined gallery at " \
      "the bottom where the main channel runs. Painted marks show the " \
      "expected waterline at every bend.",
    activity:
      "Neighborhood pumps lift each shaft's share on a daily schedule " \
      "measured in minutes at a stated valve opening, and the minutes " \
      "change hands through ordinary bargaining — early water for " \
      "delivery work, night minutes for repair space. Maintenance " \
      "workers travel the channel by narrow skiff and raised ledge.",
    access:
      "End docks sit on the inner service-fragment circuit between Holl " \
      "and Vey, with small locks at four of the middle shafts. Between " \
      "shafts, freight rides an exterior cable and passengers take " \
      "hab-runners through a parallel bore.",
    hazards:
      "The line carries machine heat as well as water, so any adjustment " \
      "at the source reaches the lower shafts as temperature, pressure, " \
      "and structural tone — a quiet fix upstream announces itself " \
      "downstream. When the cable is under repair, the water walk " \
      "becomes the only fast road through all eleven communities."
  )

  prose <<~PROSE
    Water enters at the source dock, descends through eleven inhabited shafts, and leaves through the outlet farms six kilometers away. Pumps lift local shares into neighborhood tanks. The main line also carries heat from machinery seated along the fragment's structural spine, so an upstream adjustment reaches the lower shafts as temperature, pressure, and resonance tone.

    Each shaft opens onto cisterns, workshops, gardens, and rooms cut beside the flow. A maintenance walk follows the channel through them all, making the water line the settlement's shared street as well as its utility.
  PROSE

  prose <<~PROSE, section: :structure, heading: "A Settlement in Profile"
    The shafts appear as eleven round courts descending to the water tunnel. Living quarters occupy the upper rings. Workshops and lift machinery fill the middle. At the bottom, a stone-lined gallery gives access to the main channel and the valves feeding each local cistern. Ring plans call the fragment Service Habitat Eleven; Famine crews dropped the first two words from daily speech.

    A maintenance walk follows the water from source to outlet. Workers travel it in narrow skiffs where the channel is deep and on raised ledges through the shallow reaches. Regular cross-passages lead to pressure shelters and vertical escape tubes. Painted marks show the expected waterline at every bend.

    Freight moves between shafts along an exterior cable route. Passenger traffic uses small hab-runners inside a parallel service bore. The water walk remains the fastest route during cable repair and the first route inspected after a structural tremor.
  PROSE

  prose <<~PROSE, section: :people, heading: "Minutes of Flow"
    Each shaft holds a schedule for lifting water from the main line. The schedule follows households, gardens, workshops, and public tanks through the day. A share is measured in minutes at a stated valve opening. Heat-intensive workshops receive colder hours near the start of the cycle; kitchens and wash rooms use the warmer return.

    Shares pass through families and businesses. They also change through ordinary bargaining. A baker trades early water for delivery work. A machine shop lends three night minutes to a new bathhouse in exchange for repair space. Public cisterns hold a fixed portion at every shaft.

    #{ref :orr_senn, "Orr Senn"} reads the source line and coordinates changes when pressure drifts. His wall charts show how one adjustment travels through all eleven communities.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "The Second Lift"
    A new low-band pump at Shaft Two can lift water with a third of the present heat loss. Tests have filled the public cistern early and kept the downstream tone within its working range. Building a second pump would release several hours of flow every day.

    The lower shafts have proposed new gardens and cooling work for those hours. Source crews want a season of operation before changing the schedule. #{ref :merren, "Merren"} has offered Eleven the second machine at cost in exchange for a permanent service bay beside the channel and first claim on repairs throughout the eleven shafts.
  PROSE

  gm_note :appears, "Freight crosses the shafts on the exterior cable and passengers ride the parallel bore, but with either one down the water walk is the road, and a party travels by skiff through the deep reaches and by ledge past the painted waterline marks."
  gm_note :triggered_by, "Water here is bought in minutes at a stated valve opening rather than by volume, and the minutes belong to households and workshops that bargain with them. A crew wanting a bath, a coolant fill, or a wash-down negotiates with a neighbor and usually pays in labor."
  gm_note :complicates, "Anything adjusted at the source line arrives in all eleven shafts as temperature, pressure, and structural tone, so a quiet fix upstream is known in the lower courts before the party who made it gets there."
end

relate :rel_eleven_located_in_frontier, :located_in, :eleven, :the_glass_frontier, since: 2140 do
  prose "Eleven follows a long service fragment within the inhabited ring."
end

relate :rel_vey_supplies_eleven_airwork, :supplies, :vey, :eleven, since: 2435 do
  prose "Vey supplies passive-flow shutters and passage drawings for Eleven's coupled water and heat spine."
end

relate :rel_eleven_supplies_vey_flow_records, :supplies, :eleven, :vey, since: 2435 do
  prose "Eleven returns pressure, heat, and structural-tone records from each installed Vey design."
end
