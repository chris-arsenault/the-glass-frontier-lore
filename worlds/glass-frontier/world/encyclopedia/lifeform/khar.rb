encyclopedia :khar do
  name "Khar"
  summary "Khars are low, six-legged animals native to Ashvane's volcanic highlands. Their plated backs manage heat, and settlements tolerate them near outer drains because they clear warm channels and react to changing heat underground."
  kind :lifeform
  subkind :animal
  status :complete
  log "2026-08-31 — Renamed Cinderback to Khar; the former descriptive compound did not supply a setting name."
  topics :"outer-system", :ecology, :danger, :trade, :resonance
  prevalence :common
  appears_when all: { place: [:hot] }

  descriptive_identity(
    appearance: "A low six-legged animal with overlapping black plates along the spine and a fringe of pale " \
                "insulating fiber around the belly. The plates stand on short stems and lift as the animal " \
                "heats, exposing the pale tissue between them; the front feet end in broad scraping claws. " \
                "Owned animals wear bells or neck cords, since the plates shed.",
    behavior: "It shelters from direct light in caves, culverts, and deep rock shade, then grazes fungi, salt " \
              "growth, and seep-line plants during giant-shade and after sunset. Heat-sensitive rear pads let " \
              "it trace a buried warm line through basalt and tell flowing water from a dry pipe; herds gather " \
              "behind parked haulers for shade and stay put as the drive warms.",
    threat: "It does not attack — it digs. A frightened khar goes toward cooler ground even when that " \
            "ground lies beneath a house floor, and its claws defeat ceramic joints, old sealant, and cooling " \
            "cloth, though intact metal usually stops it. A herd standing in shade with every back plate " \
            "lifted is the warning: a warm pulse underground, often a leaking return no instrument has " \
            "registered yet."
  )

  prose <<~PROSE
    Khars are low, six-legged animals native to Ashvane's volcanic highlands. Adults carry overlapping black plates across the spine and a fringe of pale insulating fibers around the belly. They spend direct light in caves, culverts, and deep rock shade, then emerge during giant-shade and after sunset to graze fungi, salt growth, and the tough plants around seep lines.

    Settlements tolerate small groups near outer drains because they clear growth from warm channels and warn of changing heat below the ground. A herd inside a radiator yard can break pipework, foul vents, and force a cooling shutdown during the part of the cycle when the system has nowhere else to send its load.
  PROSE

  prose <<~PROSE, section: :biology, heading: "Heat Under the Plates"
    A khar's dorsal plates stand away from the body on short vascular stems. In cool shade, blood warms beneath the dark surface. As the animal heats, the plates lift and expose the pale tissue between them. The moving air carries heat away before it reaches the insulated belly.

    The front feet end in broad scraping claws. Rear feet carry smaller pads sensitive to temperature changes in stone. An animal can follow a buried warm line through a basalt shelf and distinguish flowing water from a dry pipe by the way the heat moves. Herds use that sense to find seeps and caves with stable night temperatures.

    Khars store water in dense tissue along the flanks and drink heavily when a source appears. They will break a brittle condensate pipe after tracing it below ground. Intact metal usually defeats them; ceramic joints, old sealant, and cooling cloth do not.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Around Settlements"
    Ashvane towns paint exposed utility lines with a bitter mineral wash. The taste discourages adults and must be renewed after dust storms. Low fences redirect moving herds without trapping them against a hot wall. A frightened khar digs toward cooler ground, even when the nearest cool ground lies beneath a house floor.

    Radiator crews watch for lifted plates at night. A whole herd opening its back while standing in shade indicates a warm pulse below the yard. The animals may have found a leaking return before pressure instruments register the loss. Workers clear the herd, close the line, and inspect the route from the first disturbed soil.

    Heat-road haulers carry folding screens to keep khars away from warm hubs during overnight stops. The animals gather behind a parked vehicle for shade and remain when the drive begins warming. Drivers walk the full chassis before departure rather than trusting motion to scatter them.
  PROSE

  prose <<~PROSE, section: :trade, heading: "Plate and Fiber"
    Khars shed outer plate layers in thin curved scales. Ground scales become dark heat-absorbing pigment. Whole pieces line solar cookers, instrument shelters, and the warm side of public doors. The pale belly fiber is short, difficult to spin, and useful as loose insulation inside gloves and pipe wraps.

    Highland households keep half-domesticated groups near fungi beds. The animals return for salt and shade while retaining their seasonal range. Ownership marks go on bells and neck cords because the plates shed. A marked animal that follows a wild herd may return after the hot season or join another household's shade yard.

    Meat enters local markets after herd culls and utility removals. Hunters approach from the cool side of a group and avoid driving animals across active lines. A stampede over buried cooling cloth can turn a routine cull into a town repair.
  PROSE

  cue "Khars collect behind a parked vehicle for its shade and stay put once the drive begins warming. Ashvane drivers walk the whole chassis before departure; skipping the walk starts the run with animals under the machinery."
  cue "Adults carry overlapping black plates across the spine and a fringe of pale insulating fibers around the belly."
  affordance "A herd standing in shade with every back plate lifted is reading a warm pulse below the ground. Radiator crews take it as a leaking return that pressure instruments have not registered yet and dig from the first disturbed soil."
  pressure "A frightened khar digs toward cooler ground instead of running, even when the cool ground lies under a house floor. Its claws go through ceramic joints, old sealant, and cooling cloth, so a herd scattered by noise ends as a floor repair."
  variation "Highland households keep half-domesticated groups near fungi beds."
  variation "A marked animal that follows a wild herd may return after the hot season or join another household's shade yard."

end
