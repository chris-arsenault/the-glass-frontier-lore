npc :mira_dry do
  name "Mira Dry"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Mira Dry cleans Cold Lantern intake mesh and trades the captured mineral dust through the Dry Net."
end

relate :rel_mira_dry_at_the_dry_net, :operates_in, :mira_dry, :the_dry_net
relate :rel_mira_dry_at_cold_lantern, :operates_in, :mira_dry, :cold_lantern
