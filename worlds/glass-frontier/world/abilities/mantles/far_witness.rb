ability :far_witness do
  name "The Far Witness"
  summary "The Far Witness is a mantle of the Three that carries Witnessing across centuries of consequences and Elsewhere across any present distance in Kaleidos."
  type_of :witnessing
  subkind :the_three
  status :complete
  log "2026-08-31 — Distinguished historical Witnessing from present-tense Elsewhere; the mantle carries either form of observation across the system and answers the bearer to everyone along it."
  tags :resonance, :religion, :"signal-freq", :archives
  prominence :recognized
  qualification "Answers someone who placed dangerous evidence in a public record together with the fact that implicated them"
  succession "Passes when the bearer deliberately closes their perception and entrusts an unfinished line of evidence to another witness"
  cost "Observation is reciprocal: people, machines, and resonant presences along a distant or historical trace can perceive the bearer and follow the evidence back toward them"

  descriptive_identity(
    signs: "Old light and sound return through present surfaces, the bearer's eyes answer another place, and people or machines along the trace receive the bearer's face or pulse in return.",
    effect: "The mantle extends #{encyclopedia_ref :witnessing, "Witnessing"} through system-wide chains of consequence and #{encyclopedia_ref :elsewhere, "Elsewhere"} beyond the ordinary spell's single anchored viewpoint.",
    limits: "Historical work requires a surviving consequence; present observation requires a known live anchor. Neither supplies private intent, an unrealized future, or perception without an answering trace."
  )

  question "Who is the present or most recently attested Far Witness, and which unfinished line of evidence passed with the mantle?", raised: "2026-08-31"

  prose <<~PROSE
    The Far Witness begins with material that participated in an event and carries the same perception through a connected chain of consequences. A present wreck can lead to its breaking; a copied record can lead through centuries of damage, custody, and transcription; a known person, object, or live signal can carry the account to a distant place.

    The trace gives sensation: light, movement, pressure, speech, heat, and damage. It supplies no name for an unfamiliar face and no judgment about which speaker believed their own words. Courts and archives therefore preserve a Far Witness account with the object, place, or signal that opened it and keep observation separate from the conclusion drawn afterward. A witnessed replay can be compared with #{encyclopedia_ref :binding, "Binding"}; neither practice turns inference into evidence.
  PROSE
  prose <<~PROSE, section: :perception, heading: "The Answering Trace"
    Observation travels both ways. A person at the far end sees the bearer in polished metal. A machine records the bearer's pulse as an unauthorized return. Resonance-sensitive creatures turn toward the watcher, and another reader can enter the same trace and follow it back. A long search removes awareness from the room around the bearer; a system-spanning observation can expose everyone standing near them to the observed place.

    Tessellan copies place the Far Witness on the open signal path between Form and Will: an event occurred, and someone chooses to follow what it left behind. A claimant qualifies by making dangerous evidence public together with the part that implicates them. Succession begins when the bearer closes their own perception and entrusts an unfinished trace to another witness without supplying its conclusion.
  PROSE

  gm_note :triggered_by, "When the group examines an object, body, place, or signal that participated in an event, the Far Witness can recover sensory evidence and follow any surviving consequence onward from it."
  gm_note :complicates, "Distant observation is reciprocal: a person sees the bearer in reflection, a machine logs their pulse, and another resonance reader can follow the same trace back to the bearer and everyone nearby."
end

relate :rel_far_witness_resonates_triptych, :resonates_with, :far_witness, :the_tessellan_triptych
