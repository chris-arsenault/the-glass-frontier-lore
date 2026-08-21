installation :latch do
  name "Latch"
  subkind :settlement
  tags :"ring-hab", :catastrophe, :resonance
  prominence :forgotten
  status :complete
  omit_facts :maintained_by

  prose <<~PROSE
    A lost mid-drift service hab overtaken during the first Silent Bloom evacuations. Latch joined two cargo arcs through a rotating transfer drum, and most of its residents worked docking, pressure service, or freight inspection. #{ref :dern_talish, "Dern Talish"} was born there and evacuated at four years old.
  PROSE

  prose <<~PROSE, section: :history, heading: "The Last Transfer"
    The first distortion displaced the transfer drum from both cargo arcs while its instruments continued reporting a sound connection. Evacuation crews used exterior lines until the drum began returning people to the lock they had just left. The last departure abandoned the inner residential arc.

    Latch remains inside an active Bloom boundary. External surveys can identify the cargo arcs and cannot agree on the position of the drum between them.
  PROSE

  prose <<~PROSE, section: :culture, heading: "Latch Names"
    Former residents identify themselves by deck and shift rather than by the vanished street plan. Their association keeps a short registry at Cordon Station Nine and still receives property claims for rooms that cannot be reached.
  PROSE
end

relate :rel_latch_located_in_bloom_zones, :located_in, :latch, :bloom_zones do
  prose "Latch lies inside one of the first mid-drift Bloom Zones."
end
