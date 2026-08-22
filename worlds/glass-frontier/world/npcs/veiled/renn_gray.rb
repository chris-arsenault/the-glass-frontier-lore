npc :renn_gray do
  name "Renn Gray"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Renn Gray carries maintenance rolls among Gray Line, Hab Meridian, Hinge Six, and Holl."
end

relate :rel_renn_gray_at_gray_line, :operates_in, :renn_gray, :gray_line
relate :rel_renn_gray_at_hab_meridian, :operates_in, :renn_gray, :hab_meridian
relate :rel_renn_gray_at_hinge_six, :operates_in, :renn_gray, :hinge_six
relate :rel_renn_gray_at_holl, :operates_in, :renn_gray, :holl
