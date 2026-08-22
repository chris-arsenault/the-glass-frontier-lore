npc :krenno do
  name "Krenno"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Krenno casts Ninth Kiln hinge cups for the pressure doors at Hinge Six."
end

relate :rel_krenno_at_ninth_kiln, :operates_in, :krenno, :ninth_kiln
relate :rel_krenno_at_hinge_six, :operates_in, :krenno, :hinge_six
