npc :senn_ravel do
  name "Senn Ravel"
  summary "Senn Ravel is a freight-record dissident who posts erased claims on public walls at Ravel and Third Latch."
  subkind :dissident
  status :complete
  prominence :marginal
  veiled "Senn Ravel posts erased freight claims on the public walls of Ravel and Third Latch."end

relate :rel_senn_ravel_at_ravel, :operates_in, :senn_ravel, :ravel
relate :rel_senn_ravel_at_third_latch, :operates_in, :senn_ravel, :latchhouse
