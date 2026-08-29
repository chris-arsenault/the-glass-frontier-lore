installation :clearance_eight do
  name "Clearance Eight"
  summary "Clearance Eight is a traffic settlement in the Glass Frontier, built on a capture frame that clears passage between two narrow ring fragments."
  playable_as :chronicle_location, :homeland
  context_tags :"realm:ring_habitat"
  origin_blurb "A debris-capture settlement where eight public desks decide what may pass, be claimed, or be cut."
  subkind :settlement
  type_of :settlement
  status :complete
  tags :"ring-hab", :transport, :navigation, :salvage, :governance, :"kinetic-freq"
  prominence :recognized
  population 2700
  population_band "About twenty-seven hundred residents"
  role "Removal, custody, and controlled release of debris from a major approach lane"
  setting "A capture frame spanning the gap between two narrow ring fragments"
  access "Escort through the cleared centerline; Brake lies one tug shift beyond the custody docks"
  omit_facts :maintained_by

  descriptive_identity(
    setting:
      "A capture frame spanning the gap between two narrow ring " \
      "fragments across a busy approach, kinetic arrays drawing loose " \
      "material into slots along its outer edge while ships pass down " \
      "the cleared centerline. Behind the custody docks wait claim " \
      "rooms, powered cradles, quarantine berths, and sorted salvage " \
      "lots.",
    activity:
      "Eight public desks work through recovery and hazard, identity " \
      "and route, ownership and debt, salvage value and release, each " \
      "pressing one impression into the seal fixed to an object. " \
      "Residents read what motion did to a thing — a bent panel edge " \
      "gives its last collision, dust in a sealed seam places it near a " \
      "drive plume.",
    access:
      "Arrivals come down the centerline under escort, with the arrays " \
      "stripping anything unlisted off a hull before it ties up. Brake " \
      "lies one tug shift beyond the custody docks.",
    hazards:
      "During release work the patrol tug can push an unlisted object " \
      "back into the capture field and hold all traffic while the desks " \
      "assign it a route. A disputed machine sits powered in custody " \
      "for as long as its route and ownership impressions stay open."
  )

  prose <<~PROSE
    Two narrow fragments carry a capture frame across one of the ring's busiest approaches. Kinetic arrays draw loose material into slots along its outer edge while ships cross the cleared centerline. Rekindling pilots numbered the managed approaches as they restored them; the settlement kept Clearance Eight's service designation.

    Pressure vessels, marked cargo, personal effects, active machines, and worked materials enter the custody docks. Broken plate and exhausted rock enter sorted lots. Fine debris gathers into dense release bundles that tugs send along charted trajectories beyond inhabited traffic.

    Residents read what motion did to an object. A rotating panel records the last collision in its bent edge. Dust inside a sealed seam can place a container near a drive plume. A weak kinetic imprint across a cargo frame shows the ships that towed it and in what order. Those readings decide whether the object enters a claim room, a powered cradle, a quarantine berth, a salvage lot, or an outbound bundle.
  PROSE

  prose <<~PROSE, section: :governance, heading: "Eight Desks and a Seal"
    Eight public desks settle recovery and hazard, identity and route, ownership and debt, then salvage value and release. Each adds one impression to #{encyclopedia_ref :eighth_seal, "the Eighth Seal"} fixed to the object. The completed sequence lets a tuned reader recover the evidence behind the final color instead of receiving only the disposition.

    Claimants can accompany an object and answer the readers directly. A disputed machine remains powered in custody while its route and ownership impressions stay open. Household goods wait in sealed rooms arranged by recovery route. Market buyers inspect a lot only after the ownership desk closes its part of the seal.

    #{ref :tangent, "*Tangent*"} patrols the centerline during release work. Its pilot can push an unlisted object back into the capture field and hold traffic while the desks assign it a route.
  PROSE

  prose "#{embed :returning_pods}", section: :present_day, heading: "The Returning Pods"

  gm_note :appears, "Ships reach the docks down an escorted centerline with kinetic arrays pulling loose material into the slots along the frame's outer edge, so anything unlisted riding on a player hull is taken off them before they tie up."
  gm_note :triggered_by, "Show a resident any object and they read what motion did to it: a bent panel edge gives its last collision, dust in a sealed seam places it near a drive plume, a weak kinetic imprint names the ships that towed it and in what order."
  gm_note :complicates, "A disputed machine stays powered in its cradle while the route and ownership impressions remain open, and any claimant may stand at the desk and answer the readers directly."
end

relate :rel_clearance_eight_located_in_frontier, :located_in, :clearance_eight, :the_glass_frontier, since: 2305 do
  prose "Clearance Eight holds open a managed approach through the ring debris."
end

relate :rel_clearance_eight_supplies_brake, :supplies, :clearance_eight, :brake, since: 2435 do
  prose "Clearance Eight sends unclaimed hull sections and intact machinery to Brake with the full custody record attached."
end
