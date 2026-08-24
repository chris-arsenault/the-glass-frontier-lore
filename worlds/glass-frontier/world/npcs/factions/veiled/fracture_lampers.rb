faction :fracture_lampers do
  name "The Fracture Lampers"
  summary "The Fracture Lampers are a vessel-dwelling community that tends claim beacons on unrecovered debris around the Fracture."
  subkind :community
  status :complete
  prominence :marginal
  veiled "Fracture Lampers live aboard claim vessels and tend the beacons left on debris no crew could recover."
end

relate :rel_fracture_lampers_at_the_fracture, :operates_in, :fracture_lampers, :the_fracture
relate :rel_fracture_lampers_at_ashenmaw, :operates_in, :fracture_lampers, :ashenmaw
relate :rel_fracture_lampers_at_vitrael, :operates_in, :fracture_lampers, :vitrael
relate :rel_fracture_lampers_at_vastine, :operates_in, :fracture_lampers, :vastine
