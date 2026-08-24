concept :open_hand_rule do
  name "The Open-Hand Rule"
  summary "The Open-Hand Rule is a rescue-entry doctrine requiring anyone who enters a displaced room to show an empty glove first."
  subkind :doctrine
  status :complete
  prominence :marginal
  veiled "The Open-Hand Rule requires rescuers to show an empty glove before entering a displaced room."
end

relate :rel_open_hand_rule_at_xyloathax, :manifests_at, :open_hand_rule, :xyloathax
relate :rel_open_hand_rule_at_outside, :manifests_at, :open_hand_rule, :outside
