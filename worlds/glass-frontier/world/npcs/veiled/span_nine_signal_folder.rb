npc :span_nine_signal_folder do
  name "The Span Nine Signal Folder"
  summary "The Span Nine Signal Folder compresses a spoken warning into a resonance burst that survives damaged relay lines."
  type_of :specialist_practitioner
  belongs_to :ability, :signal_folding
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "The Span Nine Signal Folder compresses a spoken warning into a resonance burst that survives damaged relay lines."
end

relate :rel_signal_folding_at_issel, :manifests_at, :span_nine_signal_folder, :issel
relate :rel_signal_folding_at_tanel, :manifests_at, :span_nine_signal_folder, :tanel
relate :rel_signal_folding_at_hab_meridian, :manifests_at, :span_nine_signal_folder, :hab_meridian
