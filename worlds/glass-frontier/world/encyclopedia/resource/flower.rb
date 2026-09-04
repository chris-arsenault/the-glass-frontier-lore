encyclopedia :flower do
  name "Flower"
  kind :resource
  subkind :material
  status :complete
  log "2026-08-31 — Renamed Resonant Condensate to Flower; yard skimmers already use flower for the fine daily crust, giving the material a concrete trade term instead of a technical abstraction."
  topics :resonance, :materials, :trade, :"ringglass"
  prevalence :uncommon
  appears_when any: { place: [:ringglass_rich, :yard] }
  summary "Flower is the pale crystalline residue deposited by heavy band work. Yards collect it in dark damper-clay beds, skim the fine surface grade by hand during a still hour, and stamp each vial with its source band. Instrument makers use a grain of pure material to seat a device's frequency."
  function "The instrument trades' tuning stock: flower re-emits the band it settled from, and a grain of the right grade seats an instrument's frequency the way a seed crystal seats a solution"
  grades "Bed-skimmed flower, the fine surface crust taken daily, grades highest and holds its source band most precisely; seasonal bottom scrape serves damper packing and rough tuning; mixed-band crust is stamped ballast grade"
  availability "Skimmed from tended flower beds at ringglass yards and heavy band-work sites; the beds yield daily in working season, and the trade moves in stamped vials through the instrument houses"

  descriptive_identity(
    appearance: "A pale crystalline crust, faintly warm-looking against dark " \
                "bed clay — the daily flower fine as frost, the seasonal " \
                "scrape coarse as coarse salt — sold in stamped vials that " \
                "name bed, band, and skimming date.",
    working: "Beds of dark damper clay are laid where heavy band work runs; " \
             "the day's resonance settles into them, and at the still hour " \
             "the skimmers take the flower off the surface with flat wooden " \
             "louses, band by band, bed by bed; mechanical vibration causes " \
             "the fresh crust to re-emit and mixes the grade.",
    risks: "Fresh crust re-emits its band when struck or ground carelessly, " \
           "and mixed-band material seats an instrument at an unreliable " \
           "frequency; vials are padded, separated, and stamped at the bed."
  )

  prose <<~PROSE
    Heavy resonance work deposits a pale crystalline crust in damper material and nearby fittings. Cutting yards, damper galleries, and instrument test floors lay beds of dark clay beside each working band to collect it. After the shift and before night work, skimmers lift the fine surface flower with flat wooden louses and seal each bed's yield in a separate stamped vial. Mechanical skimming makes fresh flower re-emit and mixes adjacent grades, so the collection remains quiet hand work. Coarser bottom scrape is removed seasonally for damper packing and rough tuning.

    Elven damper records describe the same crust as a maintenance byproduct removed on schedule. Instrument makers now use its stable re-emission: a grain of material from the required band seats a new instrument's frequency. Fine daily flower is the highest grade; seasonal scrape serves coarse work; mixed-band crust sells as ballast grade. Bed, band, and skimming date remain attached to every vial through the instrument houses. The still skimming hour is both a handling requirement and a named shift in the yards.
  PROSE

  cue "At the still hour the skimmers move down the beds with their flat louses, taking the flower off band by band — and the visitor is hushed on the walkway, because the quiet is a tool and the crust spoils for jarring."
  cue "The instrument maker taps one grain of stamped flower into the new farglass frame, and the frequency seats — the vial's label naming the bed, the band, and the day the note was noise in a cutting yard."
  affordance "Damper beds convert a yard's residue into band-specific tuning stock that instrument houses can buy by stamped source and date."
  pressure "Fresh flower re-emits when jarred and mixed bands tune unreliably, so the trade depends on quiet collection, padded transport, and trustworthy bed stamps."
  variation "Yard beds harvest the cutting trades' broad bands; the instrument houses' own test-floor beds yield small and exquisitely pure; and the wild crusts scraped from old ring dampers assay strange bands the catalogs mark collector's grade."
  variation "Skimming is a named trade with its own hours and manners, and bed-tending posts pass by apprenticeship — the louses hand-carved, the still hour kept, the day's last entry in the bed book the same four words the trade has always used: flower off, beds quiet."
end
