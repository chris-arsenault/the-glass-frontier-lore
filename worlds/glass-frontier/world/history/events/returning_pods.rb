incident :returning_pods do
  name "The Returning Pods"
  summary "The Returning Pods are six cargo pods that arrived at Clearance Eight in 2435 carrying recently lost household objects repaired and resealed."
  subkind :discovery
  date 2435
  status :complete
  tags :salvage, :governance, :transport, :mystery
  prominence :marginal

  descriptive_identity(
    marks:
      "Six pods sit in one powered custody row at Clearance Eight, an " \
      "Eighth Seal fixed inside every lid with current impressions from " \
      "all eight desks in their proper order. Tangent works the " \
      "approach line beyond the cleared lane, carrying an empty cradle " \
      "and a reader loaded with the six seal sequences.",
    stakes:
      "The ownership desk could return each object today; the identity " \
      "and route desks refuse to close the cases while the fresh seals " \
      "remain unexplained. Every day in custody adds storage debt " \
      "against claimants who never asked for the repair or chose the " \
      "return route."
  )

  prose <<~PROSE
    Six cargo pods entered Clearance Eight's capture field from the same empty trajectory. Each contained repaired household objects packed in fresh restraint cloth. An Eighth Seal was fixed inside every lid, carrying current impressions from all eight desks in their proper order.

    The named claimants live at Clearance Eight and remember losing the objects during separate recent journeys. None had filed for repair. The route desk placed the pods together in a powered custody row while Tangent followed their approach line beyond the cleared lane.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "Claims Held Open"
    The ownership desk can return each object to its claimant. The identity and route desks refuse to close the cases while the fresh seals remain unexplained. Every additional day of custody adds storage debt to people who neither requested the repair nor chose the return route.

    Tangent carries an empty cradle and a reader loaded with the six seal sequences. Its patrol follows the pods' approach into a branch recorded as clear space on the current lane chart.
  PROSE

  gm_note :appears, "The six claimants live at #{ref :clearance_eight} and lost the objects on separate recent journeys, so any character who has misplaced gear on a run can be called into a claim room to identify a repaired version of it."
  gm_note :complicates, "Every day the identity and route desks hold the cases open adds storage debt to claimants who never asked for the repair, so the people pressing hardest for a disposition are residents watching a bill grow against something they already own."
end

relate :rel_returning_pods_manifests_clearance_eight, :manifests_at, :returning_pods, :clearance_eight do
  prose "Clearance Eight holds all six pods in one powered custody row."
end

relate :rel_tangent_participated_returning_pods, :participated_in, :tangent, :returning_pods do
  prose "Tangent follows the pods' empty approach trajectory with their seal impressions aboard."
  descriptive_identity(
    conduct:
      "The claim reader works behind the nose glass with the six seal " \
      "sequences loaded, checking whatever the circuit touches against " \
      "the impressions taken from the pod lids.",
    cost:
      "One of the vessel's two cradles rides empty against whatever the " \
      "approach line yields, so a tow request now asks the crew to " \
      "abandon the trajectory they are following."
  )
end

relate :rel_eighth_seal_resonates_returning_pods, :resonates_with, :eighth_seal, :returning_pods do
  prose "The seals inside the pods reproduce the current tools, hands, and room tones of all eight desks."
end
