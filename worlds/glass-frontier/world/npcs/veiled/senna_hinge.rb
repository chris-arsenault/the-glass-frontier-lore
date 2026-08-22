npc :senna_hinge do
  name "Senna Hinge"
  subkind :official
  status :complete
  prominence :marginal
  veiled "Senna Hinge inspects public access records at Fourth Bell House, Gray Line, Hab Meridian, and Hinge Six."
end

relate :rel_senna_hinge_at_fourth_bell_house, :operates_in, :senna_hinge, :fourth_bell_house
relate :rel_senna_hinge_at_gray_line, :operates_in, :senna_hinge, :gray_line
relate :rel_senna_hinge_at_hab_meridian, :operates_in, :senna_hinge, :hab_meridian
relate :rel_senna_hinge_at_hinge_six, :operates_in, :senna_hinge, :hinge_six
