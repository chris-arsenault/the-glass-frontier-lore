encyclopedia :closer do
  name "Closer"
  summary "A closer settles what the dead leave open: the undelivered messages, the road-debts, the half-finished work and unresolved quarrels that custom holds must be walked to their ends before an estate can rest. The trade began in the Famine, closing the accounts of the vanished, and every settlement has learned to send for one."
  kind :role
  subkind :community_duty
  status :complete
  topics :"social-structure", :household, :trade
  prevalence :uncommon
  available_globally

  descriptive_identity(
    attire: "Plain traveling dress with the closer's gray armband, worn only while an " \
            "estate is open, and the case of small effects in transit — each tagged with " \
            "its destination and its origin's name — carried with courier custody.",
    tools: "The open book: the estate's unfinished business taken down at the wake from " \
           "everyone who owed or was owed, the family's records, and the factor's folio. " \
           "Each line closed is struck through in the presence of a witness, and the " \
           "struck book goes to the family at the end.",
    manner: "Unhurried, ceremonious about small things, and neutral as a scale; a closer " \
            "delivers a dead man's apology and collects his debts in the same even voice, " \
            "and the trade's discipline is that both arrive."
  )

  cue "At the wake, a figure with a gray armband sits at a side table taking down unfinished business from a quiet queue of neighbors — who was owed, who was promised, which words are still waiting to be carried."
  cue "A season later and two districts away, someone answers the door to a stranger with a tagged parcel and an even voice, and understands from the armband before the first word."
  affordance "The closer converts a death's loose ends into a finite, witnessed list and walks each line to its end — debts paid or forgiven aloud, messages delivered, work handed on — so the living stop carrying the unresolved and the estate can settle in the factor's book as well as the family's."
  pressure "The open book may include a refused apology, a disputed debt, or a message the family wants withdrawn after the wake. The closer records each response and returns any unresolved line to the estate's witnesses."
  variation "Settled districts keep a closer the way they keep a mixer, working between deaths at ordinary trades; the route settlements share circuit closers who ride with the drovers and close a season's estates in one pass."
  variation "Famine-vanished estates set the trade's founding custom, and a few houses still retain closers against the old open books — accounts of the disappeared, held open by families who decline, formally and annually, to close them."

  prose <<~PROSE
    Death interrupts. The message goes undelivered, the road-debt unpaid, the quarrel unresolved, the promised work half-done — and Kaleidos custom, shaped by a catastrophe that interrupted a whole civilization mid-shift, holds that the open lines must be walked to their ends before an estate can rest. The closer is the trade that walks them. Engaged by the family and marked by the gray armband while the estate stands open, the closer sits at the wake and takes the book: everyone who owed or was owed, everything promised, everything unsaid that the sayer wants carried. Then the walking — seasons of it for a wide life — delivering, collecting, forgiving aloud where forgiveness was left in the book, handing unfinished work to the named hands, each line struck through before a witness until the book is all strikes and goes to the family closed.

    The Famine left the accounts of the #{encyclopedia_ref :elves, "elves"} open at every scale — debts to the vanished, work promised by them, words meant for them — and the first closers were clerks and neighbors who carried messages, settled transferable work, and recorded what could not be completed. Houses still retain closers for the oldest open books. Each year the family formally declines to close the account, and the closer reads its remaining lines aloud. Current practice descends from that work: neutral delivery, witnessed strikes, and an even voice for apology and demand alike.
  PROSE
end
