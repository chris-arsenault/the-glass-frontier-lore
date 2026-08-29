creature :three_hundred_out do
  name "Three Hundred Out"
  summary "Three Hundred Out is the first rind recorded beside an active Bloom cordon, holding near Outside at the distance that gave the animal its name."
  subkind :animal
  type_of :rind
  tags :ecology, :resonance, :orbital, :danger, :mystery
  prominence :marginal

  descriptive_identity(
    appearance: "An opaque pale-grey shell holding about three hundred meters beyond Outside, with hair-fine filaments drifting across the Karet wall array's gradient.",
    behavior: "It remains oriented toward the wall array and changes its path after recalibration; permanent residents mark its position beside the daily cordon readings.",
    threat: "Its trailing filaments can reach tuned mounts from well beyond the distance at which the animal itself appears dangerous, leaving the ringglass out of calibration for hours."
  )

  prose <<~PROSE
    Three Hundred Out is the first rind recorded beside an active Bloom cordon. It holds about three hundred meters from #{ref :outside, "Outside"}, between the boundary walk and the visible edge of #{ref :karet_three, "Karet-3"}. Its path changes when the wall array recalibrates.

    Council teams are preparing a series of counter-tones to draw it back toward the Deep Shear. The station's permanent residents watch from the maintenance bay and mark its daily position beside the cordon readings.
  PROSE

  gm_note :appears, "Three Hundred Out arrives wherever the local array holds a steady tone. Cutting the source makes it circle outward hunting the line, spreading its filaments across more of the cordon."
  gm_note :complicates, "Its filaments trail well beyond the shell, so the animal can remain at its familiar distance while a strand pulls one tuned mount out of calibration for hours."
  gm_note :triggered_by, "Shooting it scatters the filaments. Council crews instead place a counter-tone beyond the route they want it to follow, which needs a clear field and hours the cordon may not have."
end

relate :rel_rind_inhabits_deep_shear, :inhabits, :three_hundred_out, :deep_shear do
  prose "Three Hundred Out followed a sustained resonance gradient out of the #{ref :deep_shear, "Deep Shear"}."
end
relate :rel_rind_resonates_liras_wall, :resonates_with, :three_hundred_out, :liras_wall do
  prose "The animal follows the stable signal produced by the local deployment of #{ref :liras_wall, "Lira's Wall"}."
end
relate :rel_rind_resonates_karet_three, :resonates_with, :three_hundred_out, :karet_three do
  prose "At Outside, Three Hundred Out tracks the resonance gradient around the #{ref :karet_three, "Karet-3"} boundary."
end
relate :rel_rind_at_outside, :located_in, :three_hundred_out, :outside, since: 2435 do
  prose "Three Hundred Out currently holds beyond #{ref :outside, "Outside"}."
end
