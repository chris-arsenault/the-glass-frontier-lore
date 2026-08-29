encyclopedia :eighth_seal do
  name "The Eighth Seal"
  summary "An Eighth Seal is a palm-sized ceramic custody record fixed to an object at Clearance Eight. Its eight channels preserve the evidence and public findings behind the object's release, sale, quarantine, return, or continued custody."
  kind :technology
  subkind :record
  status :complete
  topics :governance, :archives, :salvage, :resonance
  prevalence :common
  appears_when all: { place: [:"realm:ring_habitat"] }

  descriptive_identity(
    appearance:
      "A palm-sized ceramic docket with eight radial channels around a " \
      "gray center; when the last channel is impressed the center takes " \
      "the color assigned to release, return, sale, quarantine, or " \
      "continued custody.",
    handling:
      "It rides fixed to the object it records. Each public desk presses " \
      "its finding into one channel with a tuned stylus, and reading " \
      "clockwise gives recovery circumstances, hazards, identity marks, " \
      "route evidence, claim, debts, salvage value, and disposition in " \
      "order. Tangent carries authenticated blanks for retrievals beyond " \
      "the custody docks.",
    risks:
      "A gray center means at least one desk has not signed, and the " \
      "empty channel names which. Because the sequence binds each " \
      "decision to the evidence in place when it was pressed, a seal " \
      "impressed far from the desks records findings those desks never " \
      "witnessed.",
  )

  prose <<~PROSE
    An Eighth Seal is a palm-sized ceramic docket fixed to an object in Clearance Eight's custody. Eight radial channels accept impressions from the settlement's public desks. When every channel is filled, the center changes from gray to the color assigned to release, return, sale, quarantine, or continued custody.

    Each desk presses its finding through a tuned stylus. A reader moving clockwise around the seal receives the object's recovery circumstances, hazards, identity marks, route evidence, claim, debts, salvage value, and final disposition. The sequence binds later decisions to the evidence available at each step.

  PROSE

  cue "Anything a party hands over or recovers in #{ref :clearance_eight}'s custody comes back wearing one. Read clockwise, it gives the hazards, identity marks and route evidence behind the disposition rather than only the color at the center."
  cue "Eight radial channels accept impressions from the settlement's public desks."
  affordance "Push for an early release and the center is still gray: the color arrives only once all eight channels are impressed, so the empty channel names the desk that is refusing to sign."
  pressure "#{ref :tangent} carries authenticated blanks for retrievals beyond the custody docks, so a seal can be pressed far from the desks whose findings it records."
  variation "When every channel is filled, the center changes from gray to the color assigned to release, return, sale, quarantine, or continued custody."
  variation "Before every channel is filled, the center remains gray and the empty channel identifies the desk that has not signed."
end
