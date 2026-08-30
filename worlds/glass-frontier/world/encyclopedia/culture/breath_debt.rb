encyclopedia :breath_debt do
  name "Breath Debt"
  summary "Breath Debt is the shared-air accounting of the ring habitats: when one district draws on another's stored air through a lung repair or a closure, the draw is measured, entered, and owed — in air, at need, whenever the ledger turns. It is the debt no hab jokes about and none refuses."
  kind :culture
  subkind :material_life
  status :complete
  topics :"ring-hab", :household, :governance, :danger
  prevalence :uncommon
  appears_when all: { place: [:sealed_hab] }

  descriptive_identity(
    manner: "Air accounts are spoken of in the flat exact register other cultures keep " \
            "for blood debts — draws are 'taken' and 'returned,' and returning is the " \
            "only settlement the ledger knows — and the phrase 'we breathe on their " \
            "ledger' states a district's deepest obligation in plain words.",
    hospitality: "A district breathing on borrowed stores posts the fact at its gates by " \
                 "custom, and guests during a draw eat well and exercise lightly — the " \
                 "household courtesy of spending someone else's air slowly."
  )

  prose <<~PROSE
    Air in a sealed hab is the one stock that admits no substitutes, and the ring settlements long ago worked out how to owe it. Breath debt is the accounting: when a district's #{encyclopedia_ref :bell_lung_colossus, "lung"} fails or its shafts close for repair, it draws on its neighbors' stored air — valves opened between districts, the draw metered at the boundary — and the measured volume enters the ledgers as debt of the specific kind. Air debt is repaid in air. The owing district returns the volume at the lender's need, whenever that need arrives, and the ledgers run for generations because the need runs on its own schedule: a draw taken in a grandmother's repair season may be returned in a grandchild's closure, at the same boundary valve, entered against the same line.

    The custom's absoluteness is its point. Air debts survive feuds, annexations, and the collapse of every other account between districts — the Verathi registry carries breath ledgers unbroken from the Famine, and the famous entries are taught: the districts that opened their valves to strangers in the dark years, the debts repaid across the system decades later by settlements meeting their creditors' heirs for the first time at the valve. Defaulting is the ring culture's one unthinkable, discussed the way coastal cultures discuss wrecking, and the moral weight travels into the language — 'we breathe on their ledger' binds a district's honor, and the gravest thing one hab says of another, said rarely and after much provocation, is that they would count breath.
  PROSE

  cue "At the district boundary, the old brass draw-valve carries its meter and its ledger box, and the current entries are in two hands — the draw in one district's ink, the acknowledgment in the other's."
  cue "The gate board posts 'breathing on Fourth District's ledger, day nine' below the ordinary notices, and the market inside is visibly, courteously unhurried."
  affordance "The ledgers make catastrophe survivable by prearrangement — a failing district draws first and accounts after, on a custom every neighbor honors — and the standing debts bind districts across every other quarrel they keep."
  pressure "Air returns at the lender's need on the lender's schedule, so a district carrying old debt lives with a claim that can arrive in its own worst season — and the ledger's honor culture means it will be paid then anyway."
  variation "Adjacent districts settle small draws seasonally at the valve; the great Famine-era debts are carried as permanent honors, acknowledged annually, both parties preferring the bond to the balance."
  variation "Verathi's registry archives breath ledgers with the civil record, and its clerks maintain the system's one actuarial table everyone hopes stays sparse — the return-need intervals, by cause, since the Famine."
end
