npc :tern_ravel do
  name "Tern Ravel"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Tern Ravel ferries loom cards between Tanel and Ravel and keeps one copy of every superseded pattern."
end

relate :rel_tern_ravel_at_tanel, :operates_in, :tern_ravel, :tanel
relate :rel_tern_ravel_at_ravel, :operates_in, :tern_ravel, :ravel
