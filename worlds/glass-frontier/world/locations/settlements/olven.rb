installation :olven do
  name "Olven"
  summary "Olven is an agricultural ring-hab settlement in the Glass Frontier, with fifty-four hundred residents working climate chambers around a warm conduit."
  playable_as :chronicle_location
  aka "Olven-Terath"
  subkind :settlement
  status :complete
  tags :"ring-hab", :"ring-era", :ecology, :trade, :materials
  prominence :recognized
  population 5400
  population_band "About fifty-four hundred residents"
  role "Cultivation of foods, dyes, medicines, and industrial fungi"
  setting "A chain of climate chambers wrapped around a warm ring conduit"
  access "Scheduled clean-stock carriers from Seren at three freight docks, each opening into a separate climate band"
  omit_facts :maintained_by

  descriptive_identity(
    setting:
      "Hundreds of climate chambers wrapped around a warm ring conduit, " \
      "each band holding its own air, moisture, light, soil, and " \
      "gravity — steamy fruit rooms a door away from cool root stores — " \
      "with the conduit walk running through them as a market street.",
    activity:
      "Warm chambers grow vat fungi, climbing fruit, dyes, and " \
      "medicinal cultures while cool ones keep roots, slow grains, and " \
      "voyage food; every chamber maintains a lineage book of its air, " \
      "soil, tools, and resident organisms, and growers record each " \
      "transfer across a climate boundary.",
    access:
      "Scheduled clean-stock carriers from Seren call at three freight " \
      "docks, each opening into a separate climate band. Every door " \
      "between bands is a transfer room where clothing, tools, and " \
      "resident microbes are exchanged for the next chamber's.",
    hazards:
      "Whatever crosses a transfer room gets written into the receiving " \
      "chamber's lineage book, visitor and cargo alike. The bound-root " \
      "stall stands closed with orders still posted, and the root " \
      "keepers and the clinic buyers each want a stranger's hands on " \
      "their side of the argument."
  )

  prose <<~PROSE
    Each band has its own weather and work day. Warm chambers grow vat fungi, climbing fruit, dyes, and medicinal cultures. Cool chambers hold roots, slow grains, binding moss, and food kept for long voyages. Doors between bands open through transfer rooms where people change clothing, tools, and resident microbes.

    Olven households often work in several climates. A family may tend one food room, lease shelves in a dye chamber, and hold shares in a medicinal culture maintained by another band. Meals on the conduit walk combine produce from hot, cool, wet, and dry rooms.

    Hundreds of chambers surround the warm conduit and can hold different air, moisture, light, soil, and gravity. Rekindling growers restored them one band at a time and turned the conduit walk into a market street.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Chamber Lineages"
    A chamber keeps a lineage book for its air, soil, water, tools, resident organisms, and operating tone. Growers record each transfer across a climate boundary and carry a sample back to the source room. Neighboring chambers compare those samples before renewing a shared crop. Climate-control plates retain the Ring-era name Olven-Terath; market speech shortened it with the first restored band.

    The practice lets Olven cultivate organisms that change quickly under resonance. A useful change receives its own room, workers, and market mark. #{ref :velin, "Velin"}, a pale tissue culture used for nerve grafts, occupies six humid chambers whose walls carry a gentle kinetic pulse.
  PROSE

  prose <<~PROSE, section: :trade, heading: "Velin Across the Door"
    A fast-growing velin form has appeared in the cool root chambers beyond its transfer room. It follows condensation lines along walls and binds cleanly to the roots stored there. The affected plants remain healthy and carry sensation when growers touch their outer bark.

    Olven has opened a separate market stall for the bound roots and assigned one empty chamber to their cultivation. Buyers from surface clinics and ship gardens have placed orders before the first harvest.

    The first test cut made every bound root in the chamber contract at once and silenced sensation in three control grafts across the transfer room. Growers closed the stall with the orders still posted. Root keepers want the cool stock separated intact; clinic buyers have offered to fund a destructive harvest if Olven releases the complete lineage record with it.
  PROSE

  gm_note :appears, "Crossing Olven means crossing climate bands, and every door between them is a transfer room where clothing, tools, and resident microbes are changed for the next chamber's. Whatever a party carried in gets written into the receiving room's lineage book."
  gm_note :triggered_by, "Ask who owns a crop and the answer is a list rather than a name: one household tends the room, a second leases shelves in it, a third holds shares through a band they have never worked."
  gm_note :complicates, "The bound-root stall is shut with its orders still posted, and both sides want a visitor's hands. Root keepers want the cool stock moved out whole; clinic buyers will fund a destructive harvest the moment Olven releases the full lineage record with it."
end

relate :rel_olven_located_in_frontier, :located_in, :olven, :the_glass_frontier, since: 2305 do
  prose "Olven cultivates many climates around a warm conduit in the broken ring."
end
