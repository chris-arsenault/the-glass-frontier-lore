artifact :lithren_pilgrim_bead do
  name "Lithren Pilgrim Bead"
  summary "The Lithren Pilgrim Bead is an archive-finding relic used from Lithren to Vastine and Pelhari. It warms beside fragments that share a missing line of text."
  subkind :relic
  status :complete
  prominence :marginal
  veiled "The Lithren Pilgrim Bead warms beside archive fragments that share a missing line of text."
end

relate :rel_lithren_pilgrim_bead_at_lithren, :operates_in, :lithren_pilgrim_bead, :lithren
relate :rel_lithren_pilgrim_bead_at_vastine, :operates_in, :lithren_pilgrim_bead, :vastine
relate :rel_lithren_pilgrim_bead_at_pelhari, :operates_in, :lithren_pilgrim_bead, :pelhari
