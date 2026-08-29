artifact :first_clean_plate do
  name "The First Clean Plate"
  summary "The First Clean Plate is a Pell-maintained wurm-bit built around the first intact mouth plate shed by the Stockpile Colony. Ratters use its marked yoke to grade later plates and train remote-cutter operators."
  subkind :machine
  type_of :wurm_bit
  function "Follows curved mineral and ringglass seams with a mounted glasswurm mouth plate"
  status :complete
  tags :salvage, :ringglass, :resonance, :trade, :danger
  prominence :recognized

  descriptive_identity(
    appearance: "A small clean glasswurm mouth plate in a forked yoke, with witness wires and Pell response marks " \
                "cut along both arms.",
    handling: "The operator opens a shallow notch and follows the witness wires as the plate turns toward the " \
              "clearest material boundary. The Assembly opens and cleans it after every demonstration.",
    risks: "Locking the yoke sends every change in the seam into the plate. Its repeated bite can also draw a living " \
           "glasswurm through connected debris."
  )

  prose <<~PROSE
    *The First Clean Plate* was built after the #{ref :pell_stockpile_colony, "Pell Stockpile Colony"} shed an intact juvenile mouth plate outside an active tunnel. Pell authorized its recovery without powered extraction and marked the yoke before allowing the bit onto an Assembly claim.

    Ratters use the tool on hand frames and remote cutters to grade later plates. Its curved bore and witness-wire movement define what buyers expect from a Pell bit. Unmarked imitations in Glasswake carry worked glass or plates taken from burrows nobody has charted.
  PROSE

  gm_note :appears, "The First Clean Plate is brought out when a disputed bit must be compared with the marked Pell response."
  gm_note :triggered_by, "Locking its yoke for a straight cut turns the reference tool into the clearest repeated feeding signal a glasswurm can follow."
  gm_note :complicates, "Every demonstration consumes wear on the one plate used to authenticate the growing market in replacements."
end

relate :rel_pell_assembly_maintains_wurm_bits, :maintains, :pell_freight_assembly, :first_clean_plate do
  prose "Pell Freight Assembly opens, marks, and services the reference bit after every use."
end
relate :rel_wurm_bit_derived_pell_stockpile_colony, :derived_from, :first_clean_plate, :pell_stockpile_colony do
  prose "The bit carries the first intact plate shed by the Pell Stockpile Colony outside an active tunnel."
end
