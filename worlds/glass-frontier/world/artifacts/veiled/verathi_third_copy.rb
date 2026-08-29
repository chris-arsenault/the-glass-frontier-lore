artifact :verathi_third_copy do
  name "The Verathi Third Copy"
  summary "The Verathi Third Copy is an exchange-compact record held between Verathi and Accord Shore. It preserves concessions omitted from both public versions."
  subkind :record
  type_of :recording_medium
  status :complete
  prominence :marginal
  veiled "The Verathi Third Copy preserves concessions omitted from both public versions of the exchange compact."
end

relate :rel_verathi_third_copy_at_verathi, :operates_in, :verathi_third_copy, :verathi
relate :rel_verathi_third_copy_at_accord_shore, :operates_in, :verathi_third_copy, :accord_shore
