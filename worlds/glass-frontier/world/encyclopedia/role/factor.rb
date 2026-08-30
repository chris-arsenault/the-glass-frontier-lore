encyclopedia :factor do
  name "Factor"
  summary "A factor keeps a market's credit: holding accounts between crews, settlements, and seasons, advancing against cargo and harvest, and clearing the debts of the road at the fairs. The trade rose from the Famine's barter ledgers, and a factor's book is a market's memory of who is good for it."
  kind :role
  subkind :profession
  status :complete
  topics :trade, :"social-structure"
  prevalence :common
  appears_when any: { place: [:market, :dock, :urban] }

  descriptive_identity(
    attire: "Sober trade dress with the factor's counter-seal worn on a fob, and ink on the " \
            "right hand as a permanent professional feature; the book itself travels in a " \
            "locked satchel kept under the factor's forearm through every fair day.",
    tools: "The book — accounts in the factor's certified hand, one folio per standing " \
           "client — the counter-seal for clearing marks, the scales the office keeps by " \
           "custom, polished and mostly idle, and the fair-day table with its " \
           "queue etiquette.",
    manner: "Discreet as a doorward and exact as a recaller; a factor quotes a client's " \
            "position to the client alone, remembers every cleared debt with courteous " \
            "vagueness, and prices character with the same straight face as cargo."
  )

  cue "At the fair-day table the factor works down a queue of crews, each transaction a murmur, a line in the book, and a pressed clearing mark, while the locked satchel sits under the factor's forearm."
  cue "Two carriers settle a road-debt from opposite ends of the system with nothing but names, dates, and the factor's counter-seal on a slip."
  affordance "A factor's book turns scattered obligations into usable credit — advances against cargo and harvest, road-debts cleared across districts by corresponding factors, and a season's dealings compressed into a standing the whole market can transact on."
  pressure "A factor's estimate changes the terms offered to a client across the market. The trade keeps those estimates private and makes changes visible through the next advance, clearing limit, or requested security."
  variation "Market factors clear the daily trade and the fairs; the dock factors run correspondent networks along the carrier lines, and a crew's standing travels between them faster than the crew does."
  variation "Factor houses in the capital examine and certify the trade's hands like the registries they resemble; frontier factors are made by a market's consent and unmade by its memory."

  prose <<~PROSE
    A factor keeps accounts between parties who cannot settle now — the crew paid in shares of a cargo two months out, the farm advanced against a harvest, the road-debt owed from last season's rescue on the far side of the system — and the factor's book makes the obligations liquid: entries in a certified hand, cleared with the counter-seal, honored between corresponding factors along every carrier line. The trade rose from the Famine's barter ledgers, when keepers of community books became the people through whom a cut-off settlement's promises could circulate. The profession keeps the locked satchel, the murmured transaction, and the polished scales on the counter from that work.

    The book's deep asset is judgment. A factor prices character with cargo — which crews deliver, which harvests come in, whose word survives a bad season — and the accumulated estimate is the standing a market transacts on. Standing is quoted to its owner alone, moved between factors in the trade's famously dry correspondence, and adjusted in public by nothing more visible than the terms of the next advance; the raised eyebrow at the fair-day table is the trade's entire vocabulary of alarm, and markets read it like a #{encyclopedia_ref :town_tone, "tone"} shift.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Clearing, Correspondence, and the Fair"
    The great clearings happen where the trade gathers: descent fairs, the tide-ebb market days, the season's-end settlements when the drovers' cords and the carriers' books come to the table together. A clearing compresses a district's tangle of obligation into net positions and pressed marks, the factor's percentage prices the service, and the days after a big clearing are the market's true new year — standings adjusted, advances renewed, and the next season's ventures priced against the freshly settled book.

    Correspondence binds the local books into a system. Factors keep certified relationships along the routes — hands examined, seals exchanged, liabilities bounded in contractual prose — so a debt of the road contracted at a Dovra ford clears at a Keelward counter a season later on a slip and a seal. A factor whose marks come back disputed answers to every correspondent at once. Trade histories preserve the named failures with the dates, liabilities, and clearing marks that exposed them.
  PROSE
end
