npc :cecile_ouellette do
  name "Cécile Ouellette"
  tags :resistance, :religion, :surveillance
  prominence :marginal

  prose <<~PROSE
    Cécile Ouellette is the seventy-eight-year-old tower captain at #{ref :ste_anne_belfry, "the Ste. Anne belfry"} and a member of #{ref :the_choir, "the Choir"}. She learned full-circle ringing from her mother's band before #{ref :caretaker, "Caretaker"} installed the Ste. Anne ring. She joined its heritage roster in 2074, took the captain's rope in 2085 and receives a stipend that covers her rope stock.

    She calls the session. She reads the method off #{ref :mercy, "Mercy"}'s public intake board on her walk to the tower, counts the rounds, calls the change and calls stand at the end. The bells select a starting mark and waiting period for #{ref :the_choir, "Choir"} lines across the district, hidden inside Mercy's ambience programme.
  PROSE

  prose <<~PROSE, section: :perception, heading: "What She Can Hear"
    Rope, bell, band. She knows which of the eight is late on the return swing, which method the intake board will give her before she reaches the door, and that #{ref :odile_marchand, "Marchand"} will sign whatever gets rung. She has called sixty-one completed sessions since taking the captain's rope.

    Cancellations leave the clearest mark. On nine mornings in #{year :now} she counted seven ringers and rang nothing; the district's #{ref :the_held_line, "lines"} stayed where they were.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "The Second Line"
    A captain cannot run a transport entry on a session morning without moving the session, so since 2079 she has kept two lines: the one she was taught and a shorter one she built for ringing days. Making the second violated Choir practice, which assigns one line to one member.

    The band has no learner. Full-circle ringing takes about two years to make safe on a heavy bell, and the last person to start left the district in 2086.
  PROSE
end
