npc :ri_choir do
  name "Ri'choir"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Ri'choir records carried tones in Talven, Tanel, the Choir Fragment, and the Dry Net."
end

relate :rel_ri_choir_at_talven, :operates_in, :ri_choir, :talven
relate :rel_ri_choir_at_tanel, :operates_in, :ri_choir, :tanel
relate :rel_ri_choir_at_the_choir_fragment, :operates_in, :ri_choir, :the_choir_fragment
relate :rel_ri_choir_at_the_dry_net, :operates_in, :ri_choir, :the_dry_net
