incident :hinge_six_occupation do
  name "Hinge Six Occupation"
  subkind :dispute
  tags :military, :transport, :governance, :"signal-freq"
  prominence :recognized
  status :complete
  date 2362

  prose <<~PROSE
    The armed seizure that placed civilian communication relays outside the accepted conduct of the Contested Reach. The #{ref :third_arc_defense, "Third Arc Defense"} occupied the earlier Hinge Six station during a route embargo and ordered its keepers to block Continuity priority traffic while leaving navigation service active.
  PROSE

  prose <<~PROSE, section: :course, heading: "The Filter"
    The occupiers did not damage the beacon or stop ordinary departures. They installed clerks in the signal room and sorted messages by sender and destination. Medical requests, private warnings, and port closures travelled on the same channels as government orders. Several disappeared into the filter before the station keepers could prove they were civilian.

    The keepers opened the signal breakers and made the whole relay silent. Ships could still turn at the marked corridor, but no joined route record or receiving confirmation left the station. The Defense could hold the rooms. It could not make crews trust their output.
  PROSE

  prose <<~PROSE, section: :aftermath, heading: "Carrier Refusal"
    Vantara and independent carriers suspended the branch. Two neighboring habs refused cargo routed through the occupied station. The Defense withdrew rather than lose the supply corridor it had taken Hinge Six to protect.

    Later belligerents left civilian relay rooms alone even when they fought over the routes around them. The Accord's communication standards inherited the same rule: a relay may close for safety, but an armed party may not decide which civilian message deserves to pass.
  PROSE
end

relate :rel_third_arc_participated_hinge_occupation, :participated_in, :third_arc_defense, :hinge_six_occupation do
  prose "The Third Arc Defense held Hinge Six and imposed the message filter."
end

relate :rel_hinge_six_participated_occupation, :participated_in, :hinge_six, :hinge_six_occupation do
  prose "The occupation took place in an earlier hull carrying the Hinge Six name and route office."
end

relate :rel_vantara_participated_hinge_occupation, :participated_in, :vantara, :hinge_six_occupation do
  prose "Vantara joined independent carriers in refusing the occupied branch."
end
