encyclopedia :pavior do
  name "Pavior"
  kind :lifeform
  subkind :creature
  status :complete
  log "2026-08-31 — Renamed Walkers to Pavior; the new title names the animal through its path-making work."
  topics :ecology, :surface, :materials
  prevalence :uncommon
  appears_when all: { place: [:garden] }
  summary "Paviors are slow heavy grazers whose pads lay resin into the living blue loam. Repeated grazing circuits cure into the blue-black paths that carry terrace traffic across otherwise soft ground."
  origin "Native to the blue-loam beds and coextensive with them; the terrace cultures' oldest land records already assume both"
  biology "An ox-scaled, round-backed grazer on broad soft pads, feeding on the deep loam's root mat; the pads secrete a sealing resin with each step, and the resin cures in the loam's humid warmth — layer over layer, crossing over crossing — into a hard glazed surface"
  lifespan "#{duration 60}; paviors keep lifelong circuits, and a matriarch's trail network is the work of decades"
  function "Path-maker and bed-tender at once: the glazed trails firm the terraces' soft ground into all-weather roads, and the paviors' grazing keeps the root mat cropped in the rotation the beds need"
  resonance_relation "The resin cures only in living loam, where the beds' damp warmth and faint band-murmur set it; resin removed from the beds stays gummy"

  descriptive_identity(
    appearance: "An ox-sized, round-backed shape moving at loam pace — a " \
                "walking hill in bed-blue gray — on broad pads that leave " \
                "prints glistening wet behind it, yesterday's prints already " \
                "cured to dark glass.",
    behavior: "It grazes the root mat on a lifelong circuit, laying resin " \
              "with every step; the circuits crossing and re-crossing over " \
              "years harden into the glazed trail networks, and the pavior " \
              "keeps to its own trails with a settled preference that makes " \
              "the networks roads.",
    threat: "Its weight and steady pace make close footing dangerous; a " \
            "harassed pavior continues along its circuit through fences, " \
            "carts, and anyone trying to turn it.",
    senses: "It reads the loam through its pads — moisture, root health, the " \
            "beds' condition underfoot — and its circuit shifts track the " \
            "ground's needs closely enough that the terraces read next " \
            "season's bed plan off this season's trails.",
    risks: "Cutting trail lacquer breaks the living cure and leaves a soft " \
           "gap in the road. Terrace law therefore protects the paths, " \
           "requires pavior gates in fences, and keeps traffic clear of an " \
           "animal on its circuit."
  )

  prose <<~PROSE
    The blue-loam country's best roads are footprints. A pavior is an ox-sized, round-backed grazer on broad pads. Each pad lays resin into the damp root mat, where warmth and the bed's faint murmur cure it to blue-black glaze. One crossing leaves a line of dark coins; a season's circuit makes a track; a matriarch's decades of grazing rounds make a road network firm enough for carts. Resin cut from the bed stays gummy, so the useful surface remains attached to the living loam and to the animal that renews it.

    Paviors keep lifelong grazing circuits through the same beds. They crop the root mat as they travel, rest on dry rises, and return to water and mineral licks along established branches. Terrace settlements build pavior gates into fences and plan rotations around those rounds. A circuit shift is also useful evidence: the pads respond to moisture and root condition, and gardeners compare a matriarch's new route with their bed surveys before laying out the next season.

    Trail law treats the glazed paths as common way. Cutting lacquer breaks the cure and leaves a soft gap, while blocking a circuit brings a heavy animal steadily through the obstruction. The largest networks enter land records under the matriarch's name, her lifetime of crossings visible across several terraces.
  PROSE

  cue "The morning's prints glisten wet down the terrace margin, yesterday's cured dark behind them, and the cart train swings onto the pavior's trail — the firmest road in the valley, renewed overnight by the roadbuilder grazing two beds over."
  cue "The bed council lays the survey beside the matriarch's new circuit; both show the same wet ground a season before planting."
  affordance "The trail networks are all-weather roads through ground that swallows boots, renewed by grazing and free at the price of custom — and the paviors' circuit shifts forecast bed condition ahead of any instrument."
  variation "Matriarch networks carry the main cartage and enter the land records by name; young paviors' new circuits are watched with a prospector's interest, since a trail's first season predicts the road it will become."
  variation "The glaze itself varies bed to bed — deep-loam trails cure near-black and iron-hard, margin trails lighter and softer — and the terraces' road vocabulary grades cartage routes by the loam that cured them."
end
