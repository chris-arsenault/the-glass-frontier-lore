resource :noll_navren_stands do
  name "The Noll Navren Stands"
  summary "The Noll Navren Stands are the named root stools and cultivated trees from which Noll grows curved structural timber. Their harvest marks let later repairers identify the stand, season, load, and grower behind each frame."
  subkind :biological_material
  type_of :navren
  function "Supplies Noll-grown structural frames shaped around declared loads"
  status :complete
  tags :ecology, :materials, :trade, :"structural-freq"
  prominence :marginal

  prose <<~PROSE
    #{ref :noll, "Noll"} coppices its #{encyclopedia_ref :navren, "navren"} from named root stools. Cultivar plates stand beside the oldest survivors. Growers reserve stems for a declared load, shape them through successive cutting cycles, and mark every harvest with the stool, shade season, imposed load, and grower's hand.

    Those marks remain on the finished brace so later repairers can orient it as it grew. Noll supplies the curved frames used in Rib's doors and pressure passages, along with paired spars for kite frames that must flex across separate loads.
  PROSE

  gm_note :appears, "Every cut carries the stool, shade season, imposed load, and grower's hand, leaving a finished brace traceable to one stand at Noll."
  gm_note :triggered_by, "A request for an uncommon curve reserves a living stem and waits through its cutting cycles; dried stock cannot be retuned into the missing shape."
  gm_note :complicates, "A salvaged or stolen frame still carries the harvest marks that identify where it grew and who shaped it."
end

relate :rel_noll_navren_stands_sourced_from_noll, :sourced_from, :noll_navren_stands, :noll do
  prose "Noll shapes the stands through repeated coppice cycles and living growth."
end
