npc :dera_mera do
  name "Dera Mera"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Dera Mera carries Kesh root cultures to Mera and returns with sealed nutrient paste."
end

relate :rel_dera_mera_at_mera, :operates_in, :dera_mera, :mera
relate :rel_dera_mera_at_kesh, :operates_in, :dera_mera, :kesh
