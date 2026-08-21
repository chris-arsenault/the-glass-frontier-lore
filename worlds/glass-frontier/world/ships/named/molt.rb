transport :molt do
  name "Molt"
  subkind :vessel
  capacity "Six crew, twelve line workers, and four comb racks"
  status :complete
  tags :transport, :ecology, :trade, :"kinetic-freq"
  prominence :marginal

  prose <<~PROSE
    *Molt* is a low collection vessel built for the sarn passage at Perch. Its name appears in broad white letters along a hull plated with old flight-comb roots. Four open racks trail behind the cabin and flex as each load enters the field.

    The crew approaches a separated comb from beneath the herd, matches its turn, and closes two padded arms around the mineral root. Line workers then fold the flexible fan into a rack while the vessel carries its remaining motion. Warm or bleeding material goes into an open recovery cradle for return to the animal readers.

    Molt now follows the oldest members of the circling herd. Its empty racks carry observation frames, and every pass through the spiral adds another line to the structural map found in the fallen combs.
  PROSE
end

relate :rel_molt_operates_in_perch, :operates_in, :molt, :perch, since: 2435 do
  prose "Molt gathers separated sarn combs and carries collection crews at Perch."
end
