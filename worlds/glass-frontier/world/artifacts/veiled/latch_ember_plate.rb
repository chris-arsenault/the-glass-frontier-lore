artifact :latch_ember_plate do
  name "Latch Ember Plate"
  summary "The Latch Ember Plate is a heat-holding relic used between Latch and Pyre. It keeps one patch of Pyre glass hot enough to reveal an old evacuation mark."
  subkind :relic
  status :complete
  prominence :marginal
  veiled "The Latch Ember Plate keeps one patch of Pyre glass hot enough to reveal an old evacuation mark."
end

relate :rel_latch_ember_plate_at_latch, :operates_in, :latch_ember_plate, :latch
relate :rel_latch_ember_plate_at_pyre, :operates_in, :latch_ember_plate, :pyre
