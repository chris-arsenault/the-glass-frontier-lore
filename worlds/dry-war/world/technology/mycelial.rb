# What the fungal civilization runs on. Biological, distributed, self-repairing,
# embedded in ordinary material life — the distinction between infrastructure and
# organism has largely stopped being useful. Compact reference entries kept
# together; split any one out when it grows past a screen.

resource :living_textiles do
  name "Living Textiles"
  tags :biotech, :symbiosis, :medicine
  prominence :mythic

  prose <<~PROSE
    The original breakthrough, and still the thing most people mean when they talk about the network. Clothing that regulates heat, filters what the air is carrying, monitors physiology, administers compounds, closes wounds, and connects its wearer to the #{ref :the_great_root, "Great Root"}.

    A mature garment is not worn so much as inhabited. It partially colonizes its wearer, and after long enough the boundary between the two is a medical question rather than an obvious one.
  PROSE

  prose <<~PROSE, section: :history, heading: "Why Anyone Agreed"
    Because the first generation saved lives in numbers that made refusal look eccentric. They cooled people through the worst summers in the record, filtered particulates that were killing the elderly, and detected cancers early enough to change the outcome.

    Municipal subsidy followed, then hospital integration, then logistics. #{ref :the_joined, "Joined"} children are now born into bedding and classrooms that carry it.
  PROSE
end

concept :mycelial_neural_mesh do
  name "Mycelial Neural Mesh"
  tags :biotech, :computation, :ecology
  prominence :renowned

  prose <<~PROSE
    Continent-scale fungal computation, distributed through soil, buildings, agriculture, waterways and human bodies. Locally it is slow — enormously slower than a machine — and it is massively parallel, physically everywhere, and cannot be switched off by destroying a site.

    Its long-range cognition depends on continuity of substrate, which is why aridity is a strategic condition rather than a climate. The #{ref :the_gobi, "Gobi"} is not defended. It is simply somewhere the mesh cannot finish a thought.
  PROSE
end

resource :symbiotic_implants do
  name "Symbiotic Implants"
  tags :medicine, :symbiosis, :biotech
  prominence :recognized

  prose <<~PROSE
    Biological rather than mechanical: engineered fungal structures grown through peripheral nerves, lymphatic tissue and vasculature. They provide sensory augmentation, immune regulation, communication, and modulation of mood and impulse.

    The medicine they enable is the reason ordinary integration is not resented. Tissue repair, organ regeneration, cancer suppression and the management of ageing damage are all far beyond what the machine civilization achieves by replacement, and a #{ref :the_joined, "Joined"} citizen knows it.
  PROSE
end

concept :programmable_ecologies do
  name "Programmable Ecologies"
  tags :ecology, :agriculture, :biotech, :military
  prominence :renowned

  prose <<~PROSE
    Agriculture, forest, wetland, insects, microorganisms and fungal network engineered together as one system rather than as a farm with problems. It is the fungal civilization's most strategically important capability and the hardest for anyone else to copy, because it cannot be built quickly — a programmed ecology is a decision that takes a decade to finish arriving.

    It is also how the #{ref :the_dry_war, "Dry War"} is actually prosecuted. Denial rather than explosives: engineered moulds, crop transformations, digestive organisms that take apart a specific alloy, pheromone manipulation, spores that are nerve-active in one species and inert in the rest.
  PROSE

  prose <<~PROSE, section: :significance, heading: "Growing Back"
    The civilization's signature advantage is that it regrows. Destroy a coalition server farm and the coalition has lost infrastructure. Destroy a Chinese settlement and — if enough of the biological substrate survives — the network reconstructs a version of it from soil, seed stock, fungal memory and whatever organisms are left.

    What comes back is not identical. The #{ref :the_garden_courts, "Garden Courts"} maintain that this is the whole argument about #{ref :the_thousand_minds, "locality"} in miniature: a rebuilt village is a translation, and something is always chosen for it by whoever holds the substrate.
  PROSE

  prose <<~PROSE, section: :limits, heading: "Planting Upstream"
    Above a #{ref :the_himalayan_holds, "Holds"} intake, a planting is written down before it goes in. #{ref :the_catchment_list, "The catchment list"} takes an ecology as a set of organisms with the dependencies drawn between them, each on four lines: what it is, what it cannot finish a cycle without, what would end it, and who planted it. The set stands or is struck whole, and a struck set is pulled whole, which for eleven hectares of terrace meant cutting, drying and burning the crop in place because the organism could not be lifted off the plants it had joined.

    The requirement and ender lines are where the practice strains. An ecology is entered in the year it is planted and takes a decade to finish arriving, so both lines describe an organism the planters have modelled rather than watched, and a set shown a winter at #{ref :thorong_cold_house, "altitude"} sometimes reads back against its own entry. #{ref :the_overwintered_set, "The Overwintered Set"} closed a ten-year term five years into it.
  PROSE
end
