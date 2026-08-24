incident :disappearance_of_the_elves do
  name "Disappearance of the Elves"
  subkind :migration
  tags :mystery, :archives, :isolation, :"ring-era"
  prominence :recognized
  status :complete
  date 2305
  scale "Every publicly known elven community and individual"

  prose <<~PROSE
    When communication returned after #{elapsed :the_glassfall, :the_rekindling} of Signal Famine, no elven community answered. No settlement reported an elven population and no individual came forward. Elven lifespans rule out ordinary attrition. The disappearance remains a recognized event whose course is reconstructed from absence and damaged records.
  PROSE

  prose <<~PROSE, section: :history, heading: "Across the Famine"
    The Signal Famine lasted less than one elven generation. Communications were already down, records were fragmenting, and communities routinely lost track of one another. Public archives do not record one departure, order, or final settlement. They show elven names and offices becoming less specific until the Reconnection finds none at all.

    The surviving chronology supports a deliberate withdrawal more readily than a population collapse. It does not show where the elves went or whether every community made the same choice.
  PROSE

  prose <<~PROSE, section: :perception, heading: "The Redaction"
    Archives on Kaleidos, isolated ring habs, and outer worlds contain the same kind of gap. Technical documents retain their procedures and lose their authors. Administrative records preserve decisions and omit whole departments. Historical accounts replace named participants with generic descriptions.

    The broad history remains. The elves built the ring and worked throughout its civilization. Individual names, family lines, community records, and locations are missing far more often than the surrounding material.

    The #{ref :echo_rivers, "Echo Rivers"} carry similar damage. Conversations cut to silence and voice signatures flatten into harmonic hum. Deep deposits preserve fragments the alteration did not reach. The #{ref :echo_ledger_conclave, "Echo Ledger Conclave"} catalogs those remnants and has not settled whether the pattern records deliberate removal or an unknown failure concentrated around elven signals.
  PROSE

  prose <<~PROSE, section: :truth, heading: "The Withdrawal", dm: true
    The withdrawal was deliberate. Elven leadership concluded that the #{ref :the_false_form, "False Form"} had destroyed the ring and would return. A visible population would expose the preparations intended to resist it.

    Communities moved into ring fragments running dark, masked their resonance signatures, and removed their routes from surviving navigation systems. Other elves remained in the wider population to move supplies, watch the archives, and prevent later discoveries from revealing the hidden habs.

    The decision was collective and bitterly contested. The preparations were expected to take centuries, and the communities that withdrew understood that they were abandoning public lives, institutions, and relationships that most of them had helped build.
  PROSE

  prose <<~PROSE, section: :implications, heading: "The Scrubbing", dm: true
    The Redaction removed trails rather than history. Elven agents used their existing access to alter written archives, removing names, addresses, family records, and the locations of elven departments while leaving the ring's broad history intact. Resonance specialists overwrote voice signatures in the Echo Rivers with harmonic noise. The work was slow, imprecise, and unable to reach the deepest deposits.

    Time handled living memory. Public figures did not return when signals resumed. People who had known them died while the elves who planned the withdrawal remained alive in hiding. The operation left enough evidence to prove that elves had shaped the system and too little to follow any one of them home.
  PROSE

  gm_note :triggered_by, "Research into any pre-Glassfall technical procedure turns up a document that still works, full method and full tolerances, with the author line generic or gone. The #{ref :echo_ledger_conclave, "Echo Ledger Conclave"} will confirm the gap and will not say whether it was cut out or simply lost."
  gm_note :appears, "Listening deep enough in the #{ref :echo_rivers, "Echo Rivers"} reaches below the flattening: a conversation that does not cut to hum, carrying a voice signature the alteration never touched. The Conclave catalogs every such fragment, and each one reopens its unsettled argument about the pattern."
  gm_note :complicates, "Elves stayed in the general population to watch the archives, so research closing on a real elven location gets noticed before it gets published. The interference arrives as a misfiled requisition, a reassigned archivist, or a folio that was on the shelf last visit."
end

relate :rel_elves_participated_disappearance, :participated_in, :elves, :disappearance_of_the_elves do
  prose "Every publicly known elven population vanished from the returning communication network."
end

relate :rel_disappearance_active_during_signal_famine, :active_during, :disappearance_of_the_elves, :signal_famine do
  prose "The withdrawal and Redaction took place under the cover of the Signal Famine."
end

relate :rel_signal_famine_caused_disappearance, :caused, :signal_famine, :disappearance_of_the_elves, dm: true do
  prose "The Famine did not motivate the withdrawal, but its broken records and communications made the operation possible."
end

moment :elves_vanish, year: 2305, of: :disappearance_of_the_elves do
  prose "When the Reconnection began, no elven community returned to the public network."
  effects { set :elves, standing: :vanished }
end
