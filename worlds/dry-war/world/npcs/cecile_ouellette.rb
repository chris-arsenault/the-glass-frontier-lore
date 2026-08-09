npc :cecile_ouellette do
  name "Cécile Ouellette"
  tags :resistance, :religion, :surveillance
  prominence :marginal

  prose <<~PROSE
    Tower captain of the band at #{ref :ste_anne_belfry, "the Ste. Anne belfry"} and a #{ref :the_choir, "Choir"} member, seventy-eight, carried on #{ref :caretaker, "Caretaker"}'s heritage roster at a stipend that covers her rope stock. She learned the eight bells in her mother's band in the years before the programme paid for anything, and she has kept the roster since 2071.

    She calls the touch. She reads the method off #{ref :mercy, "Mercy"}'s public intake board on her walk to the tower, counts the rounds, calls the change and calls stand at the end of it. She has never been told what a touch produced and does not expect to be; what she agreed to in 2071 was that she would call and not ask.
  PROSE

  prose <<~PROSE, section: :perception, heading: "What She Can Hear"
    Rope, bell, band. She knows which of the eight is late on the backstroke, which method the intake board will give her before she reaches the door, and that #{ref :odile_marchand, "Marchand"} will sign whatever gets rung. She has called sixty-one touches in #{elapsed 2071, approx: true} and has never seen a return.

    Nothing that happens after a session comes back to the belfry. The one effect she is certain of is a cancellation: on nine mornings in #{year :now} she counted seven ringers, rang nothing, and the district's #{ref :the_held_line, "lines"} stayed where they were.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "The Second Line"
    A captain cannot run a transport entry on a session morning without moving the session, so since 2079 she has kept two lines: the one she was taught, and a shorter one she built herself for ringing days. Nobody else knows the second exists, and the Choir's practice does not allow a member to make one.

    The band has no learner. Full-circle ringing takes about two years to make safe on a heavy bell, and the last person to start left the district in 2086.
  PROSE
end
