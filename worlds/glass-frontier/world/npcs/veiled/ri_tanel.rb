npc :ri_tanel do
  name "Ri'tanel"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Ri'tanel records repeating tones in Tanel, the Choir Fragment, the Dry Net, and the Fracture on one scored glass strip."
end

relate :rel_ri_tanel_at_tanel, :operates_in, :ri_tanel, :tanel
relate :rel_ri_tanel_at_the_choir_fragment, :operates_in, :ri_tanel, :the_choir_fragment
relate :rel_ri_tanel_at_the_dry_net, :operates_in, :ri_tanel, :the_dry_net
relate :rel_ri_tanel_at_the_fracture, :operates_in, :ri_tanel, :the_fracture
