encyclopedia :breath_debt do
  name "Breath Debt"
  summary "Breath Debt is the shared-air accounting of the ring habitats: when one district draws on another's stored air during a lung repair or closure, the draw is metered and entered for return in air when the lending district needs it."
  kind :culture
  subkind :material_life
  status :complete
  topics :"ring-hab", :household, :governance, :danger
  prevalence :uncommon
  appears_when all: { place: [:sealed_hab] }

  descriptive_identity(
    manner: "Air accounts use an exact register: draws are 'taken' and 'returned,' " \
            "volumes and boundary valves are named, and the phrase 'we breathe on their " \
            "ledger' states which district supplied the current store.",
    hospitality: "A district breathing on borrowed stores posts the fact at its gates by " \
                 "custom, and guests during a draw eat well and exercise lightly — the " \
                 "household courtesy of spending someone else's air slowly."
  )

  prose <<~PROSE
    Air in a sealed hab is the one stock that admits no substitutes, and the ring settlements long ago worked out how to owe it. Breath debt is the accounting: when a district's #{encyclopedia_ref :clocks, "clock"} fails or its shafts close for repair, it draws on its neighbors' stored air — valves opened between districts, the draw metered at the boundary — and the measured volume enters the ledgers as debt of the specific kind. Air debt is repaid in air. The owing district returns the volume at the lender's need, whenever that need arrives, and the ledgers run for generations because the need runs on its own schedule: a draw taken in a grandmother's repair season may be returned in a grandchild's closure, at the same boundary valve, entered against the same line.

    Breath entries survive feuds, annexations, and the closure of every other account between districts. The Verathi registry carries ledgers unbroken from the Famine, including draws opened to strangers in the dark years and returned decades later by settlements meeting their creditors' heirs for the first time at the same valve. These entries are taught with valve work and registry practice. The language carries the obligation outside the ledger: 'we breathe on their account' names a present dependency, while saying that a district would count breath accuses it of treating emergency air as ordinary trade.
  PROSE

  cue "At the district boundary, the old brass draw-valve carries its meter and its ledger box, and the current entries are in two hands — the draw in one district's ink, the acknowledgment in the other's."
  cue "The gate board posts 'breathing on Fourth District's ledger, day nine' below the ordinary notices, and the market inside is visibly, courteously unhurried."
  affordance "The ledgers make catastrophe survivable by prearrangement — a failing district draws first and accounts after, on a custom every neighbor honors — and the standing debts bind districts across every other quarrel they keep."
  pressure "A breath entry falls due when the lending district needs the return, so an old draw may be called during the owing district's own repair or closure season."
  variation "Adjacent districts settle small draws seasonally at the valve; the great Famine-era debts are carried as permanent honors, acknowledged annually, both parties preferring the bond to the balance."
  variation "Verathi archives breath ledgers with the civil record, and its clerks tabulate return-need intervals by cause from the Famine onward."
end
