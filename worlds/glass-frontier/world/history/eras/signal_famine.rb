era :signal_famine do
  name "Signal Famine"
  summary "The Signal Famine was the period of broken communication and isolated communities between the Glassfall in 2140 and sustained reconnection in 2305."
  subkind :historical_period
  status :complete
  tags :isolation, :catastrophe, :divergence, :archives
  prominence :mythic
  structural true

  prose <<~PROSE
    The Signal Famine began with the Glassfall in 2140 and ended with the first sustained reconnection in 2305. The broken ring could no longer carry reliable communication or distribute the services that had tied the system together. Hundreds of communities lived for #{elapsed :the_glassfall, :the_rekindling} without knowing which neighbors had survived.

    Isolation reached beyond messages. A settlement that lost a pump specialist, seed archive, legal register, or tuning instrument could not request another. Communities rebuilt the missing work from surviving people and local material. Some preserved ring institutions under new names. Others prohibited practices whose failures had killed their first post-Glassfall generation.
  PROSE

  prose <<~PROSE, section: :culture, heading: "Local Answers"
    Signal equipment often still functioned within a town or habitat after long-distance relays failed. Local networks carried work calls and alarms while returning silence from every external address. People learned to distinguish an empty channel from a damaged receiver and kept listening schedules long after no reply was expected.

    Independent Tuning schools emerged from repair practice. Farmers, hull crews, and builders learned the narrow resonance bands their own work required. The resulting methods remain regional because they were tested against different glass, structures, and hazards.
  PROSE

  prose <<~PROSE, section: :legacy, heading: "The Long Silence"
    Present communities still keep redundant stores, local repair apprenticeships, and contact rituals shaped by the Famine. Ring habitats that survived on sealed systems can treat outside standards as a threat to the arrangements that sustained them.

    The elves disappeared during the same period. Their absence and the damaged archive are separate facts that public histories cannot fully separate: no returning network found an elven community, and many records that might describe the departure were already gone.
  PROSE
end

relate :rel_signal_famine_caused_tuners, :caused, :signal_famine, :tuners do
  prose "Isolated communities rebuilt resonance work as local crafts, producing the lineages now called Tuners."
end
relate :rel_signal_famine_caused_fermata_station, :caused, :signal_famine, :fermata_station do
  prose "Fermata's governing music and permanent Drone developed during #{elapsed :the_glassfall, :the_rekindling} without outside authority or replacement systems."
end
