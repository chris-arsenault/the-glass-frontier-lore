creature :mera_root_crabs do
  name "The Mera Root Crabs"
  summary "The Mera Root Crabs are an agricultural colony ranging among Mera, Noll, and Rib. They prune sick root mats and carry the severed fibres into warm wall cavities."
  subkind :animal
  type_of :root_crab
  status :complete
  prominence :marginal
  veiled "The Mera Root Crabs prune sick mats and carry the severed fibres into warm wall cavities."
end

relate :rel_root_crab_in_mera, :inhabits, :mera_root_crabs, :mera
relate :rel_root_crab_in_noll, :inhabits, :mera_root_crabs, :noll
relate :rel_root_crab_in_rib, :inhabits, :mera_root_crabs, :rib
