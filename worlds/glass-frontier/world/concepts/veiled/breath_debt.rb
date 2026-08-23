concept :breath_debt do
  name "Breath Debt"
  subkind :physical_system
  status :complete
  prominence :marginal
  veiled "Breath debt records how much stored air one household used while another district's lung was under repair."
end

relate :rel_breath_debt_at_lung_three, :manifests_at, :breath_debt, :lung_three
relate :rel_breath_debt_at_vey, :manifests_at, :breath_debt, :vey
