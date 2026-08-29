artifact :shared_reference do
  name "The Shared Reference"
  summary "The Shared Reference is a master three-reed tuning compass used to calibrate Counterweight and Underlayers field instruments. Its fixed tones descend from the Open Reed and remain the comparison carried into road-rig and deep-route work."
  subkind :instrument
  type_of :tuning_compass
  function "Provides the fixed three-band reference used to calibrate field tuning compasses"
  status :complete
  tags :resonance, :navigation, :ringglass, :household
  prominence :recognized

  descriptive_identity(
    appearance: "Three long paired reeds around a clear ringglass bead in a rotating case, with Counterweight lift " \
                "marks on one rim and Underlayers route marks on the other.",
    handling: "Field compasses are placed beside the master case and turned through each band. A free reed that " \
              "fails to reproduce its beat is repaired before the instrument returns to work.",
    risks: "The reference reads gradients rather than causes and can itself bend under a strong narrow-band effect. " \
           "Every calibration stops when its reeds and a Tuner's bodily reading disagree."
  )

  prose <<~PROSE
    *The Shared Reference* carries the three fixed tones used to compare Counterweight lift instruments and the compasses taken into the Underlayers. Its longer reeds make small drift visible before a pocket model would show it. The case bears both road-rig marks and deep-route closures because neither group accepts the other's reading without checking it against the same instrument.

    The present reed arrangement descends from #{ref :open_reed, "the Open Reed"}. Tuners use the master compass to compare a repairable external response with what they feel through hands and feet. Disagreement suspends the calibration rather than deciding which reading is correct.
  PROSE

  gm_note :appears, "The Shared Reference is called in when two working compasses disagree and neither crew will accept the other's calibration marks."
  gm_note :triggered_by, "A Tuner who disagrees with the master reading stops the comparison; fatigue can distort the person and a bent reed can distort the instrument."
  gm_note :complicates, "Moving the master compass from a Counterweight lift to an Underlayers closure leaves one crew working from its last accepted calibration."
end

relate :rel_tuning_compass_derived_from_resonant_instruments, :derived_from, :shared_reference, :open_reed do
  prose "The master compass reduces the Open Reed's adjustable range to three paired reference tones."
end
