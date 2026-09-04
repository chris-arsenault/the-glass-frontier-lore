encyclopedia :shared_road do
  name "The Shared Road"
  summary "The Shared Road is the shared body of carrier rules that keeps loads recoverable, hazards visible, and custody legible when machinery or routes fail. It descends from the ring's transit code, rewritten by people who had watched the transit stop."
  kind :culture
  subkind :governance
  status :complete
  log "2026-08-31 — Renamed Road and Freight Law to The Shared Road; the name makes the carrier network a common obligation rather than a legal category."
  topics :trade, :transport, :governance, :danger
  prevalence :common
  available_globally

  descriptive_identity(
    manner: "Freight people talk in thirds and manifests — what went in, what must come back, " \
            "what stands in reserve — and treat a clean handoff as the basic courtesy of the " \
            "trade, owed even between rivals.",
    hospitality: "A stranded crew is fed and helped to recover its load under the same rules " \
                 "everywhere, and the ledger entry for the help travels home with the crew as " \
                 "a debt of the road."
  )

  prose <<~PROSE
    Freight law measures a load by the trouble it can cause after the carrier stops working. Cargo must be divisible or rigged for recovery, dangerous heat and pressure must remain visible from outside the housing, and each handoff must leave the next crew enough information to refuse the load safely. Powered capacity determines what a machine can lift. Route law determines what everyone behind it may have to move.

    The code's ancestry is the ring's own transit law, and the inheritance shows in the vocabulary — manifests, sections, clearances — but the Glassfall rewrote its soul. The ring's code assumed the network; the surviving code assumes the network fails, and every rule bends toward the day the carrier sits dead on the route. The reserve rule is the plainest case: a crew provisions in thirds, a third out, a third home, a third held against trouble, and a carrier that burned its reserve to make a date answers for it at the next yard whether or not trouble came. Famine-era crews wrote the thirds into custom with their own funerals, and the yards have held the line since.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Recovery, Refusal, and the Shared Road"
    The rules are shared more widely than any enforcing authority. Road settlements care about clearing a failed carrier; docks care about accepting a load with its history legible; workshops care about the unrecorded interval between mine and floor. Local acts choose weights, gauges, markings, and penalties. The common burden stays with the carrier that knows the cargo and can still choose how it travels — and with the handoff, which must leave the receiving crew able to refuse. A refusal under the code is a protected act: the crew that turns away an unreadable load keeps its standing, and the shipper that dressed the load answers for the delay.

    Recovery is the code's public face. A dead carrier on a shared route belongs, temporarily, to everyone behind it, and the recovery rules ration the obligation: who moves what, in what order, and how the costs ride home with the rescued crew as a debt of the road. Districts honor those debts because each crew may enter the same ledger at the next bad ford.
  PROSE

  cue "A dead hauler sits on the shoulder with its cargo already broken into carry-lots, each lot tagged with the manifest line it came from, and the crews moving past each take one."
  cue "At the handoff the receiving crew reads the load history aloud back to the sender before touching a strap, and both sides treat the recitation as the signature."
  affordance "Under the code, a crew can refuse an unreadable load with its standing intact, recover a stranded cargo by the posted order, and carry a debt of the road home to be honored a season later in another district."
  pressure "A valuable load fits the machine and misses the route rule, inviting everyone to treat likely success as proof of lawful carriage — and the crew that burns its reserve third to make a date answers at the next yard either way."
  variation "Surface roads emphasize hand recovery and divisible loads; docks emphasize external readings and clear transfer records."
  variation "Districts set their own penalties, and freight crews rank towns by them; a heavy-fine town reads as a place that enforces recovery and reserve rules closely."
end
