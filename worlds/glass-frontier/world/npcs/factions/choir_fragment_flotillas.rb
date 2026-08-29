faction :choir_fragment_flotillas do
  name "The Choir Fragment Flotillas"
  summary "The Choir Fragment Flotillas are two Ratter flotillas that share the quarterly inspection route through the Choir Fragment."
  type_of :salvage_flotilla
  belongs_to :role, :ratters
  subkind :trade_network
  status :complete
  tags :salvage, :orbital, :trade
  prominence :marginal

  gm_note :appears, "Ratters read each other off the patchwork coat, the cant, and the shard pendant from a first claim, and all three are checked at once. Wearing the gear without the argot marks a player as suspect, and faking fluency in Shear-cant is caught inside a sentence."
end

relate :rel_choir_fragment_flotillas_maintain_fragment, :maintains, :choir_fragment_flotillas, :the_choir_fragment, since: 2421 do
  prose "Two flotillas share the quarterly inspection route through #{ref :the_choir_fragment, "the Choir Fragment"}."
end

relate :rel_choir_fragment_flotillas_operate_deep_shear, :operates_in, :choir_fragment_flotillas, :deep_shear, since: 2320
relate :rel_choir_fragment_flotillas_operate_in_glasswake, :operates_in, :choir_fragment_flotillas, :glasswake
relate :rel_dry_net_resonates_choir_fragment_flotillas, :resonates_with, :the_dry_net, :choir_fragment_flotillas
