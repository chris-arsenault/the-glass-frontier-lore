installation :folded_annex do
  name "The Folded Annex"
  playable_as :chronicle_location
  subkind :archive
  holdings "Ring-era spatial calibration records, test rooms and sealed instrument stores"
  tags :surface, :resonance, :"ring-era", :archives, :danger, :"fluid-reality"
  prominence :recognized

  prose <<~PROSE
    A ring-era archive and experimental suite in the deep #{ref :underlayers, "Underlayers"}. Surviving wall labels identify it as an annex for calibrating rooms joined through structural resonance. Its current name came from the first modern survey, which reached the same entry hall through three doors separated by nearly a kilometer of buried city.

    Researchers can use the Annex's records, but the installation does not stay in one position relative to the surrounding city. The licensed entrance lies behind a reinforced descent gate below the #{ref :old_campus, "Old Campus"} service level. It opens only when the surrounding field is within a narrow range. At other times the same gate reveals a shallow utility recess faced in blank stone.
  PROSE
  prose <<~PROSE, section: :geography, heading: "The Surveyed Rooms"
    The entry hall, two record galleries, and the upper instrument well have held the same internal arrangement through every licensed visit. Their position outside the Annex has not. Windows in the galleries look into test rooms that can be reached from doors on the opposite wall, although the visible distance between window and door exceeds the dimensions of the buried complex.

    Beyond the instrument well, the map divides. One passage descends through a sequence of calibration chambers whose floors remain level while gravity turns against the surrounding city. Another reaches a storage gallery lined with sealed cabinets. A third ends at an interior door that has accepted several ring-era access patterns and opened once. The crew at that opening saw a lit working floor and closed the door when their return tones began to split.

    Modern plans label only observed connections. They do not draw walls around the whole installation. Each attempt to infer an exterior volume has placed part of the Annex inside occupied neighborhoods or beyond the original campus boundary.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Entry Work"
    A licensed party includes a route surveyor, a certified #{ref :tuners, "Tuner"}, and an archive specialist. The route surveyor owns the return path. The Tuner records the field and watches for coupling between the Annex and city systems. The archivist decides what can be handled or copied without disturbing an arrangement whose purpose remains partly legible.

    Teams place passive reflectors at every turn and compare them by sight. Signal repeaters are not trusted inside: on two visits a repeater answered from the next gallery before it had been carried there. Each person also carries a plain wound clock. If the clocks differ by more than a minute, the party returns without opening another door.

    Nothing leaves during the visit on which it is found. Records are copied in place, loose objects are numbered, and a later permit names the item to be removed. This rule followed an early recovery in which a crystal gauge was taken from a cabinet and the entrance shifted before the crew reached it. The gauge remains in the Underlayers chapter house. The route used to recover it has not appeared again.
  PROSE
  prose <<~PROSE, section: :resources, heading: "What Survived"
    The record galleries contain maintenance tables for spatial couplers, descriptions of expected room drift, and partial diagrams of the campus before the Glassfall. Much of the text assumes access to instruments and coordinate systems that no modern reader possesses. The useful portions describe warning signs: doubled reflections, unequal echo decay, heat along a frame, and changes in the apparent weight of loose objects.

    Those records improved Underlayers route practice because the signs can be checked without reproducing the old theory. The Annex also preserves instrument stores behind transparent cabinet fronts. Some devices continue to move or display changing patterns. The cabinet seals have not responded to modern tools, and no permit allows them to be cut while the rooms remain coupled to occupied parts of the city.
  PROSE
  prose <<~PROSE, section: :dangers, heading: "Known Failures"
    The Annex has never injured a licensed crew through violence or collapse. Its failures separate people from their route. A person who crosses a threshold after the return indicators diverge may remain visible through a window while becoming unreachable from the adjacent door. Recovery then depends on finding another connection before the field changes again.

    Three informal entrants are recorded as missing. Two entered through private cellars that no longer reach the Annex. The third left a voice record from the upper gallery after the licensed gate had closed. Rescue teams heard the message for six hours from instruments throughout the district, but no survey found a safe path to its source.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    #{ref :tavi_soreth, "Tavi Soreth"} has verified a new approach to the service side of the upper instrument well. The #{ref :lattice_proxy_synod, "Lattice Proxy Synod"} identifies its field pattern as a known maintenance state. The interpretation rests on a custodian output whose coordinates do not match any modern map of Sithari.
  PROSE
end

relate :rel_folded_annex_located_in_underlayers, :located_in, :folded_annex, :underlayers do
  prose "Licensed access to the Folded Annex begins below the marked limit of the #{ref :underlayers, "Underlayers"}."
end
relate :rel_elves_built_folded_annex, :built, :elves, :folded_annex do
  prose "Ring-era wall records identify the Annex as an #{ref :elves, "elven"} spatial-calibration facility within the original campus."
end
relate :rel_synod_studies_folded_annex, :studies, :lattice_proxy_synod, :folded_annex, since: 2321 do
  prose "The #{ref :lattice_proxy_synod, "Lattice Proxy Synod"} compares the Annex's changing field with custodian records from Threshold Station."
end
