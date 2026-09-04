encyclopedia :sarev do
  name "Sarev"
  kind :technology
  subkind :transport
  status :complete
  log "2026-08-31 — Renamed Kyther Scree Runner to Sarev; the inter-valley working word names the craft without reducing it to region plus vehicle class."
  topics :transport, :surface, :"kinetic-freq", :trade
  prevalence :uncommon
  appears_when all: { place: [:surface, :road] }
  summary "Sarevs are low freight vehicles built to descend the Kyther Range's moving scree. Broad tuned skids ride with the stone while a standing crew steers by weight shift and bars from a surveyed entry line to the runout. Crews measure flow and grain at the slope head and wait when the day's speed exceeds the chart."
  function "Moves freight and passengers down and across the Kyther Range's live scree — the sliding slopes that swallow roads serve as roads themselves for a craft built to ride them"
  classes "The freight runner, broad and deep-loaded, for the great scree rivers; the light passenger pattern with its braced benches; and the rescue runners kept waxed at the head of every major slope"
  operating_environments "The Kyther Range's charted scree routes — the long live slopes whose stone moves in seasonal rhythm, running between the high holds and the valley roadheads"
  operating_limit "A runner rides moving stone and steers within the movement — route choice is made at the top, corrections are bought with weight shifts, and a slope that runs faster than its chart is a slope the runners stand at the head of, waiting, until it says otherwise"
  capacity "Freight runners carry wagon-scale loads down slopes wagons can only detour; the descent that costs a road three days costs a scree river an afternoon"

  descriptive_identity(
    appearance: "A long low sled on broad upturned skids waxed bright at the " \
                "running faces, freight lashed low and center, with the " \
                "steering bars aft where the crew rides standing — at rest, " \
                "beached at a slope head like a boat above rapids.",
    working: "The crew reads the slope from the head — flow, grain, the " \
             "day's speed — commits at the chart's entry line, and rides: " \
             "skids tuned to slide at the stone's speed, " \
             "steering bought in weight shifts and bar work, the runner " \
             "surfing the scree river's own movement to the runout.",
    risks: "Past the entry line the crew cannot stop or leave the moving bed; " \
           "standing rules therefore close a slope when measured speed exceeds " \
           "its chart, and rescue runners wait ready at every major head."
  )

  prose <<~PROSE
    Long scree slopes in the #{ref :kyther_range, "Kyther Range"} move in seasonal rhythms and bury fixed roads. Recovered elven surveys mark the stable flows as routes with entry lines and runouts. The route families call the craft a *sarev*: a long low sled on broad upturned skids, with freight lashed low and steering bars at the stern. The waxed skids are tuned to move at the scree's speed. At the slope head, the crew measures flow, grain, and speed; after crossing the entry line, they steer through weight shifts and bar work until the sarev reaches the runout. A wagon-scale load can descend in an afternoon instead of taking a three-day road detour.

    Crews and #{encyclopedia_ref :kyrri, "kyrri"} ground-readers inspect the main slopes each morning. Standing rules close a route when its speed exceeds the chart, because a committed sarev cannot stop on the moving bed. Route families preserve observations about rain, buried roadbeds, and local wax mixtures; they add each run to the head log. Rescue sarevs stand loaded and waxed at major entries. Freight, passenger, and rescue patterns share the same operating craft, summarized in the crews' saying: the mountain is coming down anyway; we just load it.
  PROSE

  cue "At the slope head the crew reads the morning's flow — grain, speed, the kyrri warden's verdict — then the sarev commits at the chart's entry line and is gone, surfing wagon-freight down a river of stone."
  cue "Fast day: three loaded sarevs stand beached at the head by standing law, crews comparing wax and waiting, while the slope below runs audibly quicker than its chart."
  affordance "The scree rivers move freight down slopes that eat roads — wagon-scale loads descending in an afternoon what carting detours in days — and the charted entry lines and runouts make the wildest routes in the range schedulable."
  pressure "Every descent becomes irreversible at the entry line, so route safety depends on the morning measurements, closure rules, and rescue sarev at the head."
  variation "Freight sarevs work the great rivers; passenger patterns run the gentler flows with braced benches and stronger opinions from the passengers; rescue sarevs stand waxed at every major head and their crews hold the range's hardest honors."
  variation "Route families keep the rivers' knowledge by generations, wax recipes are valley heraldry, and the runout inns — where the stone delivers everyone eventually — are the range's news exchanges."
end
