resource :root_broth do
  name "Root Broth"
  subkind :food
  status :complete
  prominence :marginal
  veiled "Root broth carries enough stored heat to warm a cold sleeper without raising the room's temperature."
end

relate :rel_root_broth_at_olven, :sourced_from, :root_broth, :olven
relate :rel_root_broth_at_orra, :sourced_from, :root_broth, :orra
relate :rel_root_broth_at_mera, :sourced_from, :root_broth, :mera
relate :rel_root_broth_at_rib, :sourced_from, :root_broth, :rib
