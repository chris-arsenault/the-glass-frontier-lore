artifact :six_returning_seals do
  name "The Six Returning Seals"
  summary "The Six Returning Seals are the ceramic custody records fixed inside the Returning Pods. Their impressions reproduce the current tools, hands, and room tones of all eight Clearance desks despite older handling wear."
  subkind :record
  type_of :eighth_seal
  status :complete
  tags :governance, :archives, :salvage, :resonance
  prominence :marginal

  descriptive_identity(
    appearance: "Six palm-sized ceramic dockets, each with eight filled radial channels and handling wear older than " \
                "the fresh restraint cloth surrounding it.",
    handling: "Reading clockwise reproduces the current tools, hand pressures, and room tones of Clearance Eight's " \
              "public desks in their proper order.",
    risks: "The seals bind complete findings to evidence no desk witnessed. Treating their finished centers as " \
           "ordinary authorization would close six claims around an unexplained custody sequence."
  )

  prose <<~PROSE
    One seal was fixed inside every lid of #{ref :returning_pods, "the Returning Pods"}. All six carry current impressions from Clearance Eight's eight desks in their proper order. Their ceramic shows handling wear from journeys older than those impressions.

    #{ref :clearance_eight, "Clearance Eight"} keeps the seals with their pods in one powered custody row. #{ref :tangent, "Tangent"} carries a reader loaded with all six sequences while it follows the pods' approach beyond the cleared lane.
  PROSE

  gm_note :appears, "Every returned object arrived under a complete current seal, so the desks can release it only by accepting findings none of them remembers making."
  gm_note :triggered_by, "Comparing a seal with its desk reproduces the same tool, hand pressure, and room tone while the older wear remains unchanged."
  gm_note :complicates, "The seals are complete enough to close the claims and unexplained enough to keep them open, adding storage debt to every claimant."
end

relate :rel_clearance_eight_possesses_eighth_seal, :possesses, :clearance_eight, :six_returning_seals, since: 2435 do
  prose "Clearance Eight holds all six seals with the pods and repaired household objects they accompanied."
end
relate :rel_tangent_carries_eighth_seal, :studies, :tangent, :six_returning_seals, since: 2435 do
  prose "Tangent carries a reader loaded with the six seal sequences while tracing the pods' approach."
end
