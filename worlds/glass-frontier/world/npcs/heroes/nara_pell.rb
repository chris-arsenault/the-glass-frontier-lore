npc :nara_pell do
  name "Nara Pell"
  summary "Nara Pell is Seren's biological-deposit custodian, assigning every new culture or seed stock to a trial bed."
  subkind :specialist
  occupation "Biological deposit custodian"
  specialty "Matching recovered cultures to safe trial conditions"
  species "human"
  identity_source :species, :humans
  identity_source :culture, :hab_worlder
  descriptive_identity disposition:
    "Pell opens with hands and hours — who turned the soil, how long the " \
    "vat stayed open, what color came before the mold fruited — and writes " \
    "any difference between accounts into both notebooks for the depositor " \
    "to answer later."
  culture "Hab-Worlder"
  status :complete
  tags :ecology, :archives, :materials
  prominence :marginal

  prose <<~PROSE
    Nara Pell assigns every new biological deposit at #{ref :seren, "Seren"} to a trial bed. She reads cultivation accounts for details that formal inventories discard: which hand turns the soil, how long a vat stays open after feeding, what color appears before a useful mold fruits.

    Pell grew up in the warm gardens and trained in the cold vaults. She keeps duplicate notebooks in both places, one written beside living cultures and one copied under clean-room conditions. Differences between the two versions become questions for the depositor.

    She closed the current blue-loam exchange after noticing that patients from one bed described warmth and patients from the next described a persistent pulse. Her six matched cultures now occupy separate rooms around Seren's axis.
  PROSE

  gm_note :appears, "Anyone bringing a living sample to #{ref :seren, "Seren"} meets Pell before they see a bed. She wants the cultivation account, and her questions are about hands and hours: who turned the soil, how long the vat stayed open, what color came before the mold fruited."
  gm_note :triggered_by, "A tidied or secondhand answer about where a culture was grown sends it to a bed matched to the declared source rather than the real one, and Pell writes the difference into both notebooks for the depositor to answer later."
  gm_note :complicates, "Six matched blue-loam cultures and Olven's velin lineages already fill Pell's days, so she buys her own attention back in errands: sit through a grower's feeding, carry a sealed case, bring her the account nobody wrote down."
end

relate :rel_nara_pell_located_in_seren, :located_in, :nara_pell, :seren, since: 2435 do
  prose "Nara Pell receives and trials biological deposits at Seren."
end
