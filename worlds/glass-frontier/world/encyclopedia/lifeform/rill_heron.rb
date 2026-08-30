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
    appearance: "A tall pale wader with dove-gray plumage, a dark spear beak, and the deliberate " \
                "gait of a creature that has watched water professionally for generations. Kept " \
                "birds wear a household's leg ring and an air of employment.",
    behavior: "The flock works the channels at first light and dusk, spearing vermin along the " \
              "leech lines, and spends the day standing sentinel at the junctions — one bird " \
              "per junction, by an arrangement the birds enforce themselves.",
    threat: "The spear beak is for channel vermin and treats a bare wading foot as a " \
            "misunderstanding to regret briefly; children learn the flock's spacing rules " \
            "before they learn to swim.",
    senses: "The birds read the water first: herons abandoning a channel in a body is the " \
            "gardens' oldest contamination alarm, and stewards close the reach on the " \
            "flock's word alone.",
    risks: "A flock bonds to its water rather than its keepers, and a household that moves " \
           "learns the birds' opinion of the new channels by whether the flock follows."
  )

  prose <<~PROSE
    The ring's great park galleries kept herons the way they kept fountains, and the Famine put the ornaments to work. Rill herons — tall, dove-gray, deliberate — came through the dark years as vermin-catchers in the garden habs' channels, and the pipe-linked settlements have kept working flocks since. The birds stalk the shallow rills at first light and dusk, spearing the pests that plague warm piped water, and pass the working day standing sentinel at the channel junctions, one bird to a junction, spaced by a protocol the flock maintains itself and enforces with brief aristocratic violence.

    The gardens read their herons the way keepers read hives. A working flock is a water-quality instrument with opinions: birds fishing calmly certify the reach, birds standing high and watching mean something moving that ought to stay still, and a flock abandoning a channel in a body closes the reach on its own authority — the stewards' rule of trusting the birds predates every instrument the stewards own, and its record keeps the rule. Households mark their birds with leg rings and tell the flock the news at the junction stones by old custom: departures, arrivals, a birth, a death. The stewards' books defend the practice on flock-management grounds, the practice is older than the books, and the flocks, for their part, notice the attention.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Keeping and the Flock's Franchise"
    A flock belongs to its water. Herons bond to their channels first and their keepers a distant second, hold their junction franchises for life, and pass them by a succession visible from any bridge — the young bird standing at the junction's edge for a season, tolerated, until the incumbent stands aside or fails to return. Households feed lightly and deliberately, enough to anchor the flock through lean water and not enough to dull the working appetite, and the feeding stones double as the telling stones where the household news is spoken.

    Between gardens, birds travel as gifts of the same weight as proof reseedings: a mated pair to a new settlement's channels, with their ring history and their line's junction record recited at the handover. The gift's acceptance is the birds' to give — a pair that fishes the new reach by the second dusk has taken the water, and one that stands at the crate and watches has declined it, and stewards on both sides treat the verdict as final and slightly embarrassing.
  PROSE

  cue "At each channel junction a single pale heron stands sentinel with professional patience, and the spacing between birds is too even to be accident."
  cue "A household elder pauses at the junction stone to tell the standing bird the week's news, and the bird attends with the gravity of a registrar."
  affordance "A working flock is vermin control and water alarm in one — calm fishing certifies the reach, and a flock quitting a channel closes it on the spot with a reliability the stewards' instruments have spent generations failing to beat."
  pressure "The birds bond to water and hold their own franchises, so the flock's cooperation is courted rather than commanded — and a reach whose herons decline it has been reviewed by the gardens' least corruptible inspector."
  variation "Great garden habs run flocks of forty with junction maps and succession records; a small pipe household keeps two birds and a stone, and tells them the news anyway."
  variation "Gift pairs travel between gardens with recited lineage, and the receiving stewards wait on the birds' verdict — fishing by second dusk is acceptance, and the crate-stand is a declined water no one argues with."
end
