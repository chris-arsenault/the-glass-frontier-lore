npc :sel_hinge do
  name "Sel Hinge"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Sel Hinge recuts door bearings for Fourth Bell House and Hinge Six from the same stock of ring metal."
end

relate :rel_sel_hinge_at_fourth_bell_house, :operates_in, :sel_hinge, :fourth_bell_house
relate :rel_sel_hinge_at_hinge_six, :operates_in, :sel_hinge, :hinge_six
