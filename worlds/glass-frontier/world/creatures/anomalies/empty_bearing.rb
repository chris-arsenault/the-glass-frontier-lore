creature :empty_bearing do
  name "The Empty Bearing"
  summary "The Empty Bearing is the suspected hushmaw reported across three Deep Shear pockets along claim crews' return courses. Recovered membrane repeats one ship's drive-start tone near tuned ringglass."
  subkind :anomaly
  type_of :hushmaw
  belongs_to :lifeform, :farborn
  status :complete
  tags :orbital, :danger, :resonance, :salvage, :mystery
  prominence :recognized

  prose <<~PROSE
    Claim crews working beyond the Pell routes have reported the same empty bearing across three separate Deep pockets. The direction changes when plotted against ordinary space and remains fixed when plotted against each crew's return course. One ship lost its survey tune. Another abandoned a cutter. The third returned with a strip of clear membrane caught under an exterior line guide.

    The Shear Compact has issued a shared warning without declaring one animal responsible. Deep-runners have begun varying their retreat checks and carrying two decoy resonators. The recovered membrane continues to repeat a weak version of the third ship's drive-start tone when placed near tuned ringglass.
  PROSE

  gm_note :appears, "A clean gap returns on the crew's own retreat bearing rather than at one fixed position in ordinary space. Three claim crews have reported it, and the Compact has not declared whether they met one animal."
  gm_note :triggered_by, "Repeated active checks strengthen the path a #{encyclopedia_ref :hushmaw, "hushmaw"} follows. Deep-runners vary their retreat checks and carry two decoy resonators after the Empty Bearing appears."
  gm_note :complicates, "The recovered membrane still repeats the third ship's drive-start tone near tuned ringglass, so testing the only physical evidence reproduces the signal that drew the animal."
end

relate :rel_empty_bearing_inhabits_deep_shear, :inhabits, :empty_bearing, :deep_shear do
  prose "The Empty Bearing has followed three claim crews through separate pockets of the Deep Shear."
end
relate :rel_empty_bearing_depends_hood, :depends_on, :empty_bearing, :third_window do
  prose "Deep crews use hoods and paired decoy resonators when the Empty Bearing appears on a retreat course."
end
