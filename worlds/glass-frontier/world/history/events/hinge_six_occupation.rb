incident :hinge_six_occupation do
  name "Hinge Six Occupation"
  summary "The Hinge Six Occupation was Third Arc Defense's armed seizure of the civilian relay station during a route embargo in 2362."
  subkind :dispute
  tags :military, :transport, :governance, :"signal-freq"
  prominence :recognized
  status :complete
  date 2362

  descriptive_identity(
    marks:
      "The Accord's communication standards carry the rule the " \
      "occupation settled: a relay may close itself for safety, but an " \
      "armed party may not choose which civilian message passes. " \
      "Belligerents since have left relay rooms alone even while " \
      "fighting over the routes around them.",
    stakes:
      "Proposing to sort traffic by sender at any station gets " \
      "answered with what the clerks did here — navigation kept " \
      "running while medical requests and port closures vanished into " \
      "the filter, until the keepers opened the breakers and went " \
      "silent. Holding a relay still means holding a route carriers " \
      "can simply stop using."
  )

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

  gm_note :appears, "The rule cited whenever an armed party touches a relay was settled here in 2362: a station may close its own signal " \
                    "for safety, but no armed party decides which civilian message passes."
  gm_note :triggered_by, "Propose sorting traffic by sender at any station and a route keeper answers with what the clerks did here: " \
                         "navigation stayed up while medical requests and port closures vanished into the sorting, and the keepers " \
                         "replied by opening the breakers and going silent."
  gm_note :complicates, "Holding a relay means holding a route carriers can stop using; #{ref :vantara, "Vantara"} and the independents " \
                        "suspended the branch, two habs refused cargo routed through the station, and the occupier withdrew to keep " \
                        "the supply corridor it came for."
end

relate :rel_third_arc_participated_hinge_occupation, :participated_in, :third_arc_defense, :hinge_six_occupation do
  prose "The Third Arc Defense held Hinge Six and imposed the message filter."
  descriptive_identity(
    aims:
      "The Defense had taken the station to protect a supply corridor " \
      "during the embargo, and wanted Continuity priority traffic " \
      "blocked without losing the branch's ordinary service.",
    conduct:
      "Its clerks left the beacon untouched and departures running, " \
      "sorting messages by sender and destination — a filter that " \
      "swallowed medical requests and port closures alongside the " \
      "government orders it was aimed at.",
    cost:
      "It withdrew rather than lose the corridor it had come to " \
      "protect, and the pact that had treated relays as common " \
      "infrastructure spent the rest of its existence as a convoy " \
      "organization."
  )
end

relate :rel_hinge_six_participated_occupation, :participated_in, :hinge_six, :hinge_six_occupation do
  prose "The occupation took place in an earlier hull carrying the Hinge Six name and route office."
  descriptive_identity(
    conduct:
      "The station keepers answered the filter by opening the signal " \
      "breakers: ships could still turn at the marked corridor, but the " \
      "relay itself went silent rather than pass a sorted service off " \
      "as a whole one.",
    cost:
      "While the breakers stayed open, no joined route record and no " \
      "receiving confirmation left the station — the keepers gave up " \
      "the relay's whole function to keep it honest."
  )
end

relate :rel_vantara_participated_hinge_occupation, :participated_in, :vantara, :hinge_six_occupation do
  prose "Vantara joined independent carriers in refusing the occupied branch."
  descriptive_identity(
    aims:
      "The refusal was commercial rather than political: a relay whose " \
      "confirmations could not be trusted was a branch not worth " \
      "flying, whoever held its rooms."
  )
end
