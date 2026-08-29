artifact :lung_three_air_ledger do
  name "The Lung Three Air Ledger"
  summary "The Lung Three Air Ledger records how much stored air one household used while another district's lung was under repair."
  type_of :working_ledger
  belongs_to :institution, :breath_debt
  subkind :record
  status :complete
  prominence :marginal
  veiled "The Lung Three Air Ledger records how much stored air one household used while another district's lung was under repair."
end
relate :rel_breath_debt_at_lung_three, :manifests_at, :lung_three_air_ledger, :lung_three
relate :rel_breath_debt_at_vey, :manifests_at, :lung_three_air_ledger, :vey
