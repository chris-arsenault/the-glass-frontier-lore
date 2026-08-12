resource :severed_strains do
  name "Severed Strains"
  subkind :biological_material
  tags :resistance, :biotech, :symbiosis
  prominence :recognized
  form "Fungal cultures altered so their growth cannot join the continental mycelium"
  function "Closes wounds, senses, filters water, regulates temperature and carries local signals"
  adoption "Maintained by resistance clinics and Gatekeeper villages that accept poorer treatment for separation"
  production "Divided through recorded lineages and checked against contamination and barrier tests"
  operating_limit "Mutation, foreign tissue or a recovered signalling pathway can reconnect a supposedly safe culture"

  prose <<~PROSE
    Severed strains descend from Unified fungi altered so their growth cannot join the continental mycelium. They still close wounds, sense heat and chemistry, filter water, regulate temperature, repair living structures and carry signals through a body. Their signals stop at the edge of the bed or implant.

    Unified biologists call them mutilated tissue. Resistance clinics grow them because a poorer treatment that ends at the wall cannot carry a patient into the #{ref :the_great_root, "Great Root"}.
  PROSE

  prose <<~PROSE, section: :limits, heading: "Lineage Books"
    No strain remains safe by design alone. Each division can mutate, take up foreign tissue or recover a lost signalling pathway. A bed travels with copied books naming its parent culture, every division, every contamination and every failed barrier test.

    A village may keep #{duration 70} of such books beside one living lineage. The #{ref :the_gatekeepers, "Gatekeepers"} compare the tissue with the record for a fee, then burn a bed when its growth contradicts the page.
  PROSE
end
