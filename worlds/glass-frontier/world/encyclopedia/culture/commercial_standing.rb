encyclopedia :commercial_standing do
  name "Commercial Standing"
  kind :culture
  subkind :collective_standing
  status :complete
  topics :trade, :governance, :"social-structure"
  prevalence :uncommon
  appears_when any: { place: [:market, :dock] }
  summary "Commercial standing is the witnessed trading record that lets a house, crew, or factor obtain credit and contracts in ports where its principals are unknown. Open ledgers, posted settlements, and letters of standing carry that record between markets."
  integration "Port courts enforce signed contracts; commercial standing determines who receives an offer, how much credit is extended, and whether another house will introduce the trader"
  formal_register "Standing is invoked in fixed forms — a house 'trades on its books', a factor 'stands behind' a deal, a letter of standing is 'presented' — and the phrase 'their books are open' remains the trade's highest plain compliment"

  descriptive_identity(
    manner: "Houses preserve standing through witnessed settlements, early " \
            "arbitration, prompt disclosure of bad news, and ledgers open to " \
            "questions at the counting table.",
    appearance: "The open ledger at the counting table, sealed letters of " \
                "standing, and the settlement board where a house posts the " \
                "terms and witnesses of concluded disputes.",
    hospitality: "A recognized letter gives its bearer the sender's access to " \
                 "the receiving house: a place at the table, a hearing, and " \
                 "credit within the amount written in the letter."
  )

  prose <<~PROSE
    #{encyclopedia_ref :elves, "Elven"} registries once identified every party to a ring trade. After the Glassfall, merchants replaced that shared record with witnessed settlements kept house by house. A standing house opens its ledger to questions at the counting table, posts concluded disputes with their witnesses, and submits disagreements to an arbitration bench. A sealed letter of standing names the bearer, the credit or introduction offered, and the house that answers for it. The receiving factor annotates the result before returning the letter.

    #{encyclopedia_ref :factor, "Factor"} houses compare letters with their own standing books and the published dockets of arbitration benches. A walked debt or shaded manifest remains lawful to pursue through court but makes new contracts and credit scarce at other ports. Restoration begins with full witnessed payment, continues through a season of small settled contracts, and requires an established house to write the first new letter. *Their books are open* is the trade's plain statement that a house expects its record to bear inspection.
  PROSE

  cue "The stranger presents the letter of standing at the counting table, the factor reads seal and annotations, and the credit extends on the spot — the sender's reputation working three routes from home."
  cue "The house posts its concluded dispute on the settlement board with terms and witnesses listed; morning visitors compare it with the open ledger before offering new work."
  affordance "A recognized letter of standing opens a distant counting table to credit, introductions, and contracts backed by the sender's witnessed record."
  pressure "A walked debt or shaded manifest follows the house through standing books after the court matter ends; restoration requires witnessed repayment and a new sponsor."
  variation "Great houses trade on generations of standing and write letters that open any port; young crews build theirs contract by contract, and the factors' standing books track both with the same cold columns."
  variation "Port cultures weight the instruments differently: dock country reads settlement boards, orbital exchanges read arbitration dockets, and river towns judge a letter by the hand that returns it annotated."
end
