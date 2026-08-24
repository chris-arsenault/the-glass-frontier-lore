phenomenon :drawdown do
  name "Drawdown"
  summary "Drawdown is the weakening of a local resonance field when use drains it faster than it recovers, reducing power across connected ringglass."
  subkind :physical_phenomenon
  medium "Local ambient fields carried through ringglass and ringglass-bearing material"
  hazard "Loss or distortion of resonance-powered heat, thrust, signal, and structural support"
  tags :resonance, :ringglass, :danger, :household
  prominence :recognized

  prose <<~PROSE
    Drawdown occurs when use drains a local ambient field faster than it recovers. The ringglass remains physically present and retains its tuning, but its response weakens. Broad-band devices lose output first: a heater cools, a lantern dims, a signal set sheds distance. Continued draw can leave one known band effectively silent while the others remain usable.

    People describe a depleted place as flat, thin, or quiet. Those words refer to different senses. An attuned person may feel an expected pressure vanish from a wall. A mechanic may hear a machine's ordinary vibration without the second tone carried through its ringglass. Everyone else notices the work no longer matching the device: water takes longer to heat, a lift strains under a familiar load, or a room loses the firmness supplied by structural reinforcement.
  PROSE
  prose <<~PROSE, section: :how_it_works, heading: "The Shape of a Draw"
    Drawdown follows conductive material rather than a neat radius. Dense ringglass, crystal-bearing stone, and water carrying fine crystal can join equipment that appears separate. A heavy kinetic draw at one end of such a path reduces what remains available along it. Cracks, dry gaps, and differently tuned sections slow or divert the effect.

    The field does not always weaken evenly. A broad application may continue working while a more focused device fails because its usable frequency has gone quiet. As the gradient changes, active ringglass begins drawing from adjacent material. This can move the first visible failure away from the machine consuming the resonance.

    The #{ref :vashtenri_thesis, "Vashtenri Thesis"} describes these coupled fields from maintenance records and repeated surveys. Its model predicts the movement of ordinary draws through mapped ringglass. Recovery itself remains less well described. Instruments can measure the field returning from its edges and through conductive seams; surviving records have not established where the ambient energy resides between those measurements.
  PROSE
  prose <<~PROSE, section: :applications, heading: "Living with a Finite Field"
    Settlements learn the capacity of their local field through use. Workshops know which household lines weaken when the cutters start. Kitchens keep a non-resonant hot surface for the end of a heavy shift. Hab crews place essential signal and structural systems on separate ringglass paths where the structure permits it. A new refinery or concentrator changes these arrangements even when it brings its own crystal, because the new array can reach into material already carrying other work.

    Recovery can take hours in a rich, well-connected field and much longer in a sparse or heavily drained one. Portable ringglass does not refill a place by itself. Fresh crystal can provide another conductive path or a reserve held outside the depleted field, but crystal left in contact with the local substrate settles toward the same weak response.

    This makes timing part of ordinary infrastructure. Energy-intensive work moves to periods when household demand is low. Kites arriving at a quiet habitat keep enough independent thrust to leave again. Remote settlements store heat, pressure, and charge in ordinary physical forms because a resonance reserve connected to the same field is only another claimant on that field.
  PROSE
  prose <<~PROSE, section: :dangers, heading: "Failure Signs"
    Drawdown is usually gradual enough to catch. A #{ref :tuning_compass, "tuning compass"} turns toward the strongest remaining gradient, then loses motion as the field evens out. Attuned workers feel one band fade or notice that a familiar response arrives late. Well-maintained equipment drops output or shuts itself down.

    The dangerous cases involve systems whose physical load does not fall with their resonance supply. A kite still has momentum when its kinetic field thins. A reinforced span still carries traffic when its structural band weakens. Signal equipment may continue transmitting nearby while silently losing its distant receivers. Crews reduce the underlying load, rather than demanding more output from the quieting array.

    Saturation can resemble drawdown at first. Both produce confused instruments and weak useful output. Saturated fields press too many responses into the same reading; drawn-down fields leave too little to distinguish. A Tuner compares several positions and a fixed reference before anyone moves additional ringglass into the area. Feeding a saturated field can turn a mistaken diagnosis into a destructive spike.
  PROSE

  gm_note :appears, "The party's own heavy work is the usual cause: run cutters, a lift, or a shielded array through a shift and the nearest household lines go thin. The complaint arrives from a kitchen or a workshop three streets away, not from the machine anyone is standing at."
  gm_note :triggered_by, "The reflex fix is to bring in more ringglass, which does not refill a place; fresh crystal left touching the local substrate settles toward the same weak response. If the field was saturated rather than drawn down, feeding it turns a wrong diagnosis into a destructive spike."
  gm_note :complicates, "The failures that matter come from loads that do not fall with the field: a kite keeps its momentum after its kinetic band thins, and a reinforced span keeps its traffic after its structural band weakens. The answer is to shed the load, not to demand more from the quieting array."
end

relate :rel_drawdown_conducted_by_ringglass, :conducted_by, :drawdown, :ringglass do
  prose "#{ref :drawdown, "Drawdown"} follows connected ringglass and crystal-bearing material, so its boundary rarely matches the equipment causing the draw."
end
relate :rel_tuners_study_drawdown, :studies, :tuners, :drawdown, since: 2000 do
  prose "#{ref :tuners, "Tuners"} trace depleted bands through instruments, bodily perception, and the response of nearby material."
end
