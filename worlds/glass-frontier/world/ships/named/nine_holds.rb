transport :nine_holds do
  name "Nine Holds"
  type_of :heavy_hauler
  summary "Nine Holds is a Korvathi freighter with nine pressure-independent cargo boxes attached to one drive spine. Its working-share owners carry mixed cargo between Korvath, Kaleidos, and the outer Keel."
  subkind :vessel
  status :complete
  capacity "Twelve working crew, thirty passengers, and nine pressure-independent cargo holds"
  tags :transport, :trade, :"outer-system", :resonance, :governance
  prominence :recognized

  descriptive_identity(
    appearance: "Nine box holds in three rows around a narrow drive spine, each joined through a ceramic break " \
                "and openable from outside by its own small lock. The numbers are cut deep into the frames — " \
                "paint changes, the cuts do not — and Hold Nine sits small and cold with a manual jettison " \
                "lever beside the bridge.",
    aboard: "Crawl passages reach each hold through a ceramic collar, and no two boxes need share an " \
            "environment: washable floors and drains in One and Two, cradles for stone in Six, isolated " \
            "instrument racks in Seven and Eight. Passengers eat in a galley built for the twelve permanent " \
            "crew and sleep in narrow berths above the spine; overflow rides Hold Three on folding bunks " \
            "between the cargo rails.",
    behavior: "Slow to turn, because each loaded box answers the drive through its own break and the pilot " \
              "waits for the hull to settle after every correction. Arrival announces itself as nine low knocks " \
              "traveling forward while the holds come to rest. A hold can change customer at berth without the " \
              "ship moving, and the hull lead can seal one whose field, temperature, or papers stop matching " \
              "the declaration."
  )

  prose <<~PROSE
    *Nine Holds* is a Korvathi freighter that carries mixed cargo between Korvath, Kaleidos, and the outer Keel. Its nine box holds attach to a narrow drive spine through ceramic breaks. Each has separate pressure, cooling, field monitors, and release bolts. The ship can carry grain beside tuned #{encyclopedia_ref :ringglass, "ringglass"}, livestock beside hot machinery, or passengers beside remote-cut stock without making every load share one environment.

    Independent partners own the vessel in working shares. A share grants one vote, one bunk, and a claim on earnings after repairs. Several partners live aboard; others work in Korvathi ports or sell their space voyage by voyage. The arrangement has survived debt, injury, and inheritance because the holds can earn separately while the hull remains common.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Nine Separate Rooms"
    The holds sit in three rows around the drive spine. A crawl passage reaches each through a ceramic collar, and a small external lock lets port crews open one without entering the ship. Numbers are cut deep into the frames and repeated in raised marks inside every service panel. Paint changes. The cuts do not.

    Holds One and Two have washable floors and broad drains for food and livestock. Three carries passengers when demand exceeds the fixed berths. Four and Five accept ordinary machinery. Six has reinforced cradles for ceramic and stone. Seven and Eight have isolated instrument racks. Nine is small, cold, and fitted with a manual jettison lever beside the bridge.

    The configuration makes the freighter slow to turn. Each loaded box answers the drive through its own break, and the pilot must wait for the hull to settle after a correction. Experienced passengers recognize arrival by the sequence of nine low knocks traveling forward as the holds come to rest.
  PROSE

  prose <<~PROSE, section: :operations, heading: "A Ship of Partial Voyages"
    Cargo rarely travels from the first port to the last. Grain loaded on Korvath leaves at Keelward. Ringglass enters after inspection and travels outward. Ashvane ceramic crosses inward. A hold may change customer while the ship remains at berth, with the new owner accepting its seals and cleaning record.

    The working partners appoint a cargo lead for each voyage and a hull lead for the ship. The cargo lead can refuse a load. The hull lead can close a hold after acceptance if its field, temperature, or papers no longer match the declaration. Port agents dislike the divided authority until a disputed box remains on the dock instead of delaying every other customer.

    Passengers eat in a galley built for the permanent crew and sleep in narrow berths above the spine. When Hold Three takes overflow, folding bunks hang between cargo rails and the exterior lock becomes the main door. The accommodation is plain, warm, and cheaper than a scheduled cabin on a larger line.
  PROSE

  prose <<~PROSE, section: :history, heading: "The Seventh Hold"
    Hold Seven was replaced after a badly seated #{encyclopedia_ref :ringglass, "ringglass"} load coupled through its original frame during descent to Keelward. The box pulled against the spine while the other eight continued settling. Release bolts fired, and the hold landed inside the catch field without opening. The cargo survived. The frame did not.

    Korvathi yards built the replacement with thicker ceramic layers and an inspection slit through every structural joint. The new box responds less to the ship's drive and more to strong external arrays. It stays empty near an active crane until the crane's field is measured. Port crews call the procedure excessive until they see the old twisted frame mounted above the cargo office in the home yard.

    The partners kept the number rather than renaming the box. Manifests now specify “Seven-new” when a distinction matters.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "Stopped at Keelward"
    #{embed :seven_new_load}
  PROSE

  gm_note :appears, "Cheap passage outward runs through Hold Three, where folding bunks hang between the cargo rails and the exterior " \
                    "cargo lock becomes the door, and passengers eat in a galley built for the twelve permanent crew."
  gm_note :triggered_by, "Two people must be satisfied to get a load aboard: the voyage's cargo lead can refuse it outright, and the " \
                         "hull lead can close the hold after acceptance if its field, temperature, or papers stop matching the " \
                         "declaration."
  gm_note :complicates, "Seven-new answers strong outside arrays more readily than the ship's own drive, so the partners leave it empty " \
                        "beside any active crane until that crane's field is measured, and port crews call the delay excessive."
end

relate :rel_nine_holds_operates_korvath, :operates_in, :nine_holds, :korvath do
  prose "The freighter was built on Korvath and carries its food, ceramic, and machinery toward Kaleidos."
end
relate :rel_nine_holds_operates_keelward, :operates_in, :nine_holds, :keelward do
  prose "Mixed loads transfer through Keelward, where the ship's isolated holds can be cleared separately."
end
relate :rel_nine_holds_operates_keel, :operates_in, :nine_holds, :keel do
  prose "*Nine Holds* works the inner and outer legs of the Keel as an independent carrier."
end
relate :rel_nine_holds_active_corridor_disputes, :active_during, :nine_holds, :the_corridor_disputes do
  prose "Conditional route marks and incompatible port rules shape every partial voyage the freighter accepts."
end
