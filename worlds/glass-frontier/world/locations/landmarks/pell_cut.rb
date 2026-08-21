installation :pell_cut do
  name "Pell Cut"
  subkind :infrastructure
  tags :salvage, :trade, :transport, :resonance, :orbital, :danger
  prominence :recognized
  function "Receives and separates material extracted from remote Deep Shear claims"

  prose <<~PROSE
    A chain of receiving yards fixed along a narrow navigable cut through the outer #{ref :deep_shear, "Deep Shear"}. Four anchor stations face four different claim pockets. Freight spines join them to a central sorting yard, where recovered material is separated before it moves inward on #{ref :heavy_hauler, "heavy haulers"}.

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
end

relate :rel_pell_cut_located_in_deep_shear, :located_in, :pell_cut, :deep_shear, since: 2428 do
  prose "Pell Cut sits on the outer edge of the #{ref :deep_shear, "Deep Shear"}, close enough to four unstable claim pockets for remote cutters to reach them."
end
relate :rel_pell_cut_depends_on_remote_cutting, :depends_on, :pell_cut, :remote_cutting do
  prose "The yards were built around #{ref :remote_cutting, "remote cutting"}: cutter cradles outside, sacrificial receiving rooms within."
end
