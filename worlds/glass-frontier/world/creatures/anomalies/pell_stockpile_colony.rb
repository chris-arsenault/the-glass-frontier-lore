creature :pell_stockpile_colony do
  name "The Pell Stockpile Colony"
  summary "The Pell Stockpile Colony is a juvenile glasswurm colony inside the rejected-material stack outside Pell Cut. Its tunnels have produced saleable plate while advancing toward an occupied sorting shed."
  subkind :anomaly
  type_of :shearwurm
  belongs_to :lifeform, :farborn
  status :complete
  tags :orbital, :salvage, :danger, :ringglass, :resonance
  prominence :recognized

  prose <<~PROSE
    A juvenile colony has entered the rejected-material stack outside #{ref :pell_cut, "Pell Cut"}. The stack contains damaged receiver plate, low-grade ringglass, and the ceramic breaks removed after the emergence. Yard crews have counted several separate eye belts and cannot determine whether they belong to one branching animal or a brood sharing tunnels.

    The colony has compacted part of the pile into saleable curved plate. It has also bored toward the foundation of an occupied sorting shed. Pell has closed the nearest bay, posted a plate bounty, and prohibited powered sounding until the shed is shored from the far side.
  PROSE

  gm_note :appears, "Fine dust moves along the stockpile wall in still air while separate eye belts cross its openings. Yard crews cannot tell whether they belong to one branching animal or a brood."
  gm_note :triggered_by, "Powered sounding, a repeated hammer, or a scan run twice draws the colony back along tunnels the yard has already cleared."
  gm_note :complicates, "The same tunnels have produced saleable curved plate and reached the foundation of an occupied sorting shed, so every profitable cut changes the shoring problem."
end

relate :rel_pell_stockpile_colony_inhabits_shear, :inhabits, :pell_stockpile_colony, :the_shear do
  prose "The colony reached Pell Cut through glasswurm-held debris from the Shear."
end
relate :rel_pell_stockpile_colony_manifests_pell_cut, :manifests_at, :pell_stockpile_colony, :pell_cut do
  prose "The colony occupies the rejected-material stack outside Pell Cut's receiving yards."
end
