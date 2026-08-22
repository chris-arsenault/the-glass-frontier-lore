npc :senna_verith do
  name "Senna Verith"
  subkind :official
  status :complete
  prominence :marginal
  veiled "Senna Verith escorts cleared machinery from Clearance Eight to Verathi and records every opened seal."
end

relate :rel_senna_verith_at_verathi, :operates_in, :senna_verith, :verathi
relate :rel_senna_verith_at_clearance_eight, :operates_in, :senna_verith, :clearance_eight
