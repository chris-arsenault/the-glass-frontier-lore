npc :dera_out do
  name "Dera Out"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Dera Out carries berth and supply claims among Outside, Pelhari, Pell Cut, and Perch."
end

relate :rel_dera_out_at_outside, :operates_in, :dera_out, :outside
relate :rel_dera_out_at_pelhari, :operates_in, :dera_out, :pelhari
relate :rel_dera_out_at_pell_cut, :operates_in, :dera_out, :pell_cut
relate :rel_dera_out_at_perch, :operates_in, :dera_out, :perch
