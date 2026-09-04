encyclopedia :avulsion do
  name "Avulsion"
  kind :phenomenon
  subkind :physical_phenomenon
  status :complete
  topics :navigation, :transport, :danger, :trade
  prevalence :uncommon
  appears_when any: { place: [:unstable_route, :debris_field] }
  summary "Avulsion is the relocation of a debris-field passage after shifting masses close its old channel and open a viable line elsewhere. Drift surveys can forecast a slow change; collisions produce sharp ones. Registries close the narrowing passage, then survey crews move the beacons and traffic rights to the new route."
  medium "The trafficked channels of the debris fields and the unstable legs between fragments — passages held open by the balance of moving masses, and re-dealt when the balance goes"
  nature "A threshold failure in a channel's geometry: one mass shifts, the passage closes over hours or days, and the viable line re-forms elsewhere along the new balance — the route moving as a whole, the way a river avulses to a new bed"
  hazard "Traffic caught mid-passage during the close works against narrowing clearances on stale charts; traffic that arrives after learns the route's new address the expensive way if the beacons have lagged the ground"
  known_forms "The slow avulsion, forecast by drift surveys and walked to its new line over a season; the sharp avulsion after a collision or breakup, which re-deals a route in days; and the swing route that avulses between two known beds on a cycle the pilots' tables approximate"

  descriptive_identity(
    signs: "Drift-survey margins widening on the route's chart revisions, " \
           "clearances shading tighter passage over passage, and the pilots' " \
           "word going around the waystations ahead of any bulletin: the leg " \
           "is thinking about moving.",
    effects: "The old channel closes, the viable line re-forms along the new " \
             "balance of masses — sometimes a course away — and everything " \
             "the route carried with it moves or lapses: beacons, waystation " \
             "traffic, salvage rights, the arithmetic of every schedule that " \
             "ran through it.",
    hazards: "The close is the killing interval — narrowing clearances, stale " \
             "charts, and crews finishing a passage the ground is finishing " \
             "faster — and the registries' route-closure authority exists to " \
             "take that decision away from schedules."
  )

  prose <<~PROSE
    When a keystone mass in a debris field drifts past a geometric threshold or breaks in a collision, an established passage can narrow and close while another opens along the field's new balance. Early pilots borrowed the river term avulsion for this wholesale change of course. The new bed may lie a full course away from the old one. Slow avulsions appear first as widening survey margins and shrinking clearances; sharp avulsions after collisions can rearrange a route in days.

    Charts identify routes capable of avulsion and publish drift margins beside their current clearances. When those margins close, registries can halt traffic before schedules push crews into a narrowing passage. Survey skiffs establish the new line, beacon crews mark it, and waystations rebalance traffic one leg at a time. Freight-court rules transfer berth rights, salvage strips, and route custom to the new bed. Pilots summarize the practice in the old sentence taught before any chart: the route is where it is today.
  PROSE

  cue "The chart revision lands with the drift margins doubled and the pilots' word already ahead of it down the waystation bar — the leg is thinking about moving — and the season's contracts start writing their avulsion clauses."
  cue "The closure bulletin sounds, the last cleared transit comes through with the survey skiff's escort, and by month's end the beacon crews are walking lights out along a line that ran empty vacuum on every chart of the old bed."
  affordance "Drift margins forecast slow avulsions, closure authority clears narrowing channels, and the rule that rights follow the route lets trade resume on the surveyed replacement."
  pressure "During the change, clearances narrow faster than old charts and beacons can be replaced; every schedule through the former bed must be rerouted and repriced."
  variation "Slow avulsions are walked to their new lines with survey lead; sharp ones after breakups re-deal a route in days and are the closure authority's hardest calls; swing routes cycle between known beds and support their own specialist pilots."
  variation "Avulsion clauses are standard in route freight contracts, and the freight courts' old rule — rights follow the route — is tested and reaffirmed every time a new bed runs through somebody's quiet claim."
end
