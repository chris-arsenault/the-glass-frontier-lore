installation :kesh do
  name "Kesh"
  playable_as :chronicle_location, :homeland
  origin_blurb "A shifting-gravity hab where formations carry loads, cross thresholds, and train for rescue."
  subkind :settlement
  status :complete
  tags :"ring-hab", :resonance, :"kinetic-freq", :training, :"social-structure", :transport
  prominence :recognized
  population 3900
  population_band "About thirty-nine hundred residents"
  role "Formation work, rescue, and movement through shifting gravity"
  setting "Interlocking chambers around a kinetic field junction"
  access "Four spoke docks on the Mareth gate branch; each approach turns gravity toward the central junction"
  omit_facts :maintained_by

  prose <<~PROSE
    Residents move through the settlement in formations. Two people brace across a turning threshold while others pass between them. Cargo teams link shoulders and hips around a suspended load. Rescue crews build walking frames from their own bodies, carrying an injured person through gravity changes while the field distributes weight across every contact.

    Kesh children learn position before speed. Their first forms are circles that can sit, stand, and turn together. Older students cross spoke chambers in lines, carry water through changing gravity, and practice breaking cleanly when one member loses footing. Work formations develop distinct calls, grips, and marked straps while sharing enough positions to join during an emergency.

    The junction strengthens coherent motion. A group entering on one count feels each member's balance through the field and can hold shapes that ordinary muscle could sustain for only a moment.
  PROSE

  prose <<~PROSE, section: :culture, heading: "The Call"
    Kesh is an Orcish formation call that brings several bodies onto one load and one rhythm. It headed the first Rekindling work roster for the damaged junction. Mixed crews used the call at every changing-gravity threshold, and the roster name passed to the settlement.

    The kinetic field carries breath cadence, pulse, tremor, and grip pressure through linked bodies. Captains use those signs to recognize panic, anger, or exhaustion before a formation loses its count. They place steady breathers near the center and rotate strained workers away from the load-bearing edge.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "The Walking Bridge"
    A spoke chamber has begun rotating between dock gravity and the central junction. Fixed rails pass through the floor during half of each turn. #{ref :brace, "Brace"} has kept the route open with a formation of forty residents who build a new bridge at every change.

    The group trains with #{ref :nineteen, "Nineteen"}, an old linked harness whose segments carry weight and body position around the full formation. During the latest crossing, the harness registered twenty positions while forty people remained in contact. The extra position moved from the leading pair toward the center as the chamber turned.
  PROSE

  gm_note :appears, "All four spoke docks turn gravity toward the junction on the approach, and residents cross that turn linked. A visitor who declines to take a position is carried through inside a rescue frame or left waiting at the dock until someone has time to build one."
  gm_note :triggered_by, "The field carries breath, pulse, tremor and grip pressure between linked bodies, so a captain reads a newcomer's fear or temper before it is spoken. They act on it immediately: steady breathers go to the center, and anyone straining is rotated off the load-bearing edge."
  gm_note :complicates, "Kesh crews keep separate calls, grips and marked straps but share enough positions to merge on an emergency call. A party that arrived as its own group is dissolved into the rescue formation and its members reassigned by position, not by who they came with."
end

relate :rel_kesh_located_in_frontier, :located_in, :kesh, :the_glass_frontier, since: 2305 do
  prose "Kesh occupies a shifting-gravity junction in the broken ring."
end

relate :rel_kesh_operates_in_mareth, :operates_in, :kesh, :mareth, since: 2435 do
  prose "Kesh formation crews work Mareth openings that require people and loads to cross moving leaf joints together."
end

relate :rel_brace_operates_third_latch, :operates_in, :brace, :third_latch, since: 2435 do
  prose "Brace stages Kesh crossing formations from Latchhouse before Mareth's gate opens."
end
