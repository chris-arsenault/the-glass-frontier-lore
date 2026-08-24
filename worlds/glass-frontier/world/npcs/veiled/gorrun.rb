npc :gorrun do
  name "Gorrun"
  summary "Gorrun is a Vey housing dissident who opens unused rooms to families removed from Eleven's allotment rolls."
  subkind :dissident
  status :complete
  prominence :marginal
  veiled "Gorrun opens unused Vey rooms to families whose names Eleven's allotment board struck from its rolls."
end

relate :rel_gorrun_at_vey, :operates_in, :gorrun, :vey
relate :rel_gorrun_at_eleven, :operates_in, :gorrun, :eleven
