npc :kira_root do
  name "Kira Root"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Kira Root exchanges soil cultures among Mera, Noll, Olven, and Orra and keeps each strain in a separate hand jar."
end

relate :rel_kira_root_at_mera, :operates_in, :kira_root, :mera
relate :rel_kira_root_at_noll, :operates_in, :kira_root, :noll
relate :rel_kira_root_at_olven, :operates_in, :kira_root, :olven
relate :rel_kira_root_at_orra, :operates_in, :kira_root, :orra
