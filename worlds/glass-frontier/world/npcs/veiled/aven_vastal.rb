npc :aven_vastal do
  name "Aven Vastal"
  subkind :official
  status :complete
  prominence :marginal
  veiled "Aven Vastal reviews material claims filed in Vastine, Verathi, Vitrael, and Whitefoot before releasing shared repair stock."
end

relate :rel_aven_vastal_at_vastine, :operates_in, :aven_vastal, :vastine
relate :rel_aven_vastal_at_verathi, :operates_in, :aven_vastal, :verathi
relate :rel_aven_vastal_at_vitrael, :operates_in, :aven_vastal, :vitrael
relate :rel_aven_vastal_at_whitefoot, :operates_in, :aven_vastal, :whitefoot
