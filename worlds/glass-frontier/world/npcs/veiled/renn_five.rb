npc :renn_five do
  name "Renn Five"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Renn Five rebuilds Five Landing winch teeth on the ceramic benches at Blue Step Works."
end

relate :rel_renn_five_at_five_landing, :operates_in, :renn_five, :five_landing
relate :rel_renn_five_at_blue_step_works, :operates_in, :renn_five, :blue_step_works
