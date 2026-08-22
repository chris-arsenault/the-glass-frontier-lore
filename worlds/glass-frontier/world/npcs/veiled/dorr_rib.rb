npc :dorr_rib do
  name "Dorr Rib"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Dorr Rib reads stress knocks along Rib and records matching replies from Noll."
end

relate :rel_dorr_rib_at_rib, :operates_in, :dorr_rib, :rib
relate :rel_dorr_rib_at_noll, :operates_in, :dorr_rib, :noll
