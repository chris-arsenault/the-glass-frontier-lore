npc :tern_sable do
  name "Tern Sable"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Tern Sable carries woven braces and seed cloth among Ravel, Rib, Sable Crescent, and Seren."
end

relate :rel_tern_sable_at_ravel, :operates_in, :tern_sable, :ravel
relate :rel_tern_sable_at_rib, :operates_in, :tern_sable, :rib
relate :rel_tern_sable_at_sable_crescent, :operates_in, :tern_sable, :sable_crescent
relate :rel_tern_sable_at_seren, :operates_in, :tern_sable, :seren
