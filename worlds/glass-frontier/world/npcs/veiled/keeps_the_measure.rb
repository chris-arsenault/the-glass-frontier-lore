npc :keeps_the_measure do
  name "Keeps-the-Measure"
  summary "Keeps-the-Measure is a courier carrying pressure samples between Ashvane and Crucible."
  subkind :courier
  type_of :person
  belongs_to :role, :couriers
  status :complete
  prominence :marginal
  veiled "Keeps-the-Measure carries pressure samples from Ashvane to Crucible without letting either jar cool."end

relate :rel_keeps_the_measure_at_ashvane, :operates_in, :keeps_the_measure, :ashvane
relate :rel_keeps_the_measure_at_crucible, :operates_in, :keeps_the_measure, :crucible
