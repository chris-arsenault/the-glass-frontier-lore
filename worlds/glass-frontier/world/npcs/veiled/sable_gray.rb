npc :sable_gray do
  name "Sable Gray"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Sable Gray carries access rolls among Gray Line, Hab Meridian, Hinge Six, and Holl."
end

relate :rel_sable_gray_at_gray_line, :operates_in, :sable_gray, :gray_line
relate :rel_sable_gray_at_hab_meridian, :operates_in, :sable_gray, :hab_meridian
relate :rel_sable_gray_at_hinge_six, :operates_in, :sable_gray, :hinge_six
relate :rel_sable_gray_at_holl, :operates_in, :sable_gray, :holl
