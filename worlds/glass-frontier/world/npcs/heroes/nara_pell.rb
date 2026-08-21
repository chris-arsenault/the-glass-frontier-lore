npc :nara_pell do
  name "Nara Pell"
  subkind :specialist
  occupation "Biological deposit custodian"
  specialty "Matching recovered cultures to safe trial conditions"
  species "human"
  culture "Hab-Worlder"
  status :complete
  tags :ecology, :archives, :materials
  prominence :marginal

  prose <<~PROSE
    Nara Pell assigns every new biological deposit at #{ref :seren, "Seren"} to a trial bed. She reads cultivation accounts for details that formal inventories discard: which hand turns the soil, how long a vat stays open after feeding, what color appears before a useful mold fruits.

    Pell grew up in the warm gardens and trained in the cold vaults. She keeps duplicate notebooks in both places, one written beside living cultures and one copied under clean-room conditions. Differences between the two versions become questions for the depositor.

    She closed the current blue-loam exchange after noticing that patients from one bed described warmth and patients from the next described a persistent pulse. Her six matched cultures now occupy separate rooms around Seren's axis.
  PROSE
end

relate :rel_nara_pell_located_in_seren, :located_in, :nara_pell, :seren, since: 2435 do
  prose "Nara Pell receives and trials biological deposits at Seren."
end
