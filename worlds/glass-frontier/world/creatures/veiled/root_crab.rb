creature :root_crab do
  name "Root Crab"
  subkind :animal
  status :complete
  prominence :marginal
  veiled "Root crabs prune sick Mera mats and carry the severed fibres into warm wall cavities."
end

relate :rel_root_crab_in_mera, :inhabits, :root_crab, :mera
relate :rel_root_crab_in_noll, :inhabits, :root_crab, :noll
relate :rel_root_crab_in_rib, :inhabits, :root_crab, :rib
