npc :kest_gray do
  name "Kest Gray"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Kest Gray carries Outside arrival slates to Gray Line and returns with assigned approach windows."
end

relate :rel_kest_gray_at_outside, :operates_in, :kest_gray, :outside
relate :rel_kest_gray_at_gray_line, :operates_in, :kest_gray, :gray_line
