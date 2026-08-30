encyclopedia :first_water do
  name "First Water"
  summary "First water is ring-era reservoir water recovered still sealed — municipal supply the elves treated for their own drinking, held under intact seals since the Glassfall, and drawn now by permit from tended reservoir finds. On the standing ring it was the tap; in Kaleidos it is drawn by the flask, and the flask is an occasion."
  kind :resource
  subkind :material
  status :complete
  topics :"ring-era", :household, :trade, :religion
  prevalence :rare
  appears_when any: { place: [:debris_field, :orbital] }
  function "Ceremonial and medicinal drinking water; the sealed-reservoir provenance is the value, and a broken seal is the product's whole biography"
  grades "Graded by seal integrity and treatment signature — full-seal draws with the elven treatment still legible assay highest; weathered-seal finds grade down toward fine ordinary water"
  availability "Tended reservoir finds under registry permit, drawn on posted schedules with per-permit limits; new finds surface with salvage and pass to tending within the season"

  descriptive_identity(
    appearance: "Clear with the faint green cast of the elven treatment, sold and served " \
                "in stoppered flasks that carry the reservoir's registry mark and the " \
                "draw date in the tender's hand.",
    working: "Draws are made through fitted taps that preserve the find's remaining " \
             "seal, on posted schedules, by tenders who log every flask; the treatment " \
             "signature is assayed at the tap and the grade travels with the flask.",
    risks: "A weathered seal grades the whole reservoir down, so tending is mostly " \
           "vigilance about the seal — and the flask trade's standing fraud is " \
           "ordinary water under a forged registry mark, which the assay houses " \
           "catch by treatment signature."
  )

  prose <<~PROSE
    The ring drank well. The #{encyclopedia_ref :elves, "elves"} treated their municipal water to their own standard and stored it in sealed reservoirs throughout the ring's fabric, and when the ring broke, the reservoirs broke with it — mostly. The intact ones have been coming to light for #{elapsed :the_glassfall, approx: true}: sealed volumes riding in fragment cores and debris-field hulks, holding water that has waited under elven seals since the Glassfall, its treatment still legible to an assay house, its taste — by every account worth quoting — the cleanest thing a living mouth has met. On the standing ring this was the tap, drawn by the ton and thought about the way anyone thinks about a faucet. What fell made it first water: drawn by the flask, from tended finds, under registry permit, and served at the occasions a household means to remember.

    The tending trade grew its customs from the salvage law it was born in. A new reservoir surfaces with salvage, passes to registry tending within the season, and thereafter is drawn through fitted taps that preserve the remaining seal — posted schedules, per-permit limits, every flask logged in the tender's hand with the draw date and the reservoir's mark. The limits are conservation arithmetic stated plainly on the schedule board: a reservoir is a fixed inheritance, the draw rate is chosen so the find outlasts the tender, and the great named reservoirs are managed to outlast the registry. The flask's uses sort by grade. Full-seal draws with the treatment bright go to the solemn occasions — namings, treaty tables, the sickroom drinks that families buy when medicine has said its piece — while weathered-seal finds grade down toward fine ordinary water and fill the trade's daily end. The assay houses hold the line on both: the treatment signature is the product, the forged registry mark is the standing fraud, and a flask of first water that assays ordinary is the flask trade's oldest cautionary sale.
  PROSE

  cue "The stoppered flask comes to the naming table with the reservoir's mark and the draw date in a tender's hand, and the household head pours a measure for the child's first cup with the stopper kept, after, in the family box."
  cue "At the find site the registry tender fits the tap to the reservoir's seal by lamplight, logs the season's first draw, and posts the schedule that says how many flasks this year and how many years the water has left."
  affordance "A permit and a tended find put the ring's own drinking water on a present-day table — provenance legible at the assay house, grades for occasions from treaty tables to sickrooms, and a draw schedule that makes the inheritance last."
  pressure "Every reservoir is a fixed volume under a seal that grades the whole find, so the trade runs on restraint — draw limits against thirst, tending against weather, and assay against the forged mark that ordinary water wears."
  variation "The great named reservoirs are civic property drawn for state occasions; the small household finds — a sealed cistern in a bought hulk — are drawn at family pace and passed down with the deed."
  variation "Surface custom drinks first water at namings and deathbeds; orbital custom pours it for launches and treaty tables; both keep the emptied flask stoppered, and the family boxes fill a shelf in a generation."
end
