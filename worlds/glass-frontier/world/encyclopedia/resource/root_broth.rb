encyclopedia :root_broth do
  name "Bank"
  kind :resource
  subkind :food
  status :complete
  log "2026-08-31 — Renamed Root Broth to Bank; the name promotes bankroot's stored warmth into the cold settlements' stable term for the finished food."
  topics :household, :ecology, :trade
  prevalence :uncommon
  appears_when all: { place: [:garden] }
  summary "Bank is a dense bankroot food brewed in the cold settlements around Olven. One measured draught releases stored warmth into the drinker through a cold night while the surrounding room remains cold. Regrowing stools supply light first-year bank and full-night three-year sleeper's grade."
  function "Portable, ingestible warmth — a measure of bank carries a night's heat to the body that drinks it, with the room's air left out of the transaction"
  grades "First-year cuttings give light table bank; the deep three-year roots give sleeper's bank, the full-night grade; burned or old stock gives flat bank that warms briefly and grades down to travel rations"
  availability "Brewed household-scale everywhere bankroot grows — the cold-country garden terraces — and traded outward in sealed crocks that hold their bank for a season; the root stools are cropped on posted rotations like any tended bed"

  descriptive_identity(
    appearance: "A dense, dark broth with a faint mineral sweetness, kept in the " \
                "lidded pot at the cold room's center; a good sleeper's grade " \
                "hangs warm on the spoon while the pot itself stands at room " \
                "temperature.",
    working: "Bankroot is cropped from its stool on the bed's rotation, split, and " \
             "simmered low for a day; the finished bank is drunk warm-from-the-" \
             "body's-side — a measure before sleep carries its bank through the " \
             "night, felt as a slow ember under the breastbone.",
    risks: "The bank releases on the drinker's own rhythm; a double draught of " \
           "sleeper's grade causes sweating and a sleepless hot night, while " \
           "burned or old stock provides only brief warmth and is graded down."
  )

  prose <<~PROSE
    Bankroot beds around #{ref :olven, "Olven"} store warmth through the growing season in dense root flesh. A low day's simmer turns that store into bank, a dark broth with a mineral sweetness. The pot and room remain at ambient temperature; after a measured draught, the drinker feels a slow warmth under the breastbone that lasts through the night. Cold settlements use it to warm people directly when fuel cannot heat every sleeping room.

    Bankroot regrows from long-lived stools, and terraces post a rotation for each bed. First-year cuttings make light table bank; deep roots cropped in their third year make sleeper's grade. Kitchens pour one measure before sleep, half a measure for children, and leave the night watch's portion covered. A double measure causes sweating and a sleepless hot night. Sealed crocks hold their bank for a season and travel to watch posts, route crews, and upland camps. Old terrace stools are inherited by name, and their cropping calendars set the winter supply years ahead.
  PROSE

  cue "The lidded pot stands at the cold room's center at room temperature, the night's measures are poured by bunk count, and the last one stands covered for the watch."
  cue "On the terrace the cropping rotation is posted at the bed head, and the three-year stools — inherited by name — give up the deep roots that become the winter's sleeper's grade."
  affordance "A sealed crock provides a night's warmth per measure in cold rooms, watch posts, and stranded camps without heating the surrounding air."
  pressure "The beds' rotation sets the supply years ahead, so a hard winter tests the calendar's margins — and a settlement that crops its three-year stools early is drinking next winter now."
  variation "Table bank is daily fare and sleeper's grade is rationed to the cold months; travel crocks trade outward to watch posts, route crews, and the upland herding camps."
  variation "Each terrace's bank carries its beds' mineral accent, and cold-country folk name a crock's home settlement at the first spoonful the way river folk place a water."
end
