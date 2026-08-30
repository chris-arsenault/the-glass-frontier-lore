encyclopedia :vault_moth do
  name "Vault Moth"
  kind :lifeform
  subkind :animal
  status :complete
  topics :archives, :"ring-era", :ecology
  prevalence :uncommon
  appears_when all: { place: [:archive] }
  summary "Vault moths are pale, silent moths bred by the elves to graze mold from stored records, and the great archives keep working colonies to this day. A moth settles on a page, eats the bloom, and leaves the ink — and archivists read the colony's flight the way sailors read gulls."
  origin "Elven-bred archive stock; the ring's registries list colonies among vault equipment"
  biology "A slow, silent moth with brush-tipped legs and a diet of paper molds, binding pastes gone sour, and the fungal blooms of damp storage"
  function "Grazes mold and bloom from stored records; a working colony patrols its vault's stacks nightly"
  principal_accommodation "Colony houses — slotted cabinets warmed to vault temperature — maintained by the archives on the old registry pattern"

  descriptive_identity(
    appearance: "A palm-width moth, dust-pale with darker fringing, that flies in silence and " \
                "folds flat as a pressed leaf on a page. Brush-tipped legs sweep as it walks, " \
                "and a grazing moth leaves a clean stripe through the bloom behind it.",
    behavior: "Colonies patrol their stacks in the dark hours, settling on affected volumes " \
              "and grazing the mold to the paper's face. They favor the same rounds nightly " \
              "and return to their houses at the vault's dawn bell.",
    threat: "The moths take the bloom and leave the ink — the breeding's whole point — and " \
            "the recorded exceptions are starving colonies, which begin testing binding " \
            "pastes and teach the archives to keep the houses provisioned in clean years.",
    senses: "A colony finds damp before the instruments do: moths clustering on one shelf " \
            "run is the vault's oldest humidity alarm, and stack crews open the wall behind " \
            "a cluster with real confidence.",
    risks: "The stock breeds true only in colony houses on the old pattern, and a vault that " \
           "loses its colony buys, begs, or borrows a starter from another archive — the " \
           "great houses trade moth starters with the ceremony of proof lines."
  )

  prose <<~PROSE
    The #{encyclopedia_ref :elves, "elves"} solved mold in their archives with an archivist's elegance: they bred a moth for it. Vault moths are palm-width, dust-pale, and silent in flight, with brush-tipped legs and an appetite bounded by design — paper molds, soured binding pastes, the fungal blooms of damp storage, and nothing else on the shelf. A grazing moth settles on an affected page, works across it like a hand sweeping crumbs, and lifts away leaving the ink untouched and a clean stripe through the bloom. The ring's registries list moth colonies among vault equipment, house pattern and provisioning schedule included, and the great archives of the present system keep working colonies on exactly that pattern.

    A colony is a nocturnal staff. The moths patrol their stacks in the dark hours on rounds as habitual as a watchman's, and the day shift reads their work: clean stripes mark where bloom was found and taken, and moths clustering on one shelf run mean damp in the wall behind it — the vault's oldest humidity alarm, trusted enough that stack crews open walls on the strength of a cluster. Archivists count returning moths at the dawn bell the way keepers weigh kites, and a colony come home light sends the junior staff into the stacks with lamps, looking for what kept the missing grazers out late.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Houses, Starters, and Lean Years"
    The stock breeds true in colony houses — slotted cabinets warmed to vault temperature, built to the registry drawing — and the houses are provisioned deliberately in clean years, because the recorded failures are starving colonies that began testing binding pastes. A well-run vault feeds its moths in good times and reads the feeding ledger as a mold history: lean rations mean clean stacks, and a colony eating well is itself a finding about the vault.

    Starters trade between archives with the ceremony of proof lines. A vault that loses its colony — cold snap, a sealed-section accident, the slow dwindling the trade calls going quiet — petitions a sister house, and the starter travels with an escort, a pedigree, and a debt. Thornvault's registry colony, documented back to a ring-era house number, has seeded archives across the system, and its keepers note each granting in the colony's own book, which is, in the way of archives, longer than most families'.
  PROSE

  cue "In the lamplight a dust-pale moth sits folded flat on an open ledger, working its way across a gray bloom and leaving a stripe of clean legible page behind it."
  cue "The night count comes home to the colony house at the dawn bell, and the junior archivist tallies wings at the slots like a harbor clerk counting boats."
  affordance "A working colony is mold control, humidity alarm, and stack survey in one silent staff — clusters mark damp walls before instruments do, and the feeding ledger doubles as the vault's condition history."
  pressure "The colony's judgment is only as good as its hunger, so the houses must be provisioned in clean years and watched in lean ones — and a vault gone quiet joins the polite, expensive queue for another archive's starter."
  variation "Thornvault's registry colony carries a pedigree older than the Glassfall and seeds sister houses with escort and ceremony; frontier archives keep hardier, plainer stock and trade starters over a handshake."
  variation "Some vaults let the moths range the reading rooms by night and post the fact for visitors; others confine them to the deep stacks, and the two schools cite the same incident at each other."
end
