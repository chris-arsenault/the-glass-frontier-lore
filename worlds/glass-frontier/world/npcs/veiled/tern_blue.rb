npc :tern_blue do
  name "Tern Blue"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Tern Blue rebuilds Dovra hand pumps with ceramic sleeves made at Blue Step Works."
end

relate :rel_tern_blue_at_dovra, :operates_in, :tern_blue, :dovra
relate :rel_tern_blue_at_blue_step_works, :operates_in, :tern_blue, :blue_step_works
