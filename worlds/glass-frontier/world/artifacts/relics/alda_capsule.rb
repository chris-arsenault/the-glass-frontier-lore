artifact :alda_capsule do
  name "Alda Capsule"
  summary "The Alda Capsule is a ceramic message carrier launched from the Alda residential module in 2305 and delivered to Tanel in 2434. Its trip card requests help at a failing nursery seal beyond the surviving tube network."
  subkind :record
  type_of :recording_medium
  recorded 2305
  status :complete
  tags :archives, :transport, :"signal-freq", :mystery
  prominence :marginal

  descriptive_identity(
    appearance:
      "A ceramic message carrier, dry and pressurized, one side abraded " \
      "from repeated gate contact and dusted with fresh ceramic from its " \
      "last junction. It arrived still warm from travel, its mechanical " \
      "clock reading forty-three minutes for a trip launched in 2305 " \
      "and delivered in 2434.",
    handling:
      "Its trip card asks for a pressure crew at a failing nursery seal " \
      "and lists nine tube junctions past Tanel's surviving network; " \
      "crews follow the recorded route while the capsule sits beside the " \
      "Tube Room Six rack. Tube crews lend it out for stuck junctions, " \
      "because its closure ring turns freely in a gate whose other " \
      "moving parts are seized.",
    risks:
      "The clock, the fresh dust, and the gap between launch and " \
      "delivery do not resolve into one account of where the capsule " \
      "has been, and its card points down a line whose far junctions no " \
      "current hull plan covers.",
  )

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
