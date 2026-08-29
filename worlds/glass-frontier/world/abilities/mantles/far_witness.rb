ability :far_witness do
  name "The Far Witness"
  summary "The Far Witness is a mantle of the Three that follows true events across distance and history through their surviving consequences."
  type_of :revelation
  subkind :the_three
  status :complete
  tags :resonance, :religion, :"signal-freq", :archives
  prominence :recognized
  qualification "Answers someone who has made dangerous evidence public despite a personal reason to conceal it"
  succession "Passes when the bearer deliberately closes their perception and entrusts an unfinished line of evidence to another witness"
  cost "Every person, machine, and resonant presence along an apex observation can perceive the bearer and follow the same evidence back toward them"

  descriptive_identity(
    signs: "Reflections show the bearer facing events outside the room, and people at the observed place see the same face looking back through glass or signal noise.",
    effect: "The bearer can use #{encyclopedia_ref :revelation, "Revelation"} across the Kaleidos system or through centuries of surviving physical consequence.",
    limits: "The mantle reads events rather than intent, cannot see an unrealized future, and finds nothing after every consequence of an event has been erased."
  )

  prose <<~PROSE
    The Far Witness can look from a scored wall to the weapon that marked it, from the weapon to the hand that held it, and from that hand through every surviving consequence of the act. Distance does not interrupt the path. A true line of evidence can carry the bearer from a present wreck to the moment of its breaking or from one weak signal to the place that sent it.

    Tessellan teaching places the mantle on the unfigured signal path between Form and Will. The event is Form: the fact that occurred. Following it is Will: the choice to look despite what may answer. The Far Witness does not pronounce truth. The bearer sees light, motion, pressure, speech, and damage, then must still decide what those facts establish.
  PROSE
  prose <<~PROSE, section: :dangers, heading: "Seen in Return"
    Nothing viewed by the mantle remains unaware of observation. A person sees the bearer's face in a polished surface. A machine records their pulse as an unauthorized signal. A resonance-sensitive presence can follow the observation backward through the same chain of evidence. Looking into an ambush may warn its killers exactly where the warning is being received.

    Succession begins when a bearer chooses to stop looking. They must name the unfinished evidence and give it to another person without telling that person what conclusion to reach. The mantle has refused heirs asked merely to confirm an answer their predecessor already wanted.
  PROSE

  gm_note :complicates, "The Far Witness can answer what happened somewhere inaccessible, but the observed adversary immediately gains a trace back to the witness and everyone standing near them."
end

relate :rel_far_witness_resonates_triptych, :resonates_with, :far_witness, :the_tessellan_triptych
