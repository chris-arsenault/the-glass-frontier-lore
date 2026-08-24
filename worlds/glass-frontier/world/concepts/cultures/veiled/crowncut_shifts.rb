culture :crowncut_shifts do
  name "Crowncut Shifts"
  summary "Crowncut Shifts are refinery work-families who keep contaminated clothing outside their homes and take meals together at the work boundary."
  subkind :way_of_life
  status :complete
  prominence :marginal
  veiled "Crowncut shift families eat together at the refinery boundary so contaminated work clothes never enter their homes."
end

relate :rel_crowncut_shifts_at_crowncut_refinery, :manifests_at, :crowncut_shifts, :crowncut_refinery
relate :rel_crowncut_shifts_at_pell_cut, :manifests_at, :crowncut_shifts, :pell_cut
