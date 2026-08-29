era :the_ring_age do
  name "The Ring Age"
  summary "The Ring Age was the period before 2140 when Kaleidos's orbital ring functioned as one inhabited structure and signal lattice."
  subkind :historical_period
  status :complete
  tags :"ring-era", :resonance, :origin, :archives
  prominence :mythic
  structural true
  custom_fact :defining_change, "The orbital ring joined Kaleidos's settlements to a system-wide civilization",
              label: "Defining Change"

  prose <<~PROSE
    The Ring Age is the last period in which the orbital ring functioned as one inhabited structure. Its signal lattice carried speech, records, power, and structural corrections around Kaleidos. Surface cities, ring habitats, moons, and outer stations depended on that lattice without maintaining separate replacements for every service it provided.

    The #{encyclopedia_ref :elves, "elves"} designed the resonance architecture and worked within a multi-species civilization. Surviving contracts, school texts, household recordings, and repair marks show people moving through institutions shared across species and habitats. They do not preserve one complete account of how those institutions governed themselves.
  PROSE

  prose <<~PROSE, section: :legacy, heading: "What Survived"
    Ring Age machines remain inside present roads, hab walls, signal relays, and water systems. Some continue their original work. Others answer only to partial control sequences or operate through routines that current technicians cannot inspect.

    Modern resonance practice inherits tools and vocabulary from the period while lacking the theory that joined them. Calling an artifact ring-era gives its date and origin; it does not establish that the object is powerful, safe, or understood.
  PROSE
end
