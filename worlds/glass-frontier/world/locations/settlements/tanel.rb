installation :tanel do
  name "Tanel"
  summary "Tanel is a settlement of eight thousand people in the Glass Frontier, spread through pressure modules linked by an extensive Ring Age tube network."
  playable_as :chronicle_location
  subkind :settlement
  status :complete
  tags :"ring-hab", :transport, :archives, :"signal-freq", :"ring-era"
  prominence :marginal
  population 8000
  population_band "About eight thousand residents"
  role "Pressure-tube manufacturing and sealed-module transport"
  setting "A chain of pressure modules joined by an extensive Ring Age tube network"
  access "Two passenger docks on the Ravel collection leg, plus capsule exchange with adjacent fragments"
  omit_facts :maintained_by

  prose <<~PROSE
    Thousands of ceramic pressure lines cross Tanel's walls, floors, and service spaces. They carry messages, medicine, tools, laboratory samples, and small freight between modules. Larger tubes move padded cargo capsules through sections whose corridors take much longer routes.

    Every active line begins and ends at a staffed tube room. The operator checks the seal, sets a mechanical gate code, and listens to the launch. The code seats a high-band standing tone in the capsule rim. Each junction opens when its ceramic throat matches that tone, producing one of three expected knocks through a clean route. Extra knocks send a line crew toward the first unexpected branch.

    Tanel manufactures tube ceramic, seals, and gate clocks for other habs, including short hospital and dock systems. Its old network remains more extensive than the inhabited settlement, and pressure tests regularly open branches sealed during the Famine.
  PROSE

  prose <<~PROSE, section: :history, heading: "The Alda Line"
    Tanel retained its Ring Age module name through the Signal Famine. In 2434 a capsule entered the receiving rack at Tube Room Six after a launch sequence of forty-seven knocks. Its stamped gate code belonged to Alda, a residential module evacuated during the last year of the Famine. The trip card inside records a routine request for a pressure crew and a route through nine junctions beyond Tanel's current hull plan.

    The capsule, now called #{ref :alda_capsule, "Alda Capsule"}, carried dry seals and a working clock. Its pressure matched Tube Room Six. Tanel crews have opened the first recorded junction and found a ceramic line continuing through a service wall into a section with stable air beyond it.

    The receiving rack has produced the same forty-seven-knock sequence twice since then. Each run ended with an empty cradle and a pressure trace moving back toward the Alda branch. The line loses a measurable volume of air on every return. Tanel has assigned the next set of dry nursery seals to the crew opening Junction Two, which suspends two contracted hospital installations until the Alda pressure loss is contained.
  PROSE

  gm_note :triggered_by, "Anything a party sends by tube is audited by ear: a clean route knocks three times, and any extra knock puts a line crew at the first unexpected branch within the shift, so a private message becomes a work order for four other people."
  gm_note :appears, "The sealed network is larger than the inhabited settlement and routine pressure tests keep opening branches shut since the Famine, so a wall in whatever room a scene occupies can be a ceramic throat a test crew opens from the far side."
  gm_note :complicates, "The dry nursery seals promised to two hospital installations have gone instead to the crew opening Junction Two, so their buyers are at Tanel asking when they ship and the answer depends on stopping the Alda line's air loss."
end

relate :rel_tanel_located_in_frontier, :located_in, :tanel, :the_glass_frontier, since: 2140 do
  prose "Tanel occupies a linked chain of pressure modules in the inhabited ring."
end

relate :rel_tanel_supplies_ravel, :supplies, :tanel, :ravel, since: 2435 do
  prose "Tanel supplies sealed ceramic capsules for Ravel's small and unstable plume catch."
end

relate :rel_tanel_studies_alda_capsule, :studies, :tanel, :alda_capsule, since: 2434 do
  prose "Tanel's tube crews use Alda Capsule's gate code, clock, and abrasion to trace the reopened line."
end
