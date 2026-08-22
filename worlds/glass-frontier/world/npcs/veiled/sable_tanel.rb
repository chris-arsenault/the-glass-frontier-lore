npc :sable_tanel do
  name "Sable Tanel"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Sable Tanel repairs Ravel cloth looms with tension bars machined in Tanel."
end

relate :rel_sable_tanel_at_tanel, :operates_in, :sable_tanel, :tanel
relate :rel_sable_tanel_at_ravel, :operates_in, :sable_tanel, :ravel
