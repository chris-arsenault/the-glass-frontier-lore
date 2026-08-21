resource :velin do
  name "Velin"
  subkind :biological_material
  function "Forms living bridges across damaged nerves and sensory tissue"
  status :complete
  tags :ecology, :materials, :trade, :resonance
  prominence :marginal

  prose <<~PROSE
    Olven's humid chambers grow pale velin across warm nutrient mesh. A slow kinetic pulse aligns its fibers. Prepared strips carry sensation from one end to the other and bridge damaged nerve tissue while a patient's own cells grow through them.

    Growers harvest velin in sheets, roll it around wet ceramic rods, and ship it in warm cases that carry the chamber pulse. Clinics cut grafts along the visible fibers. Dye added during cultivation marks the direction of growth and the age of each layer.

    The form growing among Olven's stored roots tolerates cool air and binds directly to living bark.

    Its threads transmit touch through the root surface. A cut on one bound root now produces contraction in neighboring plants across the transfer room, and Olven has withheld the first harvest while Seren compares the lineage.
  PROSE
end

relate :rel_velin_sourced_from_olven, :sourced_from, :velin, :olven do
  prose "Olven grows and prepares velin in its humid medicinal chambers."
end


relate :rel_velin_attuned_to_resonance, :attuned_to, :velin, :resonance do
  prose "A slow kinetic pulse aligns velin fibers while they grow."
end
