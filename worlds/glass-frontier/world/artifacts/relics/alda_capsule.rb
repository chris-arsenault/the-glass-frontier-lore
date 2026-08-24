artifact :alda_capsule do
  name "Alda Capsule"
  subkind :record
  recorded 2305
  status :complete
  tags :archives, :transport, :"signal-freq", :mystery
  prominence :marginal

  prose <<~PROSE
    In 2434, #{ref :tanel, "Tanel"} received a ceramic message carrier dispatched from the Alda residential module in 2305. Its trip card requests a pressure crew for a failing nursery seal and lists nine tube junctions beyond Tanel's surviving network. The capsule arrived dry, pressurized, and warm from travel. Its mechanical clock recorded forty-three minutes between launch and delivery, while one side carried abrasion from repeated gate contact and fresh ceramic dust from the final junction.

    Tanel keeps the capsule beside the Tube Room Six rack while crews follow its recorded route. Its closure ring fits the newly opened Alda line and turns freely in a gate whose other moving parts remain fixed in place.
  PROSE

  gm_note :appears, "The capsule sits beside the Tube Room Six rack with its trip card readable, so anyone passing through can see it asking for a pressure crew at a failing nursery seal and listing nine junctions past the end of Tanel's hull plan."
  gm_note :triggered_by, "Its closure ring turns freely in a gate whose other moving parts are seized, so a party that meets a stuck junction will try the capsule on it, and the tube crews will lend it out for precisely that."
  gm_note :complicates, "The clock inside reads forty-three minutes between a launch in 2305 and a delivery in 2434, and the ceramic dust on its abraded side is fresh; a theory that covers only one of those gets sent back down the line to be tested."
end
relate :rel_tanel_possesses_alda_capsule, :possesses, :tanel, :alda_capsule, since: 2434 do
  prose "Tanel holds Alda Capsule at Tube Room Six and uses its trip card to trace the reopened line."
end


relate :rel_alda_capsule_attuned_to_resonance, :attuned_to, :alda_capsule, :resonance do
  prose "The capsule's ceramic and gate clock carry the signal-band handshake of the Alda line."
end
