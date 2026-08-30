npc :vask do
  name "Vask"
  summary "Vask is a pressure-valve specialist serving South Shade and Shadewell."
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Vask cuts pressure valves for South Shade and tests each one by carrying it into Shadewell's open wind."end

relate :rel_vask_at_south_shade, :operates_in, :vask, :south_shade
relate :rel_vask_at_shadewell, :operates_in, :vask, :shadewell
relate :rel_vask_at_coldside_bench, :operates_in, :vask, :coldside_bench
