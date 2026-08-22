installation :the_reed_door do
  name "The Reed Door"
  playable_as :chronicle_location
  subkind :installation
  status :complete
  tags :"outer-system", :trade, :transport, :household, :ecology
  prominence :marginal

  prose <<~PROSE
    The Reed Door is a ferry house, food hall, and cheap lodging on #{ref :lowbank, "Lowbank"}'s outer western mound. Long-haul crews enter the city through its detachable landing. Flood workers open the upper hall when water closes the lower wards. The front door is a thick woven panel lifted clear of its frame during storms, giving the house its name and leaving one less rigid surface for the river to strike.

    The building faces three channels whose usable approach changes with tide and sediment. Its landing board is read as often as its menu.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Landing, Hall, and Flood Floor"
    The landing floats on linked reed bundles around a ceramic frame. Two hinged walks connect it to the mound. Ferries use the downstream side, channel barges the long outer face, and family boats any open ring whose paint matches their depth class.

    The ground hall has a stone kitchen core surrounded by timber shutters that can be removed before high water. Tables, benches, and cook stands carry flood marks from previous seasons. Sleeping rooms occupy the middle floor. The upper hall remains mostly empty, with rolled mats, water jars, and lock rings set into the beams for emergency lodging.

    A narrow sounding balcony projects over the channel. House staff hang the current pole marks there so arriving pilots can compare them with the water below. A pole with fresh tooth scars stays on display until its route has been sounded again.
  PROSE

  prose <<~PROSE, section: :operations, heading: "A Door for Changing Water"
    Guests arriving by boat tie their route pole beside the landing before they register. The mark tells the desk which channel they used and whether the vessel can leave by the same path. A room charge can include an early sounding if the crew expects to depart before the public route boat.

    During a flood warning, the ground hall closes in a fixed order. Food and water go upstairs. Shutters come off. Tables hang from the ceiling rings. The front panel lifts last, after anyone still waiting for a ferry has moved above the old flood line.

    The house does not promise that stored cargo will remain dry. Sealed personal cases go to the middle floor. Freight stays on its vessel or transfers to the mound warehouse. Crews who ignore the distinction contribute to the stories told beside the flood marks.
  PROSE

  prose <<~PROSE, section: :people, heading: "The Outer Mound"
    The common hall hears more languages than Lowbank's central courts. Barge families, coastal sailors, upland traders, and crews from Kaleidos share tables arranged around whichever route remains open. Orders are written by bowl size and cooking method beside the food name.

    Hiring happens near the landing board. Boat owners seek poles, deck hands, mud crews, and cargo carriers. Flood work pays through the mound council. Private freight pays at the table under terms witnessed by the house.

    Local residents eat here even when they have no traveler to meet. They know which unfamiliar crew has been waiting, which barge refuses inspection, and who returned without the pole they took out.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "Water in the Eastern Cut"
    The eastern approach is rising after an upstream gate release. Lowbank has removed one hinged walk and moved the public ferry to the house's outer face. Travelers from two closed mound lodgings now occupy the flood floor.

    Three sounding poles returned with identical fresh strikes from pole-thieves, though the boats used separate channels. The route crews want to close all three approaches. Freight captains waiting at the Reed Door want another sounding before the water reaches the next mark on the hall posts.
  PROSE
end

relate :rel_reed_door_located_lowbank, :located_in, :the_reed_door, :lowbank do
  prose "The Reed Door occupies the landing edge of Lowbank's outer western mound."
end
relate :rel_lowbank_maintains_reed_door, :maintains, :lowbank, :the_reed_door do
  prose "The mound council maintains the detachable landing, flood stores, and upper lodging floor."
end
relate :rel_reed_door_resonates_channel_barge, :resonates_with, :the_reed_door, :channel_barge do
  prose "Channel barges use the long landing face and leave their route poles beside the house board."
end
relate :rel_reed_door_resonates_pole_thief, :resonates_with, :the_reed_door, :pole_thief do
  prose "Freshly struck sounding poles are displayed here until their channels have been checked again."
end
