encyclopedia :transplant do
  name "Transplant"
  kind :technology
  subkind :transport
  status :complete
  log "2026-08-31 — Renamed Root Cart to Transplant; the familiar garden action now names transport that keeps its living cargo rooted throughout the journey."
  topics :ecology, :trade, :transport, :"ring-hab"
  prevalence :uncommon
  appears_when all: { place: [:garden] }
  summary "A transplant moves grafts, seedlings, and symbiote stock in a shallow working garden bed. Water, a heat store, covers, and a signed tending log keep the cargo planted through the journey. Gardeners prepare the bed before departure and lift stock at the destination already rooted in its travelling medium."
  function "Moves living horticultural cargo planted — grafts, seedling beds, symbiote stock — with the transplant's own root box keeping the cargo's roots warm, fed, and connected for journeys that bare-root packing kills"
  classes "The hand transplant for terrace and gallery rounds; the road pattern with covered box and heat store for the between-settlement trade; and the river box, the same bed built into a vessel for the season fairs"
  operating_environments "Garden habs, terraces, and the roads and rivers between them — anywhere the graft trade moves stock that must arrive alive"
  operating_limit "The box is a small garden and keeps a garden's needs — watered, warmed, and rebedded on schedule — so a transplant's range is its tending plan, and one parked beyond its plan is a bed dying in harness"
  capacity "A hand transplant carries a household's trading stock; a road transplant beds a season's exchange for a cooperative; the river boxes take whole young beds to the fairs, rootward children sometimes riding with their grafts"

  descriptive_identity(
    appearance: "A transplant whose bed is visibly alive — a shallow box of dark " \
                "growing medium under low hoops, green showing at the rim, " \
                "with the water cask and heat store built into the frame and " \
                "the tending log in its sleeve on the tailboard.",
    working: "Stock is planted into the box days before travel so the roots " \
             "take hold, tended on the road by the posted plan — water, " \
             "warmth, the covers worked with the weather — and lifted out at " \
             "the far end already growing, the journey a transplant with " \
             "wheels under it.",
    risks: "Water, heat, cover, and bed condition require tending on schedule; " \
           "the signed log identifies missed care and determines warranties " \
           "when living stock arrives in poor condition."
  )

  prose <<~PROSE
    Elven transfer beds moved planting stock around the ring while it remained rooted, watered, and warm. Postfall gardeners rebuilt the pattern as the transplant. Its shallow bed carries dark growing medium under low hoops, with a water cask and heat store built into the frame. Stock is planted several days before departure so its roots take hold. At the destination, gardeners lift grafts, seedling beds, and #{encyclopedia_ref :graft, "symbiote"} lines already growing in the travel medium.

    Each transplant carries a tending plan with watering intervals, heat-store changes, and cover settings for the expected weather. A signed log stays in a sleeve on the tailboard and determines the trade warranty at delivery. Hand transplants move household stock around terraces, covered road transplants carry cooperative exchanges between settlements, and larger root boxes are built into river vessels for season fairs. Drivers are hired for both road work and garden care. A receiving gardener reads the log before opening the bed and checks root condition against each recorded stop.
  PROSE

  cue "The road transplant comes into the yard with green showing under the hoops, the driver hands over the tending log before the manifest, and the receiving gardener reads the signatures stop by stop before lifting the first graft."
  cue "Days before the journey the stock is planted into the box to take hold — and on the morning the wheels turn, the transplant rolls out already growing, water cask full, covers set to the sky."
  affordance "The live bed carries grafts, young beds, and symbiote lines that bare-root packing kills, while the signed tending log makes their care auditable."
  pressure "Journey length and delays are limited by the watering, heat, and rebedding plan; missed care damages the cargo and transfers liability through the log."
  variation "Hand transplants work the terrace rounds; covered road transplants run the settlement exchanges with drivers hired as gardener-teamsters; river boxes carry the fairs' whole young beds and dock green."
  variation "Cooperative transplants carry their pedigree marks on the tailboard, and a transplant's log book, kept over years, becomes a route's horticultural almanac — which stretches chill, which wells run sweet — traded between drivers like charts."
end
