installation :mareth do
  name "Mareth"
  playable_as :chronicle_location
  aka "Mareth-Avelin"
  subkind :settlement
  status :complete
  tags :"ring-hab", :"ring-era", :transport, :trade, :"structural-freq", :"kinetic-freq"
  prominence :recognized
  position frame: :kaleidos_system_chart, relative_to: :kaleidos,
           radial_offset: 0.1, angle_offset_deg: 150
  population 4100
  population_band "About forty-one hundred residents, with large gate-day crowds"
  role "Periodic passage through a surviving Ring-era freight barrier"
  setting "Habitation galleries built into the frame of a vast segmented gate"
  access "Managed Keel branch to the holding lanes, then through the aperture on gate days or two permanent side locks"
  omit_facts :maintained_by

  prose <<~PROSE
    The gate opens when structural tension across the two fragments falls into balance. That interval arrives after a repeating series of low tones through the frame. Pilots gather in marked holding lanes as the sequence approaches. Shops roll counters toward the aperture, cargo crews fill the service trenches, and every room touching a moving leaf retracts its furniture behind painted clear lines.

    Opening lasts through one complete tension cycle. Ships, loose freight, and walking caravans cross the aperture under the gate's kinetic field. The field keeps their motion aligned with the moving leaves and carries a steady pressure through bodies and cargo. Residents describe distance during an opening by how many leaf joints a traveler has crossed.

    Closure turns the aperture face into a broad public square. Market frames unfold from the leaf edges, children race the joint lines, and crews service the exposed guide teeth before the next cycle. The gate's movement shapes Mareth's week more strongly than any clock.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Inside the Gate"
    A Ring-era freight barrier spans the gap between two heavy fragments. Its segmented leaves close around a central aperture. Settlement galleries fill the frame, the service trenches, and three latch housings large enough to contain streets.

    Mareth shortens Mareth-Avelin, the name cut above the aperture. Travelers arriving from the Keel sleep, eat, and sort freight in #{ref :third_latch, "Latchhouse"} while the frame builds toward its opening sequence.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "A Fifth Latch"
    Four latches take the closing load at Mareth. During the latest cycle, a fifth structural tone entered beneath them and held the gate open for six additional leaf crossings. The sound came from the sealed base of #{ref :third_latch, "Latchhouse"}, where residents felt a new set of guide teeth moving inside the wall.

    The next opening sequence already carries the fifth tone. Gate crews have cleared the rooms around the base while a Keel freight convoy waits in the holding lanes. If the extra interval returns, Kesh formations will walk instrument frames across the exposed joints before ordinary traffic enters; another extension during closure would leave the convoy between moving leaves.
  PROSE
end

relate :rel_mareth_located_in_frontier, :located_in, :mareth, :the_glass_frontier, since: 2140 do
  prose "Mareth inhabits a surviving freight gate between two ring fragments."
end

relate :rel_mareth_terminus_keel, :terminus_of, :mareth, :keel do
  prose "One managed branch of the Keel reaches Mareth's holding lanes and periodic aperture."
end
