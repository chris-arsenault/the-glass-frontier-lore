installation :wing_lok_godown do
  name "The Wing Lok Godown"
  subkind :warehouse
  tags :trade, :legibility, :biotech
  prominence :marginal

  prose <<~PROSE
    Four storage floors above a lane of dried-goods dealers on Wing Lok Street in the #{ref :the_pearl_river_delta, "Pearl River"} trade quarter. The godown keeps physical samples from trades between fungal and machine territories: tissue in tinned copper tubes, small models written through blocks of #{ref :witness_glass, "witness glass"}.

    Wing Lok has kept other people's property and none of its own since 2071. A buyer and seller leave matched samples at the street-door bench on the day they trade, and either may return during the following year if the goods prove false. Storage is priced by the tube or room and by the month.
  PROSE

  prose <<~PROSE, section: :description, heading: "Two Rooms And A Plate"
    The damp room holds tinned copper tubes upright in numbered racks over salt trays, shaded, the cloth wetted twice a day from the building's own tank. Eleven hundred tubes stand there, in racks built for thirteen hundred. The dry room holds glass blocks on edge in wooden slip cases, with no plumbing overhead and nothing inside that sweats.

    The test plate stands in the damp room: a glazed tile carrying a fungal terminal's contact pattern and nothing behind it. A properly severed flush ignores the plate. During #{ref :the_eleven_day_flush, "the eleven-day flush"}, living fibre from a stored sample grew into its cast contacts.

    Samples stay in the rooms where they arrived. Any comparison happens upstairs with both parties at the bench and the disputed article brought to the stored tissue or glass.
  PROSE

  prose <<~PROSE, section: :limits, heading: "The Street-Door Bench"
    The bench faces the lane behind folding shutters. Samples are sealed there while both parties watch, then carried upstairs by Wing Lok staff. A bound book gives each tube or block one line in the order it arrived. The final mark records the autoclave or the glass hammer.

    #{ref :the_brokers, "Pearl River houses"} use Wing Lok because buyers beyond Guangdong trust property kept by a house with no share in the sale. A paper claim may cross three jurisdictions; the tube and glass remain in the same rooms above the dried-goods lane.
  PROSE

  log "2026-08-09 — Reframed Wing Lok around the storage rooms, test plate and street-door bench rather than the contract used to place samples there."
end
