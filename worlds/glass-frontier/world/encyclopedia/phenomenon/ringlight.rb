encyclopedia :ringlight do
  name "Ringlight"
  summary "Ringlight is the broken ring's gift to the night: the band of scattered brightness the debris field throws across the dark hours, bright enough to work by in season and patterned enough to navigate by always. The intact ring lit the night as one steady arch; its wreckage lights it as weather."
  kind :phenomenon
  subkind :physical_phenomenon
  status :complete
  topics :surface, :"ring-era", :navigation, :ecology
  prevalence :common
  appears_when all: { place: [:surface] }
  medium "The night sky of Kaleidos, lit by sunlight scattered off the orbital debris field"
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
    The ring still lights the night, in the way of broken things. Sunlight scattering off the debris field throws a band of brightness along the old ring's line, arching the dark sky from horizon to horizon, and the surface lives by its calendar. High-season ringlight is working light — bright enough to read by, to harvest by, to cast the doubled shadows that surface children learn as ordinary — and the bright weeks pull evening life outdoors: the late markets, the ringlight harvests that take the dry crops in the cool, the festival seasons that every surface culture has moored to the brightest nights. Dark seasons thin the band to a grain of moving glitter, and the transition weeks are the lantern trade's whole year.

    The old sky is remembered in the new one's grammar. The intact ring lit the night as one steady arch — the ribbon again, bright side up — and the surface's night culture simply weathered the shattering: the band still marks the same line across the sky, still serves as the compass it always was, and the almanac offices chart its seasons from the same stream tables that predict the #{encyclopedia_ref :falling_years, "falling years"}, since the brightness and the hazard are the same debris read two ways. The correlation is the surface's oldest bittersweet arithmetic, taught with the almanac: a brilliant ringlight year is a heavy year coming, the light and the fall travel together, and the festivals of the brightest nights carry, in every tradition that keeps them, one observance turned toward the roofs.
  PROSE

  cue "The night field is bright enough to work by, every worker casting doubled shadows, and the band arches overhead along the line the ring used to hold."
  cue "The lantern seller's stall doubles its stock in one week — the dark-season transition — and the mishap ledger at the ward house thickens on the same schedule."
  affordance "Ringlight is free working light on a charted calendar — evening labor, harvests, and festivals planned to the bright weeks — and the band's fixed line is a compass no cloud short of full overcast takes away."
  pressure "The light is the fall's own advertisement: bright years are heavy years coming, so every ringlight festival carries its roof-turned observance, and the almanac's cheerful brightness tables are read twice."
  variation "Avar takes its dry harvest by ringlight and holds the year's weddings in the high weeks; the Sable Crescent's bright-night boat processions predate the Glassfall in the records and simply changed skies."
  variation "Dark-season customs mirror the bright ones at hearth scale, and the surface's proverb for consolation in every dialect is some version of 'the band thins, the band returns.'"
end
