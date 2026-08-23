artifact :mera_blue_jar do
  name "Mera Blue Jar"
  subkind :artifact
  status :complete
  prominence :marginal
  veiled "The Mera Blue Jar keeps one graft alive through a failed harvest by feeding it stored root heat."
end

relate :rel_mera_blue_jar_at_mera, :operates_in, :mera_blue_jar, :mera
relate :rel_mera_blue_jar_at_olven, :operates_in, :mera_blue_jar, :olven
relate :rel_mera_blue_jar_at_seren, :operates_in, :mera_blue_jar, :seren
