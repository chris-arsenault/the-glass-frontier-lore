transport :steady_return do
  name "Steady Return"
  summary "Steady Return is a Pell Assembly heavy hauler carrying ringglass, microcavity charge, and industrial freight along the Keel. Its crew plans every outward load around having useful tonnage for the voyage home."
  subkind :vessel
  type_of :bulk_kite
  technology :kite
  capacity "Twelve permanent crew, twenty passengers, and six resonance-separated bulk holds"
  status :complete
  tags :trade, :transport, :ringglass, :"kinetic-freq", :orbital, :navigation
  prominence :recognized

  descriptive_identity(
    appearance: "A long cargo hull inside a bracketed structural frame, with six bulkheaded holds and oversized " \
                "kite arrays along the spine.",
    aboard: "Twelve crew share individual cabins, a galley, and a small schoolroom. Coupled freight travels in dark " \
            "holds physically separated from the ship's ordinary instrument cadence.",
    behavior: "Steady Return is slow and stable under load and restless with empty holds. The crew treats an empty " \
              "homeward leg as a planning failure rather than an opportunity to arrive early."
  )

  prose <<~PROSE
    *Steady Return* carries bulk #{encyclopedia_ref :ringglass, "ringglass"}, #{ref :the_seed_tray, "the Seed Tray"}, food, and machinery along #{ref :keel, "the Keel"}. The #{ref :pell_freight_assembly, "Pell Freight Assembly"} maintains its six isolated holds and buys escort coverage for the outer legs.

    The permanent crew has lived aboard long enough for the watch rotation to include schooling and childcare. Passengers enter that settled order rather than creating a separate one. A charter that fills every hold for one buyer is rare enough that port clerks and rival masters read the manifest before the ship leaves.
  PROSE

  gm_note :appears, "Steady Return takes passengers in the spaces its twelve-person household crew is not using, then folds them into an established watch rotation."
  gm_note :triggered_by, "Chartering every hold for one buyer produces a manifest unusual enough to interest insurers, rivals, and escort crews before departure."
  gm_note :complicates, "A coupled-freight hold travels dark, so nobody aboard can say whether its contents changed after loading without opening the bulkhead at berth."
end

relate :rel_heavy_hauler_operates_keel, :operates_in, :steady_return, :keel, since: 2335 do
  prose "Steady Return works the inner and outer legs of the Keel."
end
