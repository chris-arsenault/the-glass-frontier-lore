encyclopedia :clearance_hunger do
  name "Clearance Hunger"
  summary "Clearance hunger is the recurring shortage that fills a traffic settlement's galleries with stranded crews when a supply window slips — a condition the transit habs know well enough to have furnished for it, with gallery pantries, the ration bell, and the strict window-law etiquette that keeps a hungry concourse orderly. Clearance Eight named it; every capture-frame town owns it."
  kind :phenomenon
  subkind :social_condition
  status :complete
  topics :"social-structure", :transport, :governance, :isolation
  prevalence :uncommon
  appears_when all: { place: [:dock] }
  medium "Transit settlements built in elven traffic architecture — capture frames and passage galleries sized for a flow that stops when a window slips"
  nature "A scheduled famine in miniature: traffic habs feed on the flow through them, and a slipped supply window strands the flow's people and starves its commerce at the same stroke"
  function "The condition's regularity is its one mercy — window arithmetic says when it starts and roughly when it ends, so the response is furniture and law rather than improvisation"
  known_forms "The short slip of a single missed window, ridden out on gallery pantries; the long slip of a season's route failure, which escalates to ration bell and window law; and the compound slip, when relief windows fail in sequence and the registries take over"

  descriptive_identity(
    signs: "The departure boards go amber down their whole length, the gallery " \
           "pantries open their counted shelves, and the concourse's population " \
           "stops moving through and starts living there — bedrolls in the " \
           "passage bays, queues that form on bell schedule.",
    effects: "Stranded crews and passengers double a transit hab's population " \
             "inside a day; food, patience, and bunk space run down on the " \
             "window arithmetic's posted curve; and the settlement shifts by law " \
             "from port rules to window law until the boards go green.",
    hazards: "The condition's dangers are social and arrive in order — hoarding " \
             "first, gallery disputes second, and the freight raid on stored " \
             "cargo last — which is the order window law is written to meet."
  )

  prose <<~PROSE
    The #{encyclopedia_ref :elves, "elves"} built their traffic settlements as instruments of flow — capture frames and passage galleries sized for the ring's constant through-traffic, with the pantries, fountains, and resting bays of architecture that expected every guest to leave within days. The Glassfall kept the architecture and broke the constancy. A capture-frame town like #{ref :clearance_eight, "Clearance Eight"} feeds on what moves through it, and when a supply window slips — a route failure, a debris closure, a tug lost to schedule — the flow's people are stranded in the galleries at the same stroke that the flow's goods stop arriving. The condition recurs often enough to carry a name, and the name has generalized: clearance hunger is what any transit hab calls the days between a slipped window and the next good one, when the departure boards run amber, the concourse population doubles, and the settlement begins living on its shelves.

    What distinguishes the phenomenon is how thoroughly the transit habs have furnished for it. The elven galleries' resting bays take bedrolls as if designed for them — the crews' standing joke is that they were — and the postfall additions are exact: gallery pantries with counted shelves opened by the portmaster's key, the ration bell that turns queues into schedule, and window law, the compact body of rules that supersedes port law from amber boards to green and governs bunk assignment, cargo seals, and the order of feeding with a bluntness ordinary law can afford to lack. The escalation ladder is posted in every gallery. Short slips ride on the pantries; long slips bring the bell and the law; and the compound slip — relief windows failing in sequence — hands the settlement to the registries, whose famine officers arrive with the first relief tug and audit the pantry counts against the window arithmetic's curve. The stranded themselves keep the condition's culture: gallery concerts, the window-watch pools that bet on the boards, and the departure-day custom of leaving the resting bay swept and the pantry debt listed on the shelf lip, signed, for the next crew the boards catch.
  PROSE

  cue "The boards go amber down their whole length, the portmaster's key opens the counted shelves, and the concourse's travelers become, by the posted ladder, residents until further notice."
  cue "The ration bell sounds and the galleries queue on schedule — crews, passengers, and the portmaster's own family in the same line, which is window law and everyone watches that it stays so."
  affordance "The condition's regularity makes it governable — window arithmetic forecasts its length, the pantry counts and ration bell pace it, and window law's blunt rules keep a doubled, hungry population orderly enough to be fed."
  pressure "Everything rests on the posted ladder being followed in order — the pantry opened early breeds hoarding, the bell rung late breeds queues that make their own law, and the registries' famine audits exist because a portmaster's mercy and a portmaster's fraud read identically in a count."
  variation "Clearance Eight, the name's origin, runs the system's most drilled response and lends its portmasters to other habs as window-law instructors; small frame towns ride most slips on pantries and neighborliness."
  variation "The stranded keep the condition's culture — gallery concerts, window-watch betting pools, and the swept-bay departure custom with the pantry debt signed on the shelf lip for the next caught crew."
end
