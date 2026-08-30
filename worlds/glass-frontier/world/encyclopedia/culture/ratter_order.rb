encyclopedia :ratter_order do
  name "Ratter Order"
  summary "Ratter Order is the unwritten body of salvage law, debt, rescue obligation, and flotilla authority observed by independent crews in the Shear."
  kind :culture
  subkind :social_order
  status :draft
  topics :salvage, :navigation, :trade, :"social-structure", :orbital
  prevalence :uncommon
  appears_when all: { place: [:debris_field] }

  prose <<~PROSE
    Ratter order rests on crews that keep their own ships, claims, and hauls while depending on one another to survive the Shear. A long-rat can settle a dispute because other captains trust the charts, debts, and rescue history behind the judgment. The office has no appointment, seal, or permanent jurisdiction. Authority lasts only while crews continue to bring their disagreements to it.

    Two obligations outrank local claim practice. A material debt is repaid in kind, however long it takes, and a distress call is answered by any crew able to reach it. Claim marks, crossing records, open cutting warrants, and abandoned hazards vary from flotilla to flotilla. A crew may argue every one of them and still remain inside Ratter order. Walking a debt or refusing reachable distress puts the crew outside it.
  PROSE

  cue "Crew marks, claim ledgers, and old rescue debts are inspected before anyone asks which written authority applies."
  affordance "A crew with a witnessed debt, a clean crossing record, or an unanswered distress call can demand a hearing from captains who otherwise owe it nothing."
  pressure "The order has no central archive or enforcement arm, so a respected captain's memory can protect a small crew or erase it."
  variation "Flotillas disagree over claims and salvage shares; debt paid in kind and aid to reachable distress remain the common boundary."
end
