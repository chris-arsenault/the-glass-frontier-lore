npc :mar_korr do
  name "Mar Korr"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Mar Korr brings Keelward repair warrants to Mera and returns with the stamped metal copies."
end

relate :rel_mar_korr_at_mera, :operates_in, :mar_korr, :mera
relate :rel_mar_korr_at_keelward, :operates_in, :mar_korr, :keelward
