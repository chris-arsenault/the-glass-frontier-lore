resource :blue_yard_pitch do
  name "Blue Yard Pitch"
  subkind :material
  status :complete
  prominence :marginal
  veiled "Blue Yard pitch hardens around moving ringglass and peels away cleanly when the vibration stops."
end

relate :rel_blue_yard_pitch_at_the_dry_net, :sourced_from, :blue_yard_pitch, :the_dry_net
relate :rel_blue_yard_pitch_at_three_arms_yard, :sourced_from, :blue_yard_pitch, :three_arms_yard
relate :rel_blue_yard_pitch_at_blue_step_works, :sourced_from, :blue_yard_pitch, :blue_step_works
relate :rel_blue_yard_pitch_at_lot_forty, :sourced_from, :blue_yard_pitch, :lot_forty
