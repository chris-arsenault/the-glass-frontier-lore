npc :kel_choir do
  name "Kel Choir"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Kel Choir tests Karet-3 receiver plates against the repeating tones carried by the Choir Fragment."
end

relate :rel_kel_choir_at_the_choir_fragment, :operates_in, :kel_choir, :the_choir_fragment
relate :rel_kel_choir_at_karet_three, :operates_in, :kel_choir, :karet_three
