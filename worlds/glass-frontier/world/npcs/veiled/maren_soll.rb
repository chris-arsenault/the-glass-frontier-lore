npc :maren_soll do
  name "Maren Soll"
  summary "Maren Soll is a Whitefoot cargo official who inspects signal loads and verifies their senders' pulses."
  subkind :official
  status :complete
  prominence :marginal
  veiled "Maren Soll inspects Whitefoot signal loads and refuses any crate whose sender cannot reproduce its pulse."end

relate :rel_maren_soll_at_whitefoot, :operates_in, :maren_soll, :whitefoot
relate :rel_maren_soll_at_span_nine, :operates_in, :maren_soll, :span_nine
