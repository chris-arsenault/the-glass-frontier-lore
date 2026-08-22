npc :kest_hinge do
  name "Kest Hinge"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Kest Hinge carries access records among Gray Line, Hab Meridian, Hinge Six, and Holl."
end

relate :rel_kest_hinge_at_gray_line, :operates_in, :kest_hinge, :gray_line
relate :rel_kest_hinge_at_hab_meridian, :operates_in, :kest_hinge, :hab_meridian
relate :rel_kest_hinge_at_hinge_six, :operates_in, :kest_hinge, :hinge_six
relate :rel_kest_hinge_at_holl, :operates_in, :kest_hinge, :holl
