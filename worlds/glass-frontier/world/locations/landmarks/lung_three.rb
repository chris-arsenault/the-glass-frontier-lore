installation :lung_three do
  name "Lung Three"
  playable_as :chronicle_location
  subkind :infrastructure
  function "Divides Vey's main thermal airflow among four residential wards"
  status :complete
  tags :"structural-freq", :household, :training, :"ring-hab"
  prominence :marginal
  omit_facts :maintained_by

  prose <<~PROSE
    Lung Three is a tall ceramic chamber inside #{ref :vey, "Vey"}. Warm air enters beneath a grated floor, rises through a forest of hollow ribs, and leaves through four residential galleries. Each rib can be opened from a maintenance bridge winding through the chamber.

    Apprentices clean its shutters and compare the pull at different heights. Threads tied along the bridge show local reversals before the gauges at the gallery mouths register them. The chamber smells different at every level as training vapor separates through the flow.

    Lung Three currently carries the return displaced by the central-pump trial. Condensation has appeared on its highest bridge, where the chamber usually stays dry through the full rotation.
  PROSE

  gm_note :appears, "Whatever is opened, spilled, or burned in the chamber reaches four residential wards through " \
                    "the galleries, in whatever order the ribs decide. Threads on the maintenance bridge show the " \
                    "reversal before the gauges at the gallery mouths do, and the wards smell it before either."
  gm_note :complicates, "The highest bridge is dry through a normal rotation and is wet now, because Lung Three " \
                        "carries the return displaced by the central-pump trial. Work at that height means slick " \
                        "ceramic and shutters whose pull no longer agrees with the gauges below them."
end
relate :rel_lung_three_located_in_vey, :located_in, :lung_three, :vey, since: 2435 do
  prose "Lung Three distributes Vey's passive airflow through four residential wards."
end


relate :rel_lung_three_depends_on_resonance, :depends_on, :lung_three, :resonance do
  prose "Structural resonance keeps Lung Three's narrowest ceramic passages open through each thermal cycle."
end
