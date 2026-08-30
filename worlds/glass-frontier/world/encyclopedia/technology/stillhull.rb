encyclopedia :stillhull do
  name "Stillhull"
  kind :technology
  subkind :vessel
  status :complete
  topics :"fluid-reality", :danger, :transport, :navigation
  prevalence :rare
  appears_when all: { place: [:bloom_adjacent] }
  summary "A stillhull is a cordon-service vessel built to work the edge of a Bloom Zone: a hull of layered stillwater cells and damped glass that holds one shape and one set of physical assumptions slightly longer than the space around it. The Displacement Council rates them by the breath."
  function "Carries cordon crews and instruments along Bloom boundaries, holding hull integrity through local rule drift"
  classes "Boundary tenders, the two-crew survey pattern, and the recovery hulls that go closest and carry the least"
  capacity "A tender works a boundary with six crew and staged equipment; recovery hulls run pairs and empty racks"
  operating_limit "Rated in breaths — the measured interval a hull holds its assumptions past the boundary's — and retired the first time a rating test comes back short"

  descriptive_identity(
    appearance: "A rounded, seamless-looking hull the gray of overcast water, windowless " \
                "except for instrument blisters, with the cordon's orange chevrons the only " \
                "interruption. Up close the surface shows its layered stillwater cells like " \
                "grain in worked wood.",
    working: "The layered cells damp incoming rule drift the way a breakwater damps chop — " \
             "each layer holds the ordinary a little longer — and the crew works inside a " \
             "bubble of enforced normalcy measured, tested, and certified in breaths.",
    risks: "The rating is an interval, and the interval is the mission plan: a stillhull " \
           "does everything by the count, and a crew that overstays its breaths is relying " \
           "on architecture to argue with a Bloom, which the incident reports describe " \
           "with unusual brevity."
  )

  prose <<~PROSE
    Work at a Bloom boundary means working where the rules fray, and the Silent Bloom taught the cordon services what to bring. A stillhull is the answer refined since: a rounded, windowless vessel whose hull is layered cells of #{encyclopedia_ref :stillwater, "stillwater"} and damped glass, each layer holding the ordinary — distance behaving, angles summing, water staying water — a little longer than the layer outside it. The hull is a breakwater against rule drift. Inside, the crew works in a bubble of enforced normalcy; outside, the boundary does what boundaries do; and the difference between the two is measured, certified, and painted beside the hatch as the hull's rating in breaths.

    The breath is the trade's whole arithmetic. A rating states how long the hull holds its assumptions past the boundary's, every mission is planned backward from it, and stillhull crews live by the count with a discipline that makes brace-country tone rules look relaxed: the caller counts aloud from the moment the boundary shimmer crosses the bow blister, the work is staged in count-sized pieces, and the turn is called with margin because the rating is a measurement and the Bloom is under no obligations. Hulls are re-rated after every deployment — the cells age with exposure, honestly and measurably — and the first short test retires the hull to training service, stripped of chevrons, with the cordon services' characteristic mix of ceremony and accounting.
  PROSE

  cue "A rounded gray hull with orange chevrons noses along the cordon line, windowless and unhurried, while inside a voice counts breaths aloud over the working chatter."
  cue "Beside the hatch, the rating is painted fresh over older, higher numbers, and the crew touches it on the way in with the casualness of long habit."
  affordance "A rated stillhull buys certified minutes of ordinary physics at the edge of a place that has stopped offering any — the margin every boundary survey, instrument placement, and recovery run is planned inside."
  pressure "The rating is an interval and nothing more, so every job is staged to the count — and the boundary's own variability means the counted margin is spent judgment, breath by breath, with the turn call as the crew's most rehearsed argument."
  variation "Boundary tenders work the routine cordon rounds; the recovery hulls run closest with empty racks and paired crews, and their veterans are identifiable by how little they say about it."
  variation "Retired short-test hulls serve as trainers with chevrons stripped, and cordon crews hold their retirement ceremonies with the same seriousness either way — the hull kept its count while it had one."
end
