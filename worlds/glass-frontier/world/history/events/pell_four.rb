incident :pell_four do
  name "Pell Four"
  subkind :operational_failure
  date 2434
  tags :catastrophe, :danger, :resonance, :salvage, :orbital
  prominence :recognized

  prose <<~PROSE
    A short-lived reality boundary created during a synchronized extraction test at #{ref :pell_cut, "Pell Cut"} in 2434. Four remote arrays worked four separated claims on one clock. Their returns began answering one another, then continued after the arrays shut down.

    The event lasted long enough for the #{ref :displacement_council, "Displacement Council"} to form an emergency cordon and designate the entity #{ref :pell_answer, "Pell Answer"}. The boundary closed before it became a lasting #{ref :bloom_zones, "Bloom Zone"}. The closure crews called the incident Pell Four after the four receivers that had begun behaving as one.
  PROSE
  prose <<~PROSE, section: :mechanics, heading: "Formation"
    Ordinary remote jobs couple one seam to one receiver. At Pell, the four cutters repeated the same excitation pattern while the central yard processed their returns in a single cadence. Material from the claims remained phase-related across the freight spines. Doors opened in two rooms at once. Instruments reported one receiver where the yard plans showed four.

    The first distress call came from an empty process bay. It used the station cadence as speech: pressure alarms, shutter strikes, and clipped pieces of crew transmission arranged into a repeated request for approach. The pattern strengthened each time the yard answered it.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Closure"
    The Displacement Council established a cordon around the Cut and separated the four freight spines. #{ref :pell_freight_assembly, "Assembly"} crews recovered damping buoys from sealed stores while Council Tuners kept the new boundary from reaching the central yard.

    The closure used the same remote system that had formed the event. Operators changed the cutter cadence, fed quiet mass into each receiver on a different clock, and denied the Pell Answer the repetition it had learned. Its signal broke apart. The local geometry returned in stages, and the final cordon team came home with no personnel left inside.
  PROSE
  prose <<~PROSE, section: :significance, heading: "Consequences"
    Pell established that separated extraction sites can form one persistent field when their arrays share a clock and process cadence. The finding changed both salvage and containment work. Remote rigs now isolate their timing systems; Council cutters record every distant response and give the field operator authority to stop a return.

    The incident also changed who bears the cost of a failed industrial test. The Pell Freight Assembly retained the site, paid for the cordon, and supplied the closure crews. Its members continue to argue over the decision. The Cut continues to work under the rules written afterward.
  PROSE
end

relate :rel_pell_four_located_at_pell_cut, :located_in, :pell_four, :pell_cut do
  prose "Pell Four occupied the four receiving stations and freight spines of #{ref :pell_cut, "Pell Cut"}."
end
relate :rel_pell_four_caused_pell_answer, :caused, :pell_four, :pell_answer do
  prose "The synchronized field produced the voice-like pattern the Council designated #{ref :pell_answer, "Pell Answer"}."
end
