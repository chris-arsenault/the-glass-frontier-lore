artifact :eighth_seal do
  name "The Eighth Seal"
  summary "An Eighth Seal is a palm-sized ceramic custody record fixed to an object at Clearance Eight. Its eight channels preserve the evidence and public findings behind the object's release, sale, quarantine, return, or continued custody."
  subkind :record
  status :complete
  tags :governance, :archives, :salvage, :resonance
  prominence :marginal

  prose <<~PROSE
    An Eighth Seal is a palm-sized ceramic docket fixed to an object in Clearance Eight's custody. Eight radial channels accept impressions from the settlement's public desks. When every channel is filled, the center changes from gray to the color assigned to release, return, sale, quarantine, or continued custody.

    Each desk presses its finding through a tuned stylus. A reader moving clockwise around the seal receives the object's recovery circumstances, hazards, identity marks, route evidence, claim, debts, salvage value, and final disposition. The sequence binds later decisions to the evidence available at each step.

    The seals found inside the returning pods reproduce current desk tools, hand pressures, and room tones. Their ceramic carries handling wear from journeys older than the impressions fixed across it.
  PROSE

  gm_note :appears, "Anything a party hands over or recovers in #{ref :clearance_eight}'s custody comes back wearing one. Read clockwise, it gives the hazards, identity marks and route evidence behind the disposition rather than only the color at the center."
  gm_note :triggered_by, "Push for an early release and the center is still gray: the color arrives only once all eight channels are impressed, so the empty channel names the desk that is refusing to sign."
  gm_note :complicates, "#{ref :tangent} carries authenticated blanks for retrievals beyond the custody docks, so a seal can be pressed far from the desks whose findings it records."
end

relate :rel_clearance_eight_possesses_eighth_seal, :possesses, :clearance_eight, :eighth_seal, since: 2435 do
  prose "Clearance Eight issues Eighth Seals to objects entering its public custody process."
end

relate :rel_tangent_carries_eighth_seal, :carries, :tangent, :eighth_seal, since: 2435 do
  prose "Tangent carries a seal reader and authenticated blanks when it retrieves an object beyond the custody docks."
end

relate :rel_eighth_seal_attuned_to_resonance, :attuned_to, :eighth_seal, :resonance do
  prose "The Eighth Seal fixes eight tuned impressions into one readable sequence."
end
