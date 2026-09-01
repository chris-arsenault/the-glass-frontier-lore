encyclopedia :resonant_pressure_front do
  name "Loadfront"
  kind :phenomenon
  subkind :physical_phenomenon
  status :complete
  log "2026-08-31 — Renamed Resonant Pressure Front to Loadfront; glass-country work already treats the traveling structural load as forecast weather, giving the joined term a precise boundary."
  topics :resonance, :danger, :navigation, :"structural-freq"
  prevalence :uncommon
  appears_when any: { place: [:ringglass_rich, :debris_field] }
  summary "A loadfront is a traveling wall of structural-band load that moves through connected ringglass like weather through a valley — announced by instruments, animals, and aching teeth, and arriving as a minutes-long surge that every glass-country trade schedules around."
  medium "Connected ringglass masses: the surface sheets, the great debris fields, and any structure glass-tied to them"
  nature "A propagating surge of structural-band load, tracked by the survey network and forecast like weather along the glass"
  hazard "The front loads everything glass-connected as it passes — seams work, stressed masses discharge, and work caught mid-lift on the glass rides the surge"

  descriptive_identity(
    signs: "Ahead of a front: instruments lift in sequence down the line, gleeds green early, " \
           "herds drift off the sheets, and glass-country teeth ache on a schedule people " \
           "check against the forecast. The front itself arrives as a felt pressure with " \
           "its own weather-sound in the glass.",
    effects: "For the minutes of its passing, everything glass-connected carries extra load: " \
             "seams work audibly, stressed masses find their fractures, and the surge's " \
             "track is readable afterward in what discharged and what held.",
    hazards: "A lift, cut, or crossing caught mid-front rides the surge with whatever margin " \
             "it happened to have — and glass-country work rules therefore treat the " \
             "forecast the way docks treat the horn."
  )

  prose <<~PROSE
    The glass carries weather. Along the connected ringglass masses — Avar's buried sheets, the fused ridge over Glasswake, the great tangles of the Shear — loadfronts propagate through the glass the way storm pressure moves down a valley, taking minutes to pass and loading everything glass-tied while they do. Seams work audibly. Stressed masses find their fractures and discharge. A front's passage is written afterward in a track of small failures and survived groans, and the survey network's standing instruments watch the known glass roads and publish front forecasts with the confidence of a service that has been mostly right for generations.

    The country reads the approach through several signs. Instruments lift in sequence down the line; #{encyclopedia_ref :gleeds, "gleeds"} run green early along the track; #{encyclopedia_ref :breach_lichen, "lichen"} darkens out of season; and herds walk off the sheets after sensing the load through their feet. Many glass-country residents report aching teeth ahead of a front. Medical surveys confirm the timing without establishing its mechanism. Front discipline is the region's shared work rule: lifts land before the window, cuts wait, crossings clear the sheets, and singers re-sing anything the front touched before it flies again.
  PROSE

  cue "Down the survey line the needles lift one station after another like a wave running a fence, and the duty forecaster moves a red pin two towns closer."
  cue "The herd walks itself off the glass sheet in good order an hour before anything shows on the town's own gauge, and the road crews knock off behind them on the herd's word alone."
  affordance "The forecast turns the surge into schedule: fronts are tracked down the glass roads hours out, and every trade in the country plans its lifts, cuts, and crossings into the clear windows the service publishes."
  pressure "The front loads every glass-connected lift, cut, and crossing for the minutes of its passage; crews clear the sheets before the forecast window and re-sing touched loads afterward."
  variation "Surface fronts run the buried sheets on charted roads and are forecast like weather; Shear fronts move through the debris tangles on routes the claim crews chart privately and trade dearly."
  variation "After a front, singers re-sing every touched load and the survey teams walk the discharge track — and glass-country insurance divides all damage into before-the-pin and after-the-pin at rates that enforce the forecast better than any warden."
end
