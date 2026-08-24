installation :carom do
  name "Carom"
  playable_as :chronicle_location, :homeland
  origin_blurb "Three rotating segments trade parcels, meals, and messages through transfer drums that never align for long."
  subkind :settlement
  status :complete
  tags :"ring-hab", :transport, :trade, :household, :resonance
  prominence :recognized
  population 14000
  population_band "About fourteen thousand residents"
  role "Passenger, parcel, and provisions exchange for the near ring"
  setting "Three rotating hab segments joined by transfer drums and sorting decks"
  access "Frequent local carriers and scheduled Pell frames at six public docks; a complete three-segment transfer takes one drum cycle"
  omit_facts :maintained_by

  prose <<~PROSE
    Meals, medicine, parcels, tools, and personal messages cross Carom in batches. Each load enters a painted sorting floor, leaves in another carrier's hands, and may change hands again before reaching the right neighborhood. Local couriers read the receiving segment, drum, table, and final route from one compact mark at walking speed.

    The settlement occupies three hab segments that retained different rotation rates after the Glassfall. Transfer drums join them for only a few minutes. Their frame locks carry a distinct kinetic tone during each alignment, so a courier pushing a load can feel which drum is open through the handle. Visiting freight systems usually read the first transfer and lose the parcel when the drums change order.

    Famine couriers learned to use whichever drum aligned next and bounce loads between sorting decks until they reached the correct segment. Their route cards called the maneuver a carom. The exchange and then the settlement kept the word.
  PROSE

  prose <<~PROSE, section: :operations, heading: "The Sort"
    Each segment has one main exchange and several neighborhood tables. Incoming carriers unload wheeled frames whose shelves match the destination colors painted on the floor. Couriers break the load into smaller frames, walk them to the next band, and rebuild them in the order needed at the far drum.

    The route marks combine color, shape, and two short numbers. Color gives the segment. Shape gives the exchange. The first number identifies the neighborhood table and the second the carrier group. A chalk stroke across the mark records a temporary diversion. A clipped corner sends the parcel back through the same route after delivery. Couriers press a tuned ceramic stud through the corner; its vibration identifies the next drum when paint is hidden or the sorting deck is dark.

    #{ref :exchange_c, "Rattle"} handles the busiest drum and most off-hab traffic. #{ref :mik_sorn, "Mik Sorn"} runs its medical and hot-meal route. The hab-runner #{ref :tally, "*Tally*"} moves delayed frames between outer docks when the rotating connection would spoil their contents.
  PROSE

  prose <<~PROSE, section: :people, heading: "A Place That Changes Hands"
    Carom residents eat food prepared across all three segments. School work, repaired clothing, spare keys, and borrowed tools travel through the same exchanges. Children learn their home mark before they learn the full layout of the hab. Older residents can often identify a carrier group from the way its workers tie a frame.

    Couriers work in small cooperatives. Reputation follows accurate transfers and the ability to recover from a changed drum sequence. Every exchange keeps a correction wall showing damaged marks, unusual routes, and the final delivery. The walls teach apprentices and settle payment when a parcel crosses extra hands.

    A sealed white case marked for Neighborhood Eight has passed through Rattle on four consecutive days. Each recipient accepted the case, opened it, and returned an empty shelf. The case came back full at the next morning sort with the same weight and seal. Mik Sorn has moved the fifth delivery onto his own route.
  PROSE

  gm_note :complicates, "The three segments hold different rotation rates and the drums join them for only a few minutes, so anything a party carries across Carom is timed against an alignment nobody controls, " \
                        "and a missed drum means rebuilding the route from whichever deck they are standing on."
  gm_note :triggered_by, "Outsiders read the first transfer correctly and lose the parcel on the second, because the drums change order; a local courier feels which one is open through the kinetic tone in the frame handle."
  gm_note :appears, "A chalk stroke across a route mark means a temporary diversion and a clipped corner sends the parcel back the same way after delivery, so players redirecting something are writing in a grammar every courier reads at walking speed."
end

relate :rel_carom_located_in_frontier, :located_in, :carom, :the_glass_frontier, since: 2140 do
  prose "Carom's three rotating segments travel with the inhabited near ring."
end

relate :rel_pell_freight_operates_in_carom, :operates_in, :pell_freight_assembly, :carom, since: 2435 do
  prose "Pell Freight Assembly carriers exchange frames and onward manifests through Carom's courier cooperatives."
end

relate :rel_mik_sorn_operates_exchange_c, :operates_in, :mik_sorn, :exchange_c, since: 2435 do
  prose "Mik Sorn sorts and collects the medical and hot-meal frames assigned to Rattle."
end

relate :rel_tally_operates_exchange_c, :operates_in, :tally, :exchange_c, since: 2435 do
  prose "Rattle dispatches Tally when an outer-dock transfer cannot wait for the next drum alignment."
end

relate :rel_tally_carries_mik_sorn, :carries, :tally, :mik_sorn, since: 2435 do
  prose "Tally carries Mik Sorn on delayed legs between Rattle's route and Carom's outer docks."
end
