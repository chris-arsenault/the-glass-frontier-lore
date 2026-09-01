encyclopedia :vault_moth do
  name "Musters"
  kind :lifeform
  subkind :animal
  status :complete
  log "2026-08-31 — Renamed Vault Moth to Musters; the new title names the archive colonies' gathering behavior."
  topics :archives, :"ring-era", :ecology
  prevalence :uncommon
  appears_when all: { place: [:archive] }
  summary "Musters are pale, silent moths bred by the elves to graze mold from stored records. Great archives keep working colonies and read clustering, feeding, and the dawn return count as signs of stack conditions."
  origin "Elven-bred archive stock; the ring's registries list Muster colonies among vault equipment"
  biology "A slow, silent moth with brush-tipped legs and a diet of paper molds, binding pastes gone sour, and the fungal blooms of damp storage"
  function "Grazes mold and bloom from stored records; a working Muster colony patrols its vault's stacks nightly"
  principal_accommodation "Colony houses — slotted cabinets warmed to vault temperature — maintained by the archives on the old registry pattern"

  descriptive_identity(
    appearance: "A palm-width moth, dust-pale with darker fringing, that flies in silence and " \
                "folds flat as a pressed leaf on a page. Brush-tipped legs sweep as it walks, " \
            "and a grazing Muster leaves a clean stripe through the bloom behind it.",
    behavior: "Colonies patrol their stacks in the dark hours, settling on affected volumes " \
              "and grazing the mold to the paper's face. They favor the same rounds nightly " \
              "and return to their houses at the vault's dawn bell.",
    threat: "The breeding keeps the Musters on the bloom and off the ink. Starving colonies are the recorded " \
            "exception: they begin testing binding " \
            "pastes and teach the archives to keep the houses provisioned in clean years.",
    senses: "A colony finds damp before the instruments do: Musters clustering on one shelf " \
            "run is the vault's oldest humidity alarm, and stack crews open the wall behind " \
            "a cluster with real confidence.",
    risks: "The stock breeds true only in colony houses on the old pattern, and a vault that " \
           "loses its colony buys, begs, or borrows a starter from another archive — the " \
           "great houses trade Muster starters with the ceremony of proof lines."
  )

  prose <<~PROSE
    The #{encyclopedia_ref :elves, "elves"} bred Musters to clear mold from archive stores. The palm-width animals are dust-pale and silent in flight, with brush-tipped legs and a diet of paper molds, soured binding pastes, and fungal blooms from damp storage. A grazing Muster crosses an affected page and leaves the ink untouched in a clean stripe through the bloom. Ring registries list colony houses and provisioning schedules among vault equipment, and present archives retain that pattern.

    Muster colonies patrol their stacks in the dark hours and favor the same rounds each night. Clean stripes mark where bloom was found, and Musters clustered along one shelf run indicate damp in the wall behind it. Stack crews inspect the wall on that sign. At the dawn bell, archivists count the returning Musters; a low count sends staff through the stacks to find the remaining grazers.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Houses, Starters, and Lean Years"
    The stock breeds true in colony houses — slotted cabinets warmed to vault temperature, built to the registry drawing — and the houses are provisioned deliberately in clean years, because the recorded failures are starving colonies that began testing binding pastes. A well-run vault feeds its Musters in good times and reads the feeding ledger as a mold history: lean rations mean clean stacks, and a colony eating well is itself a finding about the vault.

    Muster starters trade between archives with the ceremony of proof lines. A vault that loses its colony — cold snap, a sealed-section accident, the slow dwindling the trade calls going quiet — petitions a sister house, and the starter travels with an escort, a pedigree, and a debt. Thornvault's registry colony, documented back to a ring-era house number, has seeded archives across the system; its keepers record each granting in the colony book beside the recipient and repayment.
  PROSE

  cue "In the lamplight a dust-pale Muster sits folded flat on an open ledger, working its way across a gray bloom and leaving a stripe of clean legible page behind it."
  cue "The night count comes home to the colony house at the dawn bell, and the junior archivist tallies Musters at the slots like a harbor clerk counting boats."
  affordance "A working colony is mold control, humidity alarm, and stack survey in one silent staff — clusters mark damp walls before instruments do, and the feeding ledger doubles as the vault's condition history."
  pressure "Archive staff provision colony houses during clean years and track feeding beside the dawn count. A lost colony requires a documented starter from another archive and a new house established on the registry pattern."
  variation "Thornvault's registry colony carries a pedigree older than the Glassfall and seeds sister houses with escort and ceremony; frontier archives keep hardier, plainer stock and trade Muster starters over a handshake."
  variation "Some vaults let the Musters range the reading rooms by night and post the fact for visitors; others confine them to the deep stacks, and the two schools cite the same incident at each other."
end
