artifact :kesh_salt_egg_jar do
  name "The Kesh Salt-Egg Jar"
  summary "The Kesh Salt-Egg Jar holds Perch salt-eggs sourced from Perch and Kesh. They keep for a season and crack open when held beside a working kinetic line."
  subkind :artifact
  type_of :salt_eggs
  status :complete
  prominence :marginal
  veiled "The Kesh Salt-Egg Jar keeps for a season and cracks open when held beside a working kinetic line."
end

relate :rel_perch_salt_egg_at_perch, :sourced_from, :kesh_salt_egg_jar, :perch
relate :rel_perch_salt_egg_at_kesh, :sourced_from, :kesh_salt_egg_jar, :kesh
