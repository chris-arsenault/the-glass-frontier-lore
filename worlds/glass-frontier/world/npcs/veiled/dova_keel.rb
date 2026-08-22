npc :dova_keel do
  name "Dova Keel"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Dova Keel checks water and pressure instruments in Issel, Karet-3, the Keel, and Keelward."
end

relate :rel_dova_keel_at_issel, :operates_in, :dova_keel, :issel
relate :rel_dova_keel_at_karet_three, :operates_in, :dova_keel, :karet_three
relate :rel_dova_keel_at_keel, :operates_in, :dova_keel, :keel
relate :rel_dova_keel_at_keelward, :operates_in, :dova_keel, :keelward
