transport :third_radiator do
  name "Third Radiator"
  summary "Third Radiator is a long Ashvane freight vehicle running between the lowland kiln towns and Shadewell. Its third radiator frame was rebuilt at Coldside Bench after cinderbacks occupied the cargo-yard culverts."
  subkind :transport
  type_of :heat_road_hauler
  technology :kite_sail
  status :complete
  tags :transport, :trade, :resonance, :"kinetic-freq", :"outer-system"
  prominence :recognized

  descriptive_identity(
    appearance: "A long, low freight body on broad wheel sets beneath reflective cargo covers, with three radiator " \
                "frames that rise above the vehicle at a rest bay.",
    aboard: "A lead driver reads the ground while a second crew member watches cargo temperatures, water, and the " \
            "next cooling stop. Mail and passengers ride between the sealed center bays.",
    behavior: "Wheels carry the load while a removable kinetic cradle eases soft salt, broken basalt, and steep " \
              "crater approaches. The hauler stops when heat opens its joints or divides the cradle's return."
  )

  prose <<~PROSE
    *Third Radiator* carries kiln goods and lowland freight across #{ref :ashvane, "Ashvane"} to #{ref :shadewell, "Shadewell"}. It exchanges condition marks at #{ref :marker_house_twelve, "Marker House Twelve"}, takes crews and mail through #{ref :south_shade, "South Shade"}, and cools beside #{ref :coldside_bench, "Coldside Bench"} before entering the crater lifts.

    The vehicle received its current name after the rear cooling frame was rebuilt. Cinderbacks from the #{ref :keel_yard_herd, "Keel Yard Herd"} still crowd the shaded culverts beneath its usual cargo court, so the crew raises the frame only after checking the ground under the parked trailers.
  PROSE

  gm_note :appears, "Third Radiator takes slow passengers between small Ashvane towns whenever its sealed freight bays leave room around the crew compartment."
  gm_note :triggered_by, "At a doubtful crossing the crew pulses the buried ringglass cut; a divided return closes the road even when the surface looks sound."
  gm_note :complicates, "Cooling the vehicle before dark raises three broad frames into daylight and advertises an overnight stop to every camp watching the road."
end

relate :rel_heat_road_hauler_operates_ashvane, :operates_in, :third_radiator, :ashvane do
  prose "Third Radiator works the heat roads between Ashvane's kiln towns and lowland camps."
end
relate :rel_heat_road_hauler_operates_shadewell, :operates_in, :third_radiator, :shadewell do
  prose "Third Radiator reaches the Keel freight system through Shadewell's crater lifts."
end
