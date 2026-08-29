faction :fermata_working_ensemble do
  name "The Fermata Working Ensemble"
  summary "The Fermata Working Ensemble claims a repeated machine tone as public music once three crews can keep time with it."
  type_of :community_group
  belongs_to :doctrine, :working_chorus
  subkind :community
  status :complete
  prominence :marginal
  veiled "The Fermata Working Ensemble claims a repeated machine tone as public music once three crews can keep time with it."
end

relate :rel_working_chorus_at_the_choir_fragment, :manifests_at, :fermata_working_ensemble, :the_choir_fragment
relate :rel_working_chorus_at_fermata_station, :manifests_at, :fermata_working_ensemble, :fermata_station
relate :rel_working_chorus_at_talven, :manifests_at, :fermata_working_ensemble, :talven
relate :rel_working_chorus_at_tanel, :manifests_at, :fermata_working_ensemble, :tanel
