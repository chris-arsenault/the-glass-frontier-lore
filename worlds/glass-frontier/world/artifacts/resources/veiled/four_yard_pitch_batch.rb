resource :four_yard_pitch_batch do
  name "The Four-Yard Pitch Batch"
  summary "The Four-Yard Pitch Batch is Blue Yard Pitch sourced from the Dry Net, Three Arms Yard, Blue Step Works, and Lot Forty. It hardens around moving ringglass and peels away cleanly when the vibration stops."
  subkind :material
  type_of :ringglass_pitch
  status :complete
  prominence :marginal
  veiled "The Four-Yard Pitch Batch hardens around moving ringglass and peels away cleanly when the vibration stops."
end

relate :rel_blue_yard_pitch_at_the_dry_net, :sourced_from, :four_yard_pitch_batch, :the_dry_net
relate :rel_blue_yard_pitch_at_three_arms_yard, :sourced_from, :four_yard_pitch_batch, :three_arms_yard
relate :rel_blue_yard_pitch_at_blue_step_works, :sourced_from, :four_yard_pitch_batch, :blue_step_works
relate :rel_blue_yard_pitch_at_lot_forty, :sourced_from, :four_yard_pitch_batch, :forty
