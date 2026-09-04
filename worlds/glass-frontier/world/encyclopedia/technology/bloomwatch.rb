encyclopedia :bloomwatch do
  name "Bloomwatch"
  kind :technology
  subkind :border_post
  status :complete
  log "2026-08-31 — Renamed Stations to Bloomwatch; the name joins the established Bloom boundary with the post's continuous watch instead of promoting a generic building noun."
  topics :"fluid-reality", :danger, :governance, :rebuilding
  prevalence :uncommon
  appears_when all: { place: [:cordon] }
  summary "A bloomwatch is the standard watch post at a Bloom boundary. Its watch floor records instruments and sensitive reports, its gear room stores stakes, bells, closures, and stretchers, and its quarters keep the crew that walks and restakes the line. Records leave on every supply run because the building is meant to be abandoned if the boundary advances."
  function "Holds a stretch of Bloom boundary: continuous instrument watch, the closure and marking gear for the line's movements, and quarters for the crew that walks it"
  classes "The standing bloomwatch of the great cordons, crewed in shifts with full instrument floors; the line post of the rural boundaries, two rooms and a mast; and the mobile pattern — the same three rooms on skids — that follows a moving boundary"
  operating_environments "The cordon lines wherever the Bloom is bordered — grassland fence lines, hab corridor bulkheads, the orbital boundary buoys that carry the pattern into vacuum"
  operating_limit "A bloomwatch can read and mark a boundary but cannot hold it; all records are duplicated outward and the crew drills to abandon the building when the line advances"
  capacity "A standing bloomwatch watches a day's walk of line; posts watch what a crew can walk before weather turns; and the spacing tables that say so are the cordon services' oldest published document"

  descriptive_identity(
    appearance: "A low, damped building squatting at the line — instrument " \
                "mast, signal bells, the boundary's current survey stakes " \
                "marching away on either side — built of the district's own " \
                "materials to the same three-room plan everywhere: watch " \
                "floor, gear room, quarters.",
    working: "The watch floor reads the line's instruments in rotation and " \
             "logs to the duplicate books that travel outward on every " \
             "supply run; the gear room holds stakes, bells, closure kit, " \
             "and the sensitives' chair; the quarters keep the crew that " \
             "walks the line at dawn and dusk, restaking what moved.",
    risks: "A boundary can advance past the post faster than the watch expects; " \
           "records are duplicated outward and crews drill abandonment under " \
           "the service rule painted on the gear-room door: the bloomwatch is furniture."
  )

  prose <<~PROSE
    Cordon services build the same low, damped bloomwatch along every established Bloom boundary. The standard plan has three working spaces. On the watch floor, crews record band instruments, survey-stake bearings, and reports from #{encyclopedia_ref :ache, "sensitives"}. The gear room holds stakes, signal bells, closure tackle, stretchers, and the sensitive's chair. Quarters keep a crew close enough to walk the line at dawn and dusk and replace any markers moved overnight. Every record is copied, and one set travels outward on each supply run.

    The standard assumes the boundary may overtake the building. Crews drill an abandonment bell pattern, take the current books, and leave the structure signed and unlatched. Mobile posts carry the same plan on skids; standing bloomwatches are replaced at a safe distance when their line moves. The service rule painted inside each gear-room door is “The bloomwatch is furniture.” This keeps attention on the continuous watch: daily bearings and instrument logs extend from a cordon's founding even when several buildings have held them.
  PROSE

  cue "Dawn walk: the crew moves down the stake line restaking what the night shifted, the bloomwatch bells silent behind them, and the watch floor logs the new bearings twice before breakfast."
  cue "The abandonment drill runs on the bell pattern — books out first, crew out second, door signed and left unlatched — and the district sets its clocks by it, which is the point."
  affordance "The shared layout supports continuous instrument watch, daily line walks, marked closures, and records that remain intact when a post must move."
  pressure "A line can overtake its post, so the service spends replaceable buildings to preserve crews and records; staffing and walking distance set the bloomwatch's true capacity."
  variation "Standing bloomwatches crew in shifts with full instrument floors; rural line posts watch with two rooms and a mast; the mobile pattern follows moving boundaries on skids; and the orbital buoys carry the three-room doctrine into vacuum with the quarters left out."
  variation "Districts build in local materials — stone on the grasslands, hull plate in habitats — while preserving the same gear-room layout so crews can transfer between lines."
end
