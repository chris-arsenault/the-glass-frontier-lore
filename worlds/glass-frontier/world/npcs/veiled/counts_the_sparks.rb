npc :counts_the_sparks do
  name "Counts-the-Sparks"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Counts-the-Sparks maps the live charge inside Pyre rubble by releasing copper dust from a paper cone."
end

relate :rel_counts_the_sparks_at_pyre, :operates_in, :counts_the_sparks, :pyre
relate :rel_counts_the_sparks_at_cinder_gap, :operates_in, :counts_the_sparks, :cinder_gap
