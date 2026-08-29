transport :molt do
  name "Molt"
  summary "Molt is a low collection vessel built for the sarn passage at Perch. Its crew gathers naturally shed flight combs from beneath the herd and returns warm or bleeding material to animal readers."
  subkind :vessel
  type_of :utility_vessel
  capacity "Six crew, twelve line workers, and four comb racks"
  status :complete
  tags :transport, :ecology, :trade, :"kinetic-freq"
  prominence :marginal

  descriptive_identity(
    appearance: "A low collection vessel whose name runs in broad white letters along a hull plated with old " \
                "flight-comb roots. Four open racks trail behind the cabin and flex as each load enters the " \
                "field.",
    aboard: "Six crew and twelve line workers share the cabin and the trailing rack line; at present the racks " \
            "hold observation frames instead of comb, and an open recovery cradle stands ready for anything " \
            "warm or bleeding that must go back to the animal readers.",
    behavior: "It works from beneath the herd, matching a separated comb's turn before closing two padded arms " \
              "around the mineral root while line workers fold the fan into a rack. A warm or bleeding comb " \
              "ends the collection run — the crew breaks off and flies the recovery cradle home."
  )

  prose <<~PROSE
    *Molt* is a low collection vessel built for the sarn passage at Perch. Its name appears in broad white letters along a hull plated with old flight-comb roots. Four open racks trail behind the cabin and flex as each load enters the field.

    The crew approaches a separated comb from beneath the herd, matches its turn, and closes two padded arms around the mineral root. Line workers then fold the flexible fan into a rack while the vessel carries its remaining motion. Warm or bleeding material goes into an open recovery cradle for return to the animal readers.

    Molt now follows the oldest members of the circling herd. Its empty racks carry observation frames, and every pass through the spiral adds another line to the structural map found in the fallen combs.
  PROSE

  gm_note :appears, "Molt is the thing that works below the main spiral, so anyone who needs to be under a herd rides it alongside six crew and twelve line workers, with four open racks trailing behind the cabin and flexing through every turn."
  gm_note :triggered_by, "Hand up a comb that is warm or still bleeding and it goes into the open recovery cradle instead of a rack; the vessel then owes the animal readers a return trip and the crew will break off a collection run to make it."
  gm_note :complicates, "Its racks are carrying observation frames rather than comb while it follows the oldest animals of the circle, so a ward or a buyer expecting Molt's usual load gets a shift of survey notes and nothing to grade."
end

relate :rel_molt_operates_in_perch, :operates_in, :molt, :perch, since: 2435 do
  prose "Molt gathers separated sarn combs and carries collection crews at Perch."
end
