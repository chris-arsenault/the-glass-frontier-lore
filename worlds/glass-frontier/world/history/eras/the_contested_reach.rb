era :the_contested_reach do
  name "The Contested Reach"
  subkind :historical_period
  status :complete
  tags :governance, :trade, :military, :diplomacy
  prominence :renowned
  structural true

  prose <<~PROSE
    The Contested Reach began in 2340 as provisional reconnection agreements hardened into competing claims. Ports charged for relays that neighboring settlements regarded as common infrastructure. Ring habitats disputed salvage boundaries around their own fragments. Surface governments cited Ring Age registries to claim routes and property held for generations by communities those records did not name.

    The period contained dozens of local disputes rather than one system-wide war. Convoy escorts, signal closures, seizures, and short occupations were common. Negotiation continued through most of them because the same parties still needed one another's docks, charts, and repair crews.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "Contact and Authority"
    Reconnection factions also disagreed over closed habitats. Some treated medical access and lost technology as grounds for entry. Habitat delegates argued that survival through the Famine had established authority over their own doors regardless of older registry claims.

    The #{ref :coriolis_breach, "Coriolis Breach"} ended most organized forced-contact efforts. Venn Talis's testimony showed that a sealed community could be coherent, self-sustaining, and unable to interpret an armed entry as rescue. Later sovereignty rules drew directly from that record.
  PROSE

  prose <<~PROSE, section: :aftermath, heading: "Interrupted by the Bloom"
    The Silent Bloom began in 2378 before the disputes had reached a general settlement. Factions that had been contesting routes redirected ships, Tuners, and stores toward evacuation and containment. Several commands cooperated because the cascade crossed every boundary they had been fighting over.

    That emergency suspended claims without resolving them. The institutions built for containment held many disputes dormant until the Bloom Coalition dissolved.
  PROSE
end

relate :rel_coriolis_breach_active_during_contested_reach, :active_during, :coriolis_breach, :the_contested_reach do
  prose "The Coriolis Breach occurred during the Contested Reach and changed later contact law."
end
