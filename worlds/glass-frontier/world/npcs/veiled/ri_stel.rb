npc :ri_stel do
  name "Ri'stel"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Ri'stel carries Karet-3 tone plates to the Choir Fragment and marks each frequency that returns altered."
end

relate :rel_ri_stel_at_the_choir_fragment, :operates_in, :ri_stel, :the_choir_fragment
relate :rel_ri_stel_at_karet_three, :operates_in, :ri_stel, :karet_three
