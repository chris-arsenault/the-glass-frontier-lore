incident :second_span_trial do
  name "Second Span Trial"
  summary "The Second Span Trial was Coremark's failed 2356 attempt to build a modern counterpart to Span Nine through the mid-drift."
  subkind :operational_failure
  tags :resonance, :"signal-freq", :ringglass, :danger
  prominence :recognized
  status :complete
  date 2356

  descriptive_identity(
    marks:
      "A chain of aligned ringglass anchor beds still sits through the " \
      "mid-drift, stripped of transmitters and cut crystal, each " \
      "segment testing inert on its own — the same test that once " \
      "signed the chain off as a passive guide. The complete project " \
      "records, down to the rejected readings of Pyre answering a " \
      "silent array, rest with the Shear Compact.",
    stakes:
      "Sithari keeps the only working span and no replacement has been " \
      "attempted since, so the inequality that financed the trial has " \
      "no outlet. The aligned mass in the beds is an obvious payday, " \
      "and certification to strip it runs through the Compact that " \
      "holds the record of what the chain carried."
  )

  prose <<~PROSE
    The failed attempt to build a modern counterpart to #{ref :span_nine, "Span Nine"}. #{ref :coremark, "Coremark"} financed the work during the Contested Reach, when Sithari's exclusive access to the old conduit had become a system-wide grievance. The trial never opened a second span. It left a chain of aligned ringglass anchors through the mid-drift, close enough to #{ref :pyre, "Pyre"} to carry the refinery's later failure far beyond its walls.
  PROSE

  prose <<~PROSE, section: :how_it_works, heading: "The Guide Chain"
    The project used dozens of anchor arrays rather than one continuous filament. Each array received a narrow signal, corrected it, and handed it to the next station. Bench tests worked. Short runs between neighboring anchors worked. The full chain would not hold one coherent signal from end to end.

    Project crews compensated by increasing the ringglass mass at each anchor and cutting broader paths through the surrounding debris. The additions made individual segments cleaner while increasing the load transferred into the local field. Instruments at Pyre began recording signal-band responses during refinery work even when every trial transmitter was quiet.
  PROSE

  prose <<~PROSE, section: :course, heading: "Abandonment"
    Coremark ended the trial after the full chain failed its third acceptance run. Salvage crews recovered the transmitters and the most valuable cut crystal. The aligned anchor beds remained in place because removing them cost more than the material was worth and every segment appeared inert when tested alone.

    The project report described the remaining chain as a passive guide. That description was accurate until Pyre overloaded. The refinery's cascade entered the nearest anchors and followed a prepared route through ringglass-dense space. Sites that had never shared power, control, or atmosphere began failing on the same signal pattern.
  PROSE

  prose <<~PROSE, section: :legacy, heading: "After Pyre"
    The surviving plans established that the trial did not cause the refinery overload. They also established that the overload could not have travelled as it did without the abandoned guide. Attempts to build another Span ended. The inequality that motivated the project remained.

    #{ref :teren_voss, "Teren Voss"}, the trial's lead engineer, survived because the final acceptance run was controlled from outside the anchor chain. Voss later gave the Shear Compact the complete project records, including the rejected readings that first showed Pyre answering a silent array.
  PROSE

  gm_note :appears, "The anchor beds are still seated through the mid-drift, stripped of transmitters and cut crystal and still heavy with aligned ringglass, and each one tests inert when tested alone. That is exactly the test the project crews ran before signing the chain off as a passive guide."
  gm_note :triggered_by, "Stripping a bed for its aligned ringglass is the obvious payday, since Coremark left the mass only because hauling it cost more than it was worth. Certification for that work runs through the #{ref :shear_compact, "Shear Compact"}, which holds Voss's records of what the chain carried."
  gm_note :complicates, "Sithari still holds the only working span and no replacement has been attempted since the trial closed, so the grievance that financed it has no outlet. Raising a second span in political company gets the Bloom's route through the abandoned anchors read back at the proposer."
end

relate :rel_second_span_trial_conducted_by_coremark, :conducted_by, :second_span_trial, :coremark do
  prose "#{ref :coremark, "Coremark"} financed, staffed, and closed the Second Span Trial."
end

relate :rel_second_span_trial_located_in_shear, :located_in, :second_span_trial, :the_shear do
  prose "The guide chain crossed the mid-drift Shear near Pyre."
end

relate :rel_teren_voss_participated_second_span_trial, :participated_in, :teren_voss, :second_span_trial do
  prose "#{ref :teren_voss, "Teren Voss"} led the engineering team and signed the abandonment report."
end

relate :rel_second_span_trial_caused_silent_bloom_path, :caused, :second_span_trial, :the_silent_bloom do
  prose "Its abandoned anchors gave the later Pyre cascade a prepared path through the mid-drift."
end
