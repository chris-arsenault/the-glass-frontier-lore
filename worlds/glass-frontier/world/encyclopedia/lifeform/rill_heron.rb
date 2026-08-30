encyclopedia :rill_heron do
  name "Rill Heron"
  kind :lifeform
  subkind :animal
  status :complete
  topics :ecology, :household
  prevalence :uncommon
  appears_when all: { place: [:garden, :sealed_hab] }
  summary "Rill herons are tall pale wading birds kept by the pipe-linked garden settlements, stalking the channels for vermin and standing sentinel over the water their households share. The flocks descend from the ring's ornamental park birds, and the gardens put the ornament to work."
  origin "Ring-era ornamental stock from the great park galleries, kept working since the Famine years"
  biology "A long-legged wader built for shallow channels, with a spear beak, quiet plumage, and a stomach for the pests of warm piped water"
  function "Clears channel vermin and leech-line pests; a standing flock's behavior is read as a water-quality gauge"

  descriptive_identity(
    appearance: "A tall pale wader with dove-gray plumage, a dark spear beak, and a deliberate " \
                "high-stepping gait. Kept birds wear a household's leg ring.",
    behavior: "The flock works the channels at first light and dusk, spearing vermin along the " \
              "leech lines, and spends the day standing sentinel at the junctions — one bird " \
              "per junction, by an arrangement the birds enforce themselves.",
    threat: "A bird defending its junction strikes bare feet with the spear beak. Children " \
            "learn the flock's spacing rules before entering the channels.",
    senses: "The birds read the water first: herons abandoning a channel in a body is the " \
            "gardens' oldest contamination alarm, and stewards close the reach on the " \
            "flock's word alone.",
    risks: "A flock bonds to its water rather than its keepers, and a household that moves " \
           "learns the birds' opinion of the new channels by whether the flock follows."
  )

  prose <<~PROSE
    The ring's great park galleries kept herons as ornament, and garden habs put the surviving flocks to work during the Famine. The tall, dove-gray birds stalk shallow rills at first light and dusk, spearing pests in the warm piped water. Through the day they stand at channel junctions, one bird to a junction, and drive intruding birds or waders back across the spacing line.

    Garden stewards read flock behavior beside their water instruments. Calm fishing accompanies a clear reach, high standing and fixed attention marks movement below the surface, and a flock leaving one channel together closes the reach for inspection. Household leg rings identify kept birds. At junction stones, households also maintain the old custom of speaking departures, arrivals, births, and deaths while feeding the flock.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Keeping and the Flock's Franchise"
    Herons bond to their channels and hold a junction for life. A young bird stands at its edge for a season until the incumbent yields the place or fails to return. Households feed enough to keep the flock through lean water without dulling its hunting, using the same junction stones where household news is spoken.

    Between gardens, birds travel as settlement gifts with their ring history and junction record recited at the handover. A pair fishing the new reach by the second dusk has taken the water. A pair that remains at the crate returns with its keepers for placement elsewhere.
  PROSE

  cue "At each channel junction a single pale heron stands sentinel with professional patience, and the spacing between birds is too even to be accident."
  cue "A household elder pauses at the junction stone to tell the standing bird the week's news, and the bird attends with the gravity of a registrar."
  affordance "A working flock controls channel vermin and supplies a visible water alarm: calm fishing accompanies a clear reach, while a flock leaving together closes the channel for inspection."
  pressure "The birds bond to a channel and defend one-bird spacing at its junctions. Stewards place feeding stones, introduce young birds at the edge of an occupied place, and move rejected gift pairs elsewhere."
  variation "Great garden habs run flocks of forty with junction maps and succession records; a small pipe household keeps two birds and a stone, and tells them the news anyway."
  variation "Gift pairs travel between gardens with recited lineage; fishing by second dusk establishes them, while a pair that remains at the crate returns for placement elsewhere."
end
