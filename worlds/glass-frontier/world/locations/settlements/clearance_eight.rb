installation :clearance_eight do
  name "Clearance Eight"
  playable_as :chronicle_location, :homeland
  origin_blurb "A debris-capture settlement where eight public desks decide what may pass, be claimed, or be cut."
  subkind :settlement
  status :complete
  tags :"ring-hab", :transport, :navigation, :salvage, :governance, :"kinetic-freq"
  prominence :recognized
  population 2700
  population_band "About twenty-seven hundred residents"
  role "Removal, custody, and controlled release of debris from a major approach lane"
  setting "A capture frame spanning the gap between two narrow ring fragments"
  access "Escort through the cleared centerline; Brake lies one tug shift beyond the custody docks"
  omit_facts :maintained_by

  prose <<~PROSE
    Two narrow fragments carry a capture frame across one of the ring's busiest approaches. Kinetic arrays draw loose material into slots along its outer edge while ships cross the cleared centerline. Rekindling pilots numbered the managed approaches as they restored them; the settlement kept Clearance Eight's service designation.

    Pressure vessels, marked cargo, personal effects, active machines, and worked materials enter the custody docks. Broken plate and exhausted rock enter sorted lots. Fine debris gathers into dense release bundles that tugs send along charted trajectories beyond inhabited traffic.

    Residents read what motion did to an object. A rotating panel records the last collision in its bent edge. Dust inside a sealed seam can place a container near a drive plume. A weak kinetic imprint across a cargo frame shows the ships that towed it and in what order. Those readings decide whether the object enters a claim room, a powered cradle, a quarantine berth, a salvage lot, or an outbound bundle.
  PROSE

  prose <<~PROSE, section: :governance, heading: "Eight Desks and a Seal"
    Eight public desks settle recovery and hazard, identity and route, ownership and debt, then salvage value and release. Each adds one impression to #{ref :eighth_seal, "the Eighth Seal"} fixed to the object. The completed sequence lets a tuned reader recover the evidence behind the final color instead of receiving only the disposition.

    Claimants can accompany an object and answer the readers directly. A disputed machine remains powered in custody while its route and ownership impressions stay open. Household goods wait in sealed rooms arranged by recovery route. Market buyers inspect a lot only after the ownership desk closes its part of the seal.

    #{ref :tangent, "*Tangent*"} patrols the centerline during release work. Its pilot can push an unlisted object back into the capture field and hold traffic while the desks assign it a route.
  PROSE

  prose "#{embed :returning_pods}", section: :present_day, heading: "The Returning Pods"
end

relate :rel_clearance_eight_located_in_frontier, :located_in, :clearance_eight, :the_glass_frontier, since: 2305 do
  prose "Clearance Eight holds open a managed approach through the ring debris."
end

relate :rel_clearance_eight_supplies_brake, :supplies, :clearance_eight, :brake, since: 2435 do
  prose "Clearance Eight sends unclaimed hull sections and intact machinery to Brake with the full custody record attached."
end
