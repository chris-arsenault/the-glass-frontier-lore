npc :cecile_ouellette do
  name "Cécile Ouellette"
  tags :resistance, :religion, :surveillance
  prominence :marginal

  prose <<~PROSE
    Cécile Ouellette is the seventy-eight-year-old tower captain at #{ref :ste_anne_belfry, "the Ste. Anne belfry"} and a member of #{ref :the_choir, "the Choir"}. She learned full-circle ringing from her mother's band before #{ref :caretaker, "Caretaker"} installed the Ste. Anne ring. She joined its heritage roster in 2074, took the captain's rope in 2085 and receives a stipend that covers her rope stock.

    She calls the session. She reads the method off #{ref :mercy, "Mercy"}'s public intake board on her walk to the tower, counts the rounds, calls the change and calls stand at the end. The bells select a starting place and waiting period for #{ref :the_choir, "Choir"} sequences across the district, hidden inside Caretaker's ambience programme.
  PROSE

  prose <<~PROSE, section: :perception, heading: "What She Can Hear"
    Rope, bell, band. She knows which of the eight is late on the return swing and which method the intake board will give her before she reaches the door. She also knows that #{ref :odile_marchand, "Marchand"}'s acoustic record cannot distinguish one changing order from another. Ouellette has called sixty-one completed sessions since taking the captain's rope.

    Cancellations leave the clearest mark. On nine mornings in #{year :now} she counted seven ringers and rang nothing; the Choir's sequences did not begin.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "Ringing Days"
    A captain cannot follow a transport entry on a session morning without moving the session, so since 2079 she has kept two sequences: the one she was taught and a shorter one for ringing days. Other Choir members learn only one.

    The band has no learner. Full-circle ringing takes about two years to make safe on a heavy bell, and the last person to start left the district in 2086.
  PROSE
end
