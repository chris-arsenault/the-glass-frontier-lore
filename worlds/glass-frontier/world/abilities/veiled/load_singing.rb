ability :load_singing do
  name "Load Singing"
  summary "Load Singing is a salvage-rigging skill that pitches a lifting frame until hidden fractures answer through its cables."
  subkind :learned_ability
  status :complete
  prominence :marginal
  veiled "Load singers pitch salvage frames until hidden fractures answer through the lifting cables."
end

relate :rel_load_singing_at_brake, :manifests_at, :load_singing, :brake
relate :rel_load_singing_at_lot_forty, :manifests_at, :load_singing, :lot_forty
relate :rel_load_singing_at_pell_cut, :manifests_at, :load_singing, :pell_cut
relate :rel_load_singing_at_crowncut_refinery, :manifests_at, :load_singing, :crowncut_refinery
