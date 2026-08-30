encyclopedia :rootlight do
  name "Rootlight"
  summary "Rootlight is a blue pulse that travels through Miraeth soil and gathers beneath plants carrying damaged ringglass. The forest's floor glows in slow moving veins on charged nights, the light pools under afflicted trees, and the foresters cull by it."
  kind :phenomenon
  subkind :phenomenon
  status :complete
  topics :ecology, :ringglass, :mystery, :surface
  prevalence :uncommon
  appears_when all: { place: [:surface, :ringglass_rich] }
  medium "The glass-veined forest soils of Miraeth"
  nature "A slow blue pulse moving through soil along the buried glass veins, concentrating beneath vegetation whose embedded ringglass is damaged"
  hazard "Rootlight marks affliction rather than causing it — a tree standing in pooled light is carrying cracked glass in its grain, and cracked-glass timber fails explosively under load"

  descriptive_identity(
    signs: "On charged nights the forest floor carries slow blue veins of light moving " \
           "under the leaf litter like fire under paper, branching along the buried " \
           "glass, and pooling in steady patches beneath particular trees.",
    effects: "The pools mark damage: a tree standing in gathered rootlight carries " \
             "cracked ringglass in its grain, and the foresters' cull maps are drawn by " \
             "lantern-off night survey, pool by pool.",
    hazards: "Cracked-glass timber is the danger the light points at — it fails " \
             "explosively under saw or load — so the pools are the forest's own " \
             "condemned-list, published nightly, read by anyone willing to walk in " \
             "the dark."
  )

  prose <<~PROSE
    Miraeth's forests grow through glass — the veins thread the basin soils, and the old trees take ringglass up into their grain the way lowland trees take minerals — and on charged nights the relationship becomes visible. Rootlight runs the forest floor as slow blue veins of light, moving under the leaf litter along the buried glass, branching where it branches, and gathering in steady pools beneath particular trees. The pools are the phenomenon's message. A tree standing in gathered rootlight carries damaged glass in its grain — cracked, delaminating, or strike-shocked — and the light's concentration tracks the damage's severity closely enough that Miraeth's foresters draw their cull maps by night survey, walking the dark stands lantern-off and marking the pooled trees for the saw.

    The reading has a second audience. Cracked-glass timber fails explosively under saw and load — the reason glass-grain wood is culled young rather than harvested old — so the night maps are the felling crews' safety document as much as the forest's health chart, and Lumenshard's timber law requires a current rootlight survey the way dock law requires a manifest. What the pulse itself is remains the basin's contribution to the standing survey literature: the light moves along the veins at a walked pace, brightens with the signal tides, and concentrates at damage with the reliability of an instrument, and the three mechanism papers in circulation agree on the correlations, cite the same twelve seasons of maps, and part company entirely on what is moving.
  PROSE

  cue "The night forest floor carries slow blue veins under the litter, branching like fire under paper, and one old tree stands in a steady gathered pool of it."
  cue "The forestry crew's morning cull map is drawn in last night's hand, pool by pool, and the marked trees wear their chalk before the light has faded from anyone's memory."
  affordance "The forest publishes its own condemned-list nightly — pooled light under a tree is cracked glass in its grain, readable to anyone walking dark — and the night surveys give Miraeth's timber trade a safety document no instrument sweep could draw as cheaply."
  pressure "The light marks the danger and leaves the work — every pooled tree is an explosive-failure risk standing among sound ones, and the felling crews cut by a map whose ink is one night old in a forest that charges on the tides."
  variation "Deep-basin stands pool bright and cull often; the dry ridgeline forests show rootlight rarely, and their crews walk to the basin to train their eyes."
  variation "Lumenshard's night surveyors work lantern-off in pairs by long custom, and the trade's initiation — the first solo dark walk — doubles as its examination in the basin's other night hazards."
end
