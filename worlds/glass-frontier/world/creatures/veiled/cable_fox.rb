creature :cable_fox do
  name "Cable Fox"
  summary "Cable foxes are animals that nest in idle counterweight housings along the Keel. They steal only wire carrying a live signal."
  subkind :animal
  status :complete
  prominence :marginal
  veiled "Cable foxes nest inside idle counterweight housings and steal only wire carrying a live signal."
end

relate :rel_cable_fox_in_keel, :inhabits, :cable_fox, :keel
relate :rel_cable_fox_in_hinge_six, :inhabits, :cable_fox, :hinge_six
relate :rel_cable_fox_in_cold_lantern, :inhabits, :cable_fox, :cold_lantern
