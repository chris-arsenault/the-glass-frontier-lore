incident :circling_herd do
  name "The Circling Herd"
  subkind :incident
  date 2435
  status :complete
  tags :ecology, :transport, :danger, :resonance, :trade
  prominence :marginal

  prose <<~PROSE
    The current sarn passage divided at Perch. One herd crossed the far fragment along the recorded route. The second entered a widening circle around the settlement and began shedding combs at every turn.

    The circling animals remain strong and feed from carried fat. Their fallen combs hold a structural map of Perch's inhabited decks, including temporary wards erected after the herd arrived. The old animals occupy the quiet center while younger adults carry the strained outer edge.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Closed Water"
    Pava Lorn closed the inner collection band and recalled every line that crossed the circle. Ferries now approach through the far fragment, adding a full shift to each passenger and provision run. Seasonal wards have begun pooling food while the permanent kitchens ration water stored for the closing market.

    Molt follows the oldest animals through the center with empty comb racks and observation frames. The vessel has recovered two exhausted juveniles whose flight combs carry the same new map as the shed material.
  PROSE
end

relate :rel_circling_herd_manifests_perch, :manifests_at, :circling_herd, :perch do
  prose "The herd circles through Perch's kinetic saddle and closes its inner ferry approach."
end

relate :rel_pava_lorn_participated_circling_herd, :participated_in, :pava_lorn, :circling_herd do
  prose "Pava Lorn closed the collection band and reads the altered formation from Perch's pylons."
end

relate :rel_molt_participated_circling_herd, :participated_in, :molt, :circling_herd do
  prose "Molt tracks the oldest animals and recovers exhausted juveniles from the circle."
end

relate :rel_circling_herd_caused_by_sarn, :caused_by, :circling_herd, :sarn do
  prose "A migrating sarn herd left its recorded route and formed the circle around Perch."
end
