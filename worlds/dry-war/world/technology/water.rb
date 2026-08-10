resource :water do
  name "Water"
  subkind :material
  tags :water, :energy, :ecology, :governance
  prominence :mythic

  prose <<~PROSE
    The surviving rivers carry two civilizations: habitat for the Great Root and coolant for the coalitions.

    The #{ref :the_great_root, "Great Root"} needs it as habitat. Mycelial cognition requires continuous moist ground; a dry belt is a place where the network cannot think. The coalitions need water as coolant. #{ref :fusion_plants, "Fusion plants"} and the computer works beside them consume rivers at volumes unknown before #{ref :the_long_summer, "the Long Summer"}.

    Rivers, lakes and high catchments therefore pull their territories together. A strip of land matters because it holds water both systems use.
  PROSE

  prose <<~PROSE, section: :economy, heading: "As A Unit Of Value"
    In coalition territory, a water allocation determines what a household may grow, what #{ref :market, "Market"} charges it and when #{ref :mercy, "Mercy"} opens a clinical case. The number appears on apartment walls and public accounts. See #{ref :the_water_heresy, "the water heresy"}.

    Fungal territory does not price water, which foreign observers often mistake for abundance. The network experiences rivers and wet ground as its own habitat. A province diverting a river for local advantage cuts living tissue away from the whole.
  PROSE

  prose <<~PROSE, section: :dangers, heading: "The Thing Upstream"
    Both gods are fighting over water while cooperating over the places it comes from. See the #{ref :the_himalayan_holds, "Himalayan Holds"}.

    A monastery may repair a source-water filter beside coalition instruments in the morning while both governments contest the same release gate downstream. Each needs the water clean before it can decide where the water goes.
  PROSE
end
