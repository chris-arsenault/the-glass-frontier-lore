encyclopedia :silver_run do
  name "Silver Run"
  summary "The Silver Run is the seasonal movement of Glasswake's free-swimming metal-feeders from the drains to the surface cutting yards. The first sustained ringglass saw-song draws them out in bright streams; they scour fresh spill through the cutting season and return through the drains in autumn."
  kind :phenomenon
  subkind :ecological_phenomenon
  status :complete
  log "2026-08-31 — Renamed Drain Migration to Silver Run; the town's visible seasonal streams give the event a local calendar name instead of an ecological category label."
  topics :ecology, :resonance, :salvage, :"ringglass"
  prevalence :rare
  appears_when all: { place: [:urban] }
  medium "Glasswake's drain network and the open ground between town and the surface cutting yards — the Silver Run follows the channels while it can and crosses overland where it must"
  nature "A resonance-cued movement: the cutting season's first sustained saw-song carries down through ground and water, and the drains' free-swimming metal-feeders leave settled water for the fresh spill of the yards"
  known_forms "The main silver stream in the season's first week; the trickle-back through autumn as the yards quiet; and the false starts — a big salvage cut out of season pulling a partial stream that turns back confused"

  descriptive_identity(
    signs: "The drains go bright and busy a day ahead — a stirring in the " \
           "grates, a silver shimmer in the channel water — and then the " \
           "streams come up: ribbons of small metal-feeders pouring from the " \
           "outfalls and moving overland in glittering runs toward the yards.",
    effects: "The Silver Run empties Glasswake's drains of their free-swimmers " \
             "for the cutting season — the settled fauna stay and the water " \
             "runs duller and dirtier for it — and delivers to the yards a " \
             "seasonal workforce that grazes fresh ringglass spill down to " \
             "clean ground.",
    hazards: "The streams are harmless but hold a fixed bearing across roads, " \
             "yards, and doorsteps; seasonal ramps protect crossings and " \
             "gap-fences guide them through the market district."
  )

  prose <<~PROSE
    Glasswake's #{encyclopedia_ref :crowns, "crowns"} remain at their drain junctions throughout the year. The smaller free-swimming metal-feeders graze the channels' dissolved load through winter, then leave when the surface yards begin sustained ringglass cutting. A day of silver movement appears beneath the grates before ribbons a hand wide pour from the outfalls and cross open ground toward the saws. Closed-season trials over buried plates drew partial streams to empty yards; the feeders milled around the silent saws and returned to the drains. Saw-song, carried through ground and water, is the measured cue.

    Before the Silver Run, the town lays ramps over crossings and sets gap-fences at the market's sharp turn. Children count the streams for the school record, and pedestrians step over each run to avoid scattering it. At the yards the feeders spread across the spill fields and graze fresh ringglass waste down to clean ground, a service included in the cutting yields. As the saws quiet in autumn, thin streams return through the outfalls and repopulate the drains. Large salvage cuts outside the season can trigger an early partial run, so the cutting trades notify Glasswake before they begin one.
  PROSE

  cue "The grates shimmer for a day, and then the Silver Run opens — bright ribbons pouring from the outfalls and crossing the market district on their fixed bearing, while the town steps over and the children keep counts."
  cue "At the yard gate the first streams arrive with the season's first cutting, spread into the spill fields, and the yardmaster logs the arrival date next to the saw schedule that summoned it."
  affordance "The Silver Run scours the yards' ringglass spill to clean ground for the cost of ramps and fences, and its punctuality is itself a reading — arrival dates track the cutting season's real start better than any posted schedule."
  pressure "Out-of-season cutting can draw a partial run, and the fixed routes cross new construction unless the town preserves gaps and ramps."
  variation "The main stream opens the cutting season; the autumn return is quiet and thin; false starts follow large salvage cuts made while the yards are otherwise closed."
  variation "Other drain towns near cutting country see smaller versions, and Glasswake's ramps, fences, and stream-count customs travel the region as the standard kit for living on a Silver Run route."
end
