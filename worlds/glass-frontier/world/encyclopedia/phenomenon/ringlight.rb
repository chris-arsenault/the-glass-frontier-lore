encyclopedia :ringlight do
  name "Ringlight"
  summary "Ringlight is the band of brightness cast across Kaleidos's night by starlight scattering from the broken ring. In bright seasons it provides working light, and its fixed line remains a surface navigation mark year-round."
  kind :phenomenon
  subkind :physical_phenomenon
  status :complete
  topics :surface, :"ring-era", :navigation, :ecology
  prevalence :common
  appears_when all: { place: [:surface] }
  medium "The night sky of Kaleidos, lit by starlight scattered off the orbital debris field"
  nature "A band of night brightness varying with the debris streams' density and geometry; charted seasonally and read locally"
  hazard "Bright seasons flatten shadows and wash out the gleeds, and the dark-season transition catches every routine the bright months quietly built on free light"

  descriptive_identity(
    signs: "A band of pale luminance arching the night sky along the old ring's line — " \
           "bright enough in high season to read large print and cast doubled shadows, " \
           "thinning in the dark seasons to a grain of moving glitter.",
    effects: "Night outdoor life runs on the ringlight calendar: bright-season evenings " \
             "extend the working day, harvests and festivals chase the high weeks, and " \
             "the band's fixed line across the sky is the surface's oldest compass.",
    hazards: "The light is seasonal and the habits it builds are sticky — dark-season " \
             "transitions spike the lantern trade and the mishap ledgers together — and " \
             "bright weeks wash out the fainter night signs, gleeds first."
  )

  prose <<~PROSE
    Starlight scattering from the debris field throws a band of brightness along the old ring's line, arching across the night sky from horizon to horizon. High-season ringlight is bright enough to read and harvest by and casts the doubled shadows familiar to surface children. Late markets, dry-crop harvests, and festival seasons follow the brightest weeks. Dark seasons thin the band to a grain of moving glitter, and lantern sales rise through the transition.

    The intact ring formed one steady arch, remembered as the ribbon again, bright side up. Its debris still marks the same compass line. Almanac offices chart ringlight from the stream tables used to predict the #{encyclopedia_ref :falling_years, "falling years"}: dense streams scatter more light and later produce heavier showers. Surface calendars pair the brightest festivals with roof inspections, shutter raising, or another observance preparing for the coming fall.
  PROSE

  cue "The night field is bright enough to work by, every worker casting doubled shadows, and the band arches overhead along the line the ring used to hold."
  cue "The lantern seller's stall doubles its stock in one week — the dark-season transition — and the mishap ledger at the ward house thickens on the same schedule."
  affordance "Ringlight is free working light on a charted calendar — evening labor, harvests, and festivals planned to the bright weeks — and the band's fixed line is a compass no cloud short of full overcast takes away."
  pressure "A bright season signals dense debris streams and a heavier falling year ahead, so districts use its festivals to inspect roofs and raise shutters before the shower tables thicken."
  variation "Avar takes its dry harvest by ringlight and holds the year's weddings in the high weeks; the Sable Crescent's bright-night boat processions predate the Glassfall in the records and simply changed skies."
  variation "Dark-season customs mirror the bright ones at hearth scale, and the surface's proverb for consolation in every dialect is some version of 'the band thins, the band returns.'"
end
