incident :circling_herd do
  name "The Circling Herd"
  summary "The Circling Herd is a 2435 sarn passage that split at Perch, with one group still circling the settlement and shedding mapped combs."
  subkind :incident
  type_of :animal_migration_event
  date 2435
  status :complete
  tags :ecology, :transport, :danger, :resonance, :trade
  prominence :marginal

  descriptive_identity(
    marks:
      "One herd still turns a widening circle around Perch, dropping " \
      "combs at every pass, while the inner collection band stays " \
      "closed and every ferry comes around the far fragment for a full " \
      "extra shift. The fallen combs hold a structural map of the " \
      "settlement's inhabited decks, including wards raised after the " \
      "herd arrived.",
    stakes:
      "Water stored for the closing market is being rationed and the " \
      "seasonal wards have begun pooling food, so anyone asking Perch " \
      "for supplies or berths is bidding against thousands of stalled " \
      "workers. Combs shed on later turns map decks that were not " \
      "standing when the earlier ones fell."
  )

  prose <<~PROSE
    The current sarn passage divided at Perch. One herd crossed the far fragment along the recorded route. The second entered a widening circle around the settlement and began shedding combs at every turn.

    The circling animals remain strong and feed from carried fat. Their fallen combs hold a structural map of Perch's inhabited decks, including temporary wards erected after the herd arrived. The old animals occupy the quiet center while younger adults carry the strained outer edge.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Closed Water"
    Pava Lorn closed the inner collection band and recalled every line that crossed the circle. Ferries now approach through the far fragment, adding a full shift to each passenger and provision run. Seasonal wards have begun pooling food while the permanent kitchens ration water stored for the closing market.

    Molt follows the oldest animals through the center with empty comb racks and observation frames. The vessel has recovered two exhausted juveniles whose flight combs carry the same new map as the shed material.
  PROSE

  gm_note :appears, "Every ferry now reaches Perch around the far fragment for a full extra shift, so an errand that used to take a morning arrives late and any delivery promised against the old crossing time is already broken."
  gm_note :triggered_by, "Put a fallen comb in front of anyone who can read structure and the map inside covers wards raised after the herd arrived; combs shed on later turns show decks that were not standing when the earlier ones fell."
  gm_note :complicates, "The permanent kitchens are rationing water laid in for the closing market and the seasonal wards have started pooling food, so a party asking Perch for supplies, berths, or hired hands is bidding against several thousand stalled workers."
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

relate :rel_circling_herd_caused_by_perch_circle, :caused_by, :circling_herd, :perch_circle do
  prose "A migrating sarn herd left its recorded route and formed the circle around Perch."
end
