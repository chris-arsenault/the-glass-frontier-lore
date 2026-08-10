installation :thorong_cold_house do
  name "The Thorong Cold House"
  subkind :station
  tags :water, :ecology, :biotech, :catastrophe
  prominence :marginal

  prose <<~PROSE
    One unheated dry-stone room on the Thorong pass at 5,400 metres, four days' carry above the intakes it serves. Organisms intended for the upper watersheds spend a winter here before anyone trusts that cold will stop them. North door, slate roof, a stone bench and two racks. No power, no instrument, no lock beyond a hasp and a stone.

    Nobody winters with them. The door closes at the first snow and opens at the melt. The carry up and the carry down are what the house costs.
  PROSE

  prose <<~PROSE, section: :structure, heading: "The Racks"
    Each organism goes up in twenty glass tubes inside a padded case. Ten hold it on ordinary substrate. Five hold it without the compound it is supposed to need. Five contain substrate alone. The tubes stand off the floor, a hand apart, with their positions drawn inside the case lid.

    Growth in a deprived tube means the engineered dependency has failed. Growth across all fifteen organism tubes means the winter has failed to kill it as well. The five blanks distinguish either result from a dirty case.

    A case that thaws on the way down says nothing. The melt carry goes through the night in one push; a carrier who must shelter opens the case and leaves it there. Nine cases have been abandoned and forty-one read.

    One rack position every autumn holds #{ref :gate_moss, "gate-moss"} from a crossing bed. It is opened first at the melt. How much survives fixes whether that winter was severe or mild, so the other cases can be compared with winters before it.
  PROSE

  prose <<~PROSE, section: :people, heading: "Who Carries"
    The carry is contracted by the season out of the villages below the pass, and the same families have taken the Thorong sets up since the house was built. Machines are not used above the last shelter: autonomous carriers lose navigation on the pass, and a fungal courier would introduce another living organism to the source water.

    A carrier is paid on delivery of a cold case and paid again for an abandoned one, at the same rate, on the carrier's word alone. The case that led to #{ref :the_marsyangdi_burn, "the Marsyangdi Burn"} came down this pass in one night in the melt of 2089.

    Some carries are paid for from outside the Holds. The #{ref :the_gatekeepers, "Gatekeepers"} send sealed gate-moss samples to compare their four-day trials with a full winter. They pay the same villages at the same rate, abandoned cases included. Their samples travel alone, with no monastery specimens beside them.
  PROSE

  log "2026-08-09 — The set is ten organism tubes, five with the named requirement withheld and five substrate blanks, from containment screening practice where an engineered dependency is tested by withholding the compound it is supposed to require and reading against blanks. That decided what a failed reading means here: a clean withheld tube proves the dependency, and growth in one proves the entry's requirement line was written wrong rather than that the organism changed."
end
