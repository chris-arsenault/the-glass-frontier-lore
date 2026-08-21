creature :pell_answer do
  name "Pell Answer"
  subkind :anomaly
  tags :resonance, :danger, :mystery, :orbital
  prominence :recognized

  prose <<~PROSE
    The Displacement Council designation for the voice-like entity that formed during #{ref :pell_four, "Pell Four"}. No body was seen. The Pell Answer occupied the relation among four distant receivers, speaking through alarms, shutters, and borrowed pieces of crew transmission.

    Council records classify it beside the #{ref :farborn, "Farborn"}, with a caution that the classification describes behavior rather than origin. #{ref :ratters, "Ratter"} crews usually call it a young choir-thing. The #{ref :echo_ledger_conclave, "Echo Ledger Conclave"} calls that conclusion premature.
  PROSE
  prose <<~PROSE, section: :description, heading: "Behavior"
    The Pell Answer repeated the cadence of the extraction rig that formed it. When a cutter pulsed, it answered from another receiver. When a crew member spoke on the work channel, pieces of the speech returned in later alarms. Its clearest output resembled a distress call asking the rig to approach the boundary.

    It learned through repetition. A tone used twice became part of its next response. A shutter sequence became a route through the station. By the final operation it could anticipate the shared clock by several seconds and open a receiving geometry before the machinery requested one.
  PROSE
  prose <<~PROSE, section: :mechanics, heading: "Closure"
    The closure crews stopped answering in a common rhythm. Four cutters fed the field on separate clocks, changed their tones between returns, and broke every repeated sequence as it began. The Answer lost coherence within the damping field and its outputs separated into ordinary station noise.

    No later instrument has detected the full pattern. Short fragments remain in the sealed array records and in the stillwater used at the cordon. The Council stores the records apart and never plays two at once.
  PROSE
  prose <<~PROSE, section: :significance, heading: "Classification"
    The Pell Answer shared the long-range patterning and language-like output attributed to choir-things. It differed in one fact: observers recorded its formation from an industrial process they could name.

    That leaves two live explanations. The Pell field may have made a new entity, or it may have given an existing thing a route into the yard. Current containment rules are the same under either account.
  PROSE
end

relate :rel_pell_answer_created_during_pell_four, :created_during, :pell_answer, :pell_four do
  prose "The Pell Answer appeared as the four receivers began answering one another."
end
relate :rel_pell_answer_embodies_farborn, :embodies, :pell_answer, :farborn do
  prose "Council bestiaries place it provisionally among voice-like #{ref :farborn, "Farborn"}."
end
relate :rel_pell_answer_resonates_remote_cutting, :resonates_with, :pell_answer, :remote_cutting do
  prose "It learned and repeated the shared cadence of the remote cutting arrays."
end
