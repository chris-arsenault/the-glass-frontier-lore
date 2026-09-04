encyclopedia :nurseries do
  name "Nurseries"
  kind :lifeform
  subkind :animal
  status :complete
  log "2026-08-31 — Renamed Crabs to Nurseries; the title names the carried garden each animal raises."
  topics :ecology, :household
  prevalence :uncommon
  appears_when any: { place: [:garden, :waterway] }
  summary "Nurseries are dinner-plate waterside animals that pack their rimmed shells with loam and live cuttings. They groom and feed from the shell plot, carry it between beds, and leave the rooted garden behind at each molt."
  origin "Native waterside stock of the terrace country; the gardening partnership is old enough that neither party's records reach past it"
  biology "A dinner-plate crab with a concave, rimmed carapace that it packs with loam and plants with cuttings; it waters and weeds its plot as bodily grooming, feeds on the margins, and abandons the whole garden, rooted and established, at each molt"
  lifespan "#{duration 15}, molting every year or two — each molt leaving a rooted garden plug wherever the animal chose to shed"
  function "A slow ambient transplanter: Nurseries carry cuttings between beds, establish them in shell-loam better than most nursery pots, and their abandoned molt-gardens are the terrace country's traditional source of hardened starts"
  principal_accommodation "Garden custom leaves a planted Nursery unrobbed — the shell plot is the animal's own working property — and the molt-gardens are gathered on finder's rules old enough to have their own proverbs"

  descriptive_identity(
    appearance: "A dinner-plate crab moving under a " \
                "back-plot in full growth — greens, herbs, sometimes a " \
                "flower the animal's own taste ran to — the whole animal " \
                "reading, from three paces, as a very slow piece of " \
                "landscape.",
    behavior: "It packs its rimmed shell with loam, plants it with cuttings " \
              "of its own selection, and tends the plot as grooming — " \
              "watering at the channel edge, weeding with the fine claws — " \
              "then walks its garden through the terrace country's margins " \
              "on its own errands.",
    threat: "The larger claws hold hard when someone reaches toward the shell " \
            "plot. Nurseries also remove live cuttings from beds while selecting " \
            "plants for a new or damaged plot.",
    senses: "It reads loam and cutting health with a selector's eye — Nurseries " \
            "choose vigorous stock with a consistency the gardeners exploit — " \
            "and its plot choices are watched as a second opinion on any " \
            "bed's condition.",
    risks: "A shed shell contains an established garden with roots through " \
           "the old loam. Terrace finder's rules govern who may gather it, " \
           "while planted shells on living Nurseries remain protected."
  )

  prose <<~PROSE
    A Nursery is a dinner-plate waterside animal with a concave rim around its carapace. It packs the hollow with wet loam and inserts live cuttings selected from the channel margins and nearby beds. Fine claws weed and arrange the plot; visits to the water soak it; the animal feeds from its edges. The rooted mat breaks up the animal's outline, stiffens over the shell as protection, and carries food between feeding grounds.

    Nurseries move between beds on their own feeding and mating routes, carrying viable stock in both directions. Gardeners watch their selections as evidence of which cuttings tolerate the local loam, but protect prized beds when Nurseries are building new plots. Removing plants from a living Nursery provokes the claws and destroys its cover, so terrace custom leaves shell plots intact.

    Every year or two the animal molts and leaves shell, loam, and established garden together. Roots have grown through the old medium and the plants have endured a traveling season. Finders gather these molt-gardens from channel margins and divide them into hardened starts under local rules. Some households seed known Nurseries with desired stock, though the animal continues to weed and rearrange the plot for itself.
  PROSE

  cue "The bed's prize cutting is missing and the gardener scans the margins with resigned expertise — finding it three terraces down, rooted and thriving, on the back of a Nursery with excellent taste."
  cue "Margin season: the children work the channel edges hunting molt-gardens, and the morning's find — a shed shell furred green with hardened starts, roots grown through the old loam — goes to the fair table whole."
  affordance "Nurseries move cuttings between beds and leave rooted molt-gardens that can be divided into hardened transplant stock."
  variation "Channel Nurseries favor wet-country plants and molt along banks; garden-hab populations choose from bed margins and often carry cultivated varieties."
  variation "Bred favorites carry chosen plots — a household seeding its Nursery's shell with the stock it wants hardened — and a great Nursery's molt is scheduled property, spoken for seasons ahead like a mare's foal."
end
