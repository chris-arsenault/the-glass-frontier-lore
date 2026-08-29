npc :three_arms_load_singer do
  name "The Three Arms Load Singer"
  summary "The Three Arms Load Singer pitches salvage frames until hidden fractures answer through the lifting cables."
  type_of :specialist_practitioner
  belongs_to :practice, :load_singing
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "The Three Arms Load Singer pitches salvage frames until hidden fractures answer through the lifting cables."
end
relate :rel_load_singing_at_brake, :manifests_at, :three_arms_load_singer, :brake
relate :rel_load_singing_at_lot_forty, :manifests_at, :three_arms_load_singer, :lot_forty
relate :rel_load_singing_at_pell_cut, :manifests_at, :three_arms_load_singer, :pell_cut
relate :rel_load_singing_at_crowncut_refinery, :manifests_at, :three_arms_load_singer, :crowncut_refinery
