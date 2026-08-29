creature :lowbank_pole_thief_colonies do
  name "The Lowbank Pole-thief Colonies"
  summary "The Lowbank Pole-thief Colonies occupy the settlement's eastern approaches and the channels around its outer mound. Dredging has moved one bank edge into the marked channel, bringing repeated strikes into working traffic."
  subkind :animal
  type_of :pole_thief
  status :complete
  tags :"outer-system", :ecology, :resonance, :transport
  prominence :marginal

  prose <<~PROSE
    Several large colonies occupy the eastern approaches to #{ref :lowbank, "Lowbank"}. Dredging at one tally house moved a bank edge into the marked channel, and pole strikes now interrupt vessels waiting for inspection. The port wants the animals removed before the wet season. The local water board wants the new bank left intact until it knows which flow the dredging redirected.

    Three sounding poles have also returned to #{ref :the_reed_door, "the Reed Door"} with identical fresh strikes from separate channels. Barge crews work through the delay with second poles while the route crews decide whether the approaches remain open.
  PROSE

  gm_note :appears, "A fresh strike grips a sounding shoe and twists it toward the bank. At Lowbank the same marks are now returning from several channels."
  gm_note :triggered_by, "Moving a colony takes several nights of cracked shell and wooden beaters along an unused bank; poison is refused near freshwater intakes."
  gm_note :complicates, "The port wants the colonies removed before the wet season while the water board wants the dredged bank untouched until it knows which flow moved."
end

relate :rel_lowbank_pole_thief_colonies_inhabit_dovra, :inhabits, :lowbank_pole_thief_colonies, :dovra do
  prose "The colonies burrow through Dovra's reed banks and tidal channels around Lowbank."
end
relate :rel_lowbank_pole_thief_colonies_inhabit_lowbank, :inhabits, :lowbank_pole_thief_colonies, :lowbank do
  prose "Colonies around Lowbank's eastern approaches interfere with sounding and expose changes in the dredged banks."
end
