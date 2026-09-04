installation :pell_cut do
  name "Pell Cut"
  summary "Pell Cut is a chain of receiving and sorting yards along a navigable cut in the outer Deep Shear, processing salvage from four claim pockets."
  playable_as :chronicle_location
  context_tags :orbital, :debris_field, :yard, :dock
  subkind :infrastructure
  tags :salvage, :trade, :transport, :resonance, :orbital, :danger
  prominence :recognized
  function "Receives and separates material extracted from remote Deep Shear claims"

  descriptive_identity(
    setting:
      "Receiving yards strung along a narrow navigable cut in the outer " \
      "Deep Shear: three working anchor stations facing their claim " \
      "pockets, each with cutter cradles outside, a receiving breach " \
      "behind thick shutters, and bolted-wall process rooms built to be " \
      "cut away if damaged. Freight spines run them all into a crowded " \
      "central yard, where the old synchronized clock hangs stopped " \
      "above the route board.",
    activity:
      "Cargo hands work under the hanging route boards while " \
      "arraywrights carry sealed receiver heads between shops, and shift " \
      "meals run at one long counter because everyone leaves on the same " \
      "freight windows. When a window closes, the whole yard goes quiet " \
      "at once.",
    access:
      "Member vessels of the Pell Freight Assembly reserve an anchor, " \
      "bring their own cutter, and pay for the receiving rooms in " \
      "handled mass or maintenance shifts — a crew short of coin buys " \
      "in with labor. Nothing departs without both an Assembly cargo " \
      "seal and a containment record from the Council instruments on the " \
      "old fourth anchor.",
    hazards:
      "The last time all four arrays shared one cadence, the sympathetic " \
      "tone across the seams produced Pell Four, and the emergency " \
      "cordon cut the spines; the anchors now run on separate clocks " \
      "behind a physical breaker nobody can throw from Glasswake. A load " \
      "that fails its containment record sits in a process room, and " \
      "members resent the delay without voting to remove it."
  )

  prose <<~PROSE
    A chain of receiving yards fixed along a narrow navigable cut through the outer #{ref :deep_shear, "Deep Shear"}. Four anchor stations face four different claim pockets. Freight spines join them to a central sorting yard, where recovered material is separated before it moves inward on #{encyclopedia_ref :bulk_kite, "Bulk Kites"}.

    The #{ref :pell_freight_assembly, "Pell Freight Assembly"} built the Cut for crews that needed industrial processing without an industrial owner. Member vessels reserve an anchor, bring their own cutter, and pay for the receiving rooms by mass handled or by maintenance work.
  PROSE
  prose <<~PROSE, section: :description, heading: "The Yards"
    Every anchor station has the same visible order: cutter cradles on the outer face, a receiving breach behind thick shutters, three process rooms, and a freight basin on the protected side. The rooms are replaceable. Their walls are bolted rather than fused so a damaged bay can be removed without opening the rest of the station.

    The central yard is louder and more crowded. Cargo hands work beneath hanging route boards while arraywrights move sealed receiver heads between shops. Shift meals are served at one long counter because departures follow the same freight windows. #{ref :cold_lantern, "Cold Lantern"} holds the last common route record before vessels divide toward their claims. When a window closes, the whole yard goes quiet at once.
  PROSE
  prose <<~PROSE, section: :history, heading: "The Four-Array Test"
    In 2434, the Assembly linked all four anchor arrays to one process cadence. The test promised a full freight window's output without sending a crew into any claim pocket. The shared tone held the four seams in sympathy and produced #{ref :pell_four, "Pell Four"}.

    The emergency cordon cut the freight spines and isolated each station. One anchor was dismantled during the closure. Three remain in service with separate clocks, separate receiver rooms, and a physical breaker that the route council cannot override from Glasswake.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Pell Cut works at reduced capacity. Council instruments occupy the former fourth anchor, and every departure carries both an Assembly cargo seal and a containment record. The process adds delays that members resent and no longer vote to remove.

    The old synchronized clock hangs inert above the central route board. Its hands stopped at the moment the first distress signal came back in the yard's own voice.
  PROSE

  gm_note :appears, "Anchor time is reserved by member vessels that bring their own cutter and settle in handled mass or in maintenance shifts, " \
                    "which lets a crew short of coin buy receiving rooms with labor. Three anchors are working, and the one allotted decides which claim pocket the crew cuts."
  gm_note :complicates, "Nothing leaves the central yard without both an Assembly cargo seal and a containment record from the Council instruments on the old fourth anchor. " \
                        "Members resent the delay and no longer vote to remove it, and a load that fails the record waits in a process room."
  gm_note :triggered_by, "Running two anchors on one cadence, or releasing the physical breaker between them, has to be argued on the station: " \
                         "the route council cannot override it from Glasswake, and the refusal comes from whoever is standing at the breaker."
end

relate :rel_pell_cut_located_in_deep_shear, :located_in, :pell_cut, :deep_shear, since: 2428 do
  prose "Pell Cut sits on the outer edge of the #{ref :deep_shear, "Deep Shear"}, close enough to four unstable claim pockets for remote cutters to reach them."
end
