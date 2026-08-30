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
    hazards: "Cracked-glass timber fails explosively under saw or load. Night surveyors " \
             "mark every pooled tree, and felling crews check the current map before " \
             "cutting or hauling in the stand."
  )

  prose <<~PROSE
    Miraeth's forests grow through glass veins in the basin soils, and old trees take ringglass into their grain with other minerals. On charged nights, rootlight moves under the leaf litter along the buried glass and gathers in steady pools beneath particular trees. Pooled trees carry cracked, delaminating, or strike-shocked glass in their grain. The light's concentration tracks damage closely enough for foresters to draw cull maps by walking the dark stands lantern-off and marking each pool.

    Cracked-glass timber fails explosively under saw and load, so glass-grain wood is culled young and Lumenshard timber law requires a current rootlight survey before felling. The pulse moves along the veins at walking pace, brightens with the signal tides, and concentrates at damaged glass. Three mechanism papers draw on the same twelve seasons of maps and reproduce those correlations; each proposes a different carrier for the moving light.
  PROSE

  cue "The night forest floor carries slow blue veins under the litter, branching like fire under paper, and one old tree stands in a steady gathered pool of it."
  cue "The forestry crew's morning cull map is drawn in last night's hand, pool by pool, and the marked trees wear their chalk before the light has faded from anyone's memory."
  affordance "Pooled light identifies cracked glass in a tree's grain, allowing lantern-off surveyors to map a stand for culling before a saw reaches it."
  pressure "Each pooled tree can fail explosively under saw or load; felling crews work from the latest night survey and isolate marked timber during cutting and haulage."
  variation "Deep-basin stands pool bright and cull often; the dry ridgeline forests show rootlight rarely, and their crews walk to the basin to train their eyes."
  variation "Lumenshard's night surveyors work lantern-off in pairs by long custom, and the trade's initiation — the first solo dark walk — doubles as its examination in the basin's other night hazards."
end
