npc :dran_arms do
  name "Dran Arms"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Dran Arms refurbishes Hab Meridian cargo hooks on the benches at Three Arms Yard."
end

relate :rel_dran_arms_at_three_arms_yard, :operates_in, :dran_arms, :three_arms_yard
relate :rel_dran_arms_at_hab_meridian, :operates_in, :dran_arms, :hab_meridian
