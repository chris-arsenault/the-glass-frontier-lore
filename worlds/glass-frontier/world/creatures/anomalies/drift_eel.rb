creature :drift_eel do
  name "Drift-eel"
  subkind :anomaly
  status :complete
  tags :danger, :orbital, :resonance, :ecology, :salvage
  prominence :recognized

  prose <<~PROSE
    Drift-eels are long Shear predators that follow electrical discharge and active resonance arrays. Small adults can wrap around a flitter. The oldest recorded bodies extend for several kilometres, though most of that length is thin feeding filament rather than muscle. Working crews encounter the smaller animals often enough to treat them as a route hazard rather than a rare beast.

    An eel approaches along the weakest gradient its prey produces. A badly shielded cable, a cycling receiver, and a Tuner sounding repeatedly on one band can each draw it. When it reaches a vessel, it anchors several mouths to the hull and begins taking current, heat, and field response through different parts of its body.
  PROSE

  prose <<~PROSE, section: :description, heading: "Body"
    The central body is a chain of dark flexible plates joined by pale tissue. A fringe of narrower filaments trails behind it and spreads across the local field. Eyes line the underside of the plates. Some track light and nearby movement; others remain fixed on empty directions while the animal turns around them.

    Feeding mouths sit between the plates. One clamps to a conductive surface, another opens over a warm seam, and several smaller apertures pulse against active ringglass without removing material. The arrangement lets an eel feed from a ship without entering it. It also distributes the grip across enough hull that cutting one mouth free seldom releases the animal.

    The head is the bluntest plate rather than a distinct skull. Its larger eyes face into the direction of motion, and a ring of sensory pits responds when an active source changes band. The eel can reverse without turning by transferring that response to the far end of the body. Crews therefore mark both ends until it leaves.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Detection and Diversion"
    A tuning compass often notices a drift-eel before visual instruments do. The reeds begin leaning toward a point that moves against the surrounding debris. Hull current drops in small separate steps as the animal's filaments enter the field. An experienced pilot shuts down nonessential emitters and lets the vessel's strongest signature move to a disposable lure.

    Lures are simple frames carrying a warm battery, a low-output ringglass cut, and enough wire to imitate a poorly maintained craft. They are launched across the eel's approach and driven away from the route. The animal usually follows the easier gradient. A lure that is too strong can draw another eel from farther out or keep the first feeding until the frame returns as hazardous salvage.

    Dampening works only before contact. Once several mouths have fixed to the hull, abrupt silence causes the animal to search across the surface. Crews reduce one source at a time while increasing the lure, walking the mouths away from habitation, pressure seals, and control lines.
  PROSE

  prose <<~PROSE, section: :dangers, heading: "Hull Contact"
    Small eels steal current and leave scorched fittings. Larger animals distort a kite array by feeding unevenly across it. Their body then tightens around the changing field. A vessel that responds with more power can pull the eel harder against itself and turn a manageable contact into a crushed hull.

    Deck weapons are used at the last attached plate, never through the middle of the body. A severed section continues gripping and can remain responsive for hours. The open tissue releases a conductive fluid that carries the ship's own signal across whatever it touches. Salvage crews isolate the section in an external cradle or leave it where it drifts.

    The largest eels are route events. Traffic shuts down, beacons go quiet, and pilots wait for the animal to cross. Hunters pursue a named eel only after repeated attacks because killing several kilometres of feeding body creates a debris and contamination problem of its own.
  PROSE

  prose <<~PROSE, section: :geography, heading: "Following the Working Shear"
    Drift-eels gather where active machinery makes dependable gradients: managed corridors, extraction yards, old habs whose systems still pulse, and the approaches to busy Ratter ports. They also follow glassfall streams through the debris, feeding on charge released by impacts and leaving when the field settles.

    Young eels have been found inside cutter wakes, short enough to coil beneath a receiving grate. Whether they crossed as whole animals or grew from severed filaments remains unresolved. Ratter records contain both observations and no controlled specimen has survived long enough in a quiet field to distinguish them.
  PROSE

  gm_note :triggered_by, "The instinct once mouths fix to the hull is to shut everything down. Abrupt silence sends the animal searching across the surface instead, so the sources come down one at a time while a lure is raised, walking the mouths off habitation, pressure seals, and control lines."
  gm_note :complicates, "Answering an attached eel with more drive power pulls it harder against the hull, because the body tightens around the field it is feeding on. A severed plate keeps gripping for hours afterward and leaks a conductive fluid carrying the ship's own signal."
  gm_note :appears, "A tuning compass usually registers an eel before anything visual does, its reeds leaning toward a point that moves against the surrounding debris while hull current drops in small separate steps. It is following the weakest gradient the vessel makes, often a badly shielded cable rather than the drive."
end

relate :rel_drift_eel_inhabits_shear, :inhabits, :drift_eel, :the_shear do
  prose "Drift-eels follow active vessels, arrays, and charged debris through the #{ref :the_shear, "Shear"}."
end
relate :rel_drift_eel_inhabits_deep_shear, :inhabits, :drift_eel, :deep_shear do
  prose "The largest recorded drift-eels move through the #{ref :deep_shear, "Deep Shear"}."
end
relate :rel_drift_eel_embodies_farborn, :embodies, :drift_eel, :farborn do
  prose "Working bestiaries place drift-eels among the current-feeding #{ref :farborn, "Farborn"}."
end
relate :rel_ratters_study_drift_eels, :studies, :ratters, :drift_eel do
  prose "Ratter route boards exchange eel sightings, lure results, and the movement of named large animals."
end
