creature :echo_larva do
  name "Echo Larva"
  summary "Echo larvae are recording-borne anomalies found at Ledgerfall, the Choir Fragment, and Tanel. They hatch inside old records and consume the loudest word from each repeated passage."
  subkind :anomaly
  status :complete
  prominence :marginal
  veiled "Echo larvae hatch inside old recordings and chew the loudest word out of every repeated passage."
end

relate :rel_echo_larva_in_ledgerfall, :inhabits, :echo_larva, :ledgerfall
relate :rel_echo_larva_in_the_choir_fragment, :inhabits, :echo_larva, :the_choir_fragment
relate :rel_echo_larva_in_tanel, :inhabits, :echo_larva, :tanel
