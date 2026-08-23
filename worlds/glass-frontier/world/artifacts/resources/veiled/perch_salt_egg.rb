resource :perch_salt_egg do
  name "Perch Salt-Egg"
  subkind :food
  status :complete
  prominence :marginal
  veiled "Perch salt-eggs keep for a season and crack open when held beside a working kinetic line."
end

relate :rel_perch_salt_egg_at_perch, :sourced_from, :perch_salt_egg, :perch
relate :rel_perch_salt_egg_at_kesh, :sourced_from, :perch_salt_egg, :kesh
