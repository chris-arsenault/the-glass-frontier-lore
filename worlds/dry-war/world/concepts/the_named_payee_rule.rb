concept :the_named_payee_rule do
  name "The Named Payee Rule"
  tags :trade, :identity, :legibility, :dependency, :governance
  prominence :recognized

  prose <<~PROSE
    A #{ref :market, "Market"} payment rule issued in 2056: money owed for work may leave reserve only through the recognized identity of its beneficial claimant. A completion receipt proves that a debt exists and fixes its amount. It is not a bearer instrument and cannot by itself prove who should receive the money.

    Market issued the rule after buyers and payment brokers began purchasing unsettled receipts for a fraction of their value. The sales cleared the employer's account while diverting support owed to registered children and other dependents. The rule bars assignment, pays those obligations first and leaves a claim open rather than returning an unpaid balance to the buyer.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "Recognition"
    The identity record must connect the claimant to the accepted work and survive a query by the claimant's guardian. A damaged record may be repaired. A duplicated record must be separated. Witnesses and bodily presence may support the repair, but neither can replace the recognized identity.

    Most Managed workers encounter the rule when it directs part of a payment to their dependents, and disputes usually concern the amount. #{ref :the_receipt_holders, "The Receipt Holders"} petition for a witnessed division when several unrecognized bodies can demonstrate the same work. Market continues to classify that evidence as insufficient protection against coerced assignment and duplicate payment.
  PROSE
end
