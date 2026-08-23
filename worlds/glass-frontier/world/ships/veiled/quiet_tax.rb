transport :quiet_tax do
  name "Quiet Tax"
  subkind :vessel
  status :complete
  prominence :marginal
  veiled "Quiet Tax hauls salvage out of Karet-3 and charges one usable component from every recovered machine."
end

relate :rel_quiet_tax_at_karet_three, :operates_in, :quiet_tax, :karet_three
relate :rel_quiet_tax_at_far_bell, :operates_in, :quiet_tax, :far_bell
relate :rel_quiet_tax_at_gray_line, :operates_in, :quiet_tax, :gray_line
