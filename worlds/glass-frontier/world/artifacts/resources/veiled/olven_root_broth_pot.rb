artifact :olven_root_broth_pot do
  name "The Olven Root-Broth Pot"
  summary "The Olven Root-Broth Pot holds heat-storing root broth prepared around Olven, Orra, Mera, and Rib. It can warm a cold sleeper without raising the surrounding room's temperature."
  subkind :artifact
  type_of :root_broth
  status :complete
  prominence :marginal
  veiled "The Olven Root-Broth Pot carries enough stored heat to warm a cold sleeper without raising the room's temperature."
end

relate :rel_root_broth_at_olven, :sourced_from, :olven_root_broth_pot, :olven
relate :rel_root_broth_at_orra, :sourced_from, :olven_root_broth_pot, :orra
relate :rel_root_broth_at_mera, :sourced_from, :olven_root_broth_pot, :mera
relate :rel_root_broth_at_rib, :sourced_from, :olven_root_broth_pot, :rib
