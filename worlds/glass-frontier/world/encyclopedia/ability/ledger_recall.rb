encyclopedia :ledger_recall do
  name "Ledger Recall"
  summary "Ledger Recall is a mnemonic discipline that binds passages of a spoken account to distinct pulses in the speaker's wrist, letting a trained holder carry a contract, testimony, or inventory verbatim for years and replay it under witness. Courts accept a recaller's recitation the way they accept a sealed page."
  kind :ability
  subkind :technique
  status :complete
  topics :archives, :training, :trade
  prevalence :uncommon
  available_globally
  function "Carries long spoken accounts verbatim, bound passage by passage to trained wrist pulses, for witnessed replay"

  descriptive_identity(
    signs: "Taking an account, the recaller holds one wrist in the other hand and works the " \
           "fingers through a slow drummer's pattern as the speaker talks. Replaying, the " \
           "same pattern runs in the same order, and the voice that comes out carries the " \
           "original's pauses and corrections intact.",
    effect: "Each passage binds to a distinct pulse — a finger, a pressure, a count — and the " \
            "sequence becomes the document's spine. A trained holder carries an evening's " \
            "testimony or a season's inventory for years and replays it whole, in order, " \
            "on demand.",
    limits: "The binding is bodily and the body is the archive: a recaller replays through " \
            "injury, exhaustion, and grief with degraded fidelity the discipline trains them " \
            "to declare, and the honest phrase 'my wrist is tired' adjourns hearings " \
            "system-wide."
  )

  prose <<~PROSE
    Where the record must travel in a person, the person trains. Ledger recall descends from the #{encyclopedia_ref :elves, "elven"} clerical schools — the ring's registries examined human clerks in it, and the examination texts survive — and the Famine made it a survival craft: with the relays dark and the archives cut off from each other, accounts crossed the system in trained wrists. The discipline binds a spoken account passage by passage to distinct pulses of the recaller's own wrist, worked through a drummer's finger pattern as the account is taken. The pattern becomes the document's spine. Run it again — tomorrow, or in ten years — and the account replays whole: words, order, the original's pauses and self-corrections, delivered in the flat careful voice recallers call reading aloud from the arm.

    The trade's standing is juridical. Courts, registries, and freight houses accept a certified recaller's witnessed replay as they accept a sealed page. Certification tests verbatim fidelity across seasons, replay under distraction, and accurate recognition of impairment. Injury, exhaustion, and grief degrade recall; the oath requires the recaller to declare that change. The formal statement 'my wrist is tired' adjourns proceedings without prejudice.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Holders, Hearings, and the Third Wrist"
    Working recallers cluster where records must move or multiply. Carrier lines keep one on the long routes, holding manifests and the season's contracts between archives. Courts keep a bench recaller for testimony taken where no clerk can go. For the registries' third-wrist practice, two recallers take the same consequential account while a clerk makes a paper copy. Registries log and study every discrepancy among the three records.

    Training runs young, since the binding takes best in a wrist still learning its patterns. Recaller families and clerical schools start children on nursery accounts — a rhyme bound and replayed across a winter. For the traditional examination, the candidate takes a full market-day's disputes at the bench, sleeps, and replays them to the magistrates in order, including the original hesitations.
  PROSE

  cue "Taking testimony, the clerk holds one wrist in the other hand, fingers working a slow pattern against the pulse, eyes closed to a concentration the whole room respects."
  cue "The replay carries the dead witness's pauses and false starts intact, and the court reporter writes down the hesitations too, because they are part of the record."
  affordance "A certified recaller is a walking sealed document — testimony, contract, or manifest carried verbatim for years through places paper can't go, and replayed under witness with legal standing in any registry in the system."
  pressure "The archive is a living body: injury, exhaustion, and grief degrade fidelity, the oath compels the recaller to declare it, and a case built on one tired wrist adjourns at two words from the witness stand."
  variation "Carrier-line recallers hold manifests and route contracts; bench recallers hold testimony; and the registries' third-wrist custom pairs two recallers with a paper copy for anything that must outlive argument."
  variation "Recaller families start children on bound nursery rhymes, and the old examination — a market-day's disputes replayed whole to the magistrates — still closes every certification."
end
