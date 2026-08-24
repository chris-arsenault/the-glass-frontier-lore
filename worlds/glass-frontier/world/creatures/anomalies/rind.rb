creature :rind do
  name "Rind"
  subkind :animal
  tags :ecology, :resonance, :orbital, :danger, :mystery
  prominence :marginal

  prose <<~PROSE
    A large Deep Shear animal that follows sustained resonance gradients. Deep-runners call it a rind for the pale shell enclosing most of its body. The specimen now holding near #{ref :outside, "Outside"} is the first recorded beside an active Bloom cordon.

    It moves slowly and shows no aggressive response to ships or people. Its danger comes from scale. The animal wants the same stable signal that keeps the cordon calibrated, and the filaments trailing from its shell can disrupt tuned ringglass on contact.
  PROSE
  prose <<~PROSE, section: :description, heading: "Body"
    A rind is roughly the size of a small courier kite. An opaque pale-grey carapace encloses most of the body. Irregular crystal inclusions catch bands of light visible to #{ref :tuners, "Tuners"} and appear dull to everyone else.

    Dozens of hair-fine filaments trail ten to fifteen meters behind the shell. They drift independently, producing a harmonic at the edge of hearing. A filament touching active ringglass sets up a sympathetic response through both materials. The animal survives the contact while the array mount can remain out of calibration for hours.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Gradient Following"
    A rind advances along a resonance gradient at walking speed or slower. It can hold position for days when the source remains steady. If the source weakens, it circles outward until it finds the line again.

    Deep-runners redirect them with a counter-tone placed beyond the desired route. The work takes patience and a clear field. Striking the shell scatters the filaments and creates more contacts, so experienced crews keep weapons cold unless the animal is already inside a structure.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "At Outside"
    The Karet wall array has given one rind a fixed orientation point. It holds about three hundred meters from the station, between the boundary walk and the visible edge of Karet-3. Its path changes when the array recalibrates.

    Council teams are preparing a series of counter-tones to draw it back toward the Deep. The station's permanent residents watch from the maintenance bay. Some have begun marking its daily position beside the cordon readings.
  PROSE

  gm_note :appears, "The animal arrives at whatever holds a steady tone: a wall array, a mooring beacon, a rig left sounding overnight. " \
                    "Cutting the source does not send it away; it circles outward hunting the line, which spreads it across more of the site than before."
  gm_note :complicates, "Filaments trail ten to fifteen meters behind the shell and drift on their own, so a rind at a comfortable distance can still lay a strand across tuned ringglass. " \
                        "The animal is unharmed and the array mount stays out of calibration for hours."
  gm_note :triggered_by, "Shooting it enlarges the problem: the shell scatters the filaments, and every scattered strand is another contact. " \
                         "Deep-runners keep weapons cold and place a counter-tone beyond the route they want, which needs patience, a clear field, and hours nobody has."
end

relate :rel_rind_inhabits_deep_shear, :inhabits, :rind, :deep_shear do
  prose "Rinds follow long resonance gradients through the #{ref :deep_shear, "Deep Shear"}."
end
relate :rel_rind_embodies_farborn, :embodies, :rind, :farborn do
  prose "Ratter bestiaries place the rind among the passive gradient-following #{ref :farborn, "Farborn"}."
end
relate :rel_rind_resonates_liras_wall, :resonates_with, :rind, :liras_wall do
  prose "The animal follows the stable signal produced by the local deployment of #{ref :liras_wall, "Lira's Wall"}."
end
relate :rel_rind_resonates_karet_three, :resonates_with, :rind, :karet_three do
  prose "At Outside, the rind tracks the resonance gradient around the #{ref :karet_three, "Karet-3"} boundary."
end
relate :rel_rind_at_outside, :located_in, :rind, :outside, since: 2435 do
  prose "One specimen currently holds position beyond #{ref :outside, "Outside"}."
end
