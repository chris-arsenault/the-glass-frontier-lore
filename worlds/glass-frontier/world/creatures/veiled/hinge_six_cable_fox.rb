creature :hinge_six_cable_fox do
  name "The Hinge Six Cable Fox"
  summary "The Hinge Six Cable Fox is an animal nesting in idle counterweight housings along the Keel. It steals only wire carrying a live signal."
  subkind :animal
  type_of :latchling
  status :complete
  prominence :marginal
  veiled "The Hinge Six Cable Fox nests inside idle counterweight housings and steals only wire carrying a live signal."
end

relate :rel_cable_fox_in_keel, :inhabits, :hinge_six_cable_fox, :keel
relate :rel_cable_fox_in_hinge_six, :inhabits, :hinge_six_cable_fox, :hinge_six
relate :rel_cable_fox_in_cold_lantern, :inhabits, :hinge_six_cable_fox, :cold_lantern
