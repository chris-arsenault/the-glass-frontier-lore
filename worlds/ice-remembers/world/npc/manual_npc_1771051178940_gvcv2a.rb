# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

npc :manual_npc_1771051178940_gvcv2a do
  title "Iceholm ☽'Uclo'Sun"
  source_id "manual_npc_1771051178940_gvcv2a"
  subkind :outlaw
  summary "A Nightshelf outlaw trying to settle a fire-core claim her father left in storage vault nine, hampered by smudged ledger records and a shortage of witnesses who survived the eastern shaft flooding."
  status :complete
  prominence :marginal
  tags :nightshelf
  source_kind "npc"
  source_subtype "outlaw"
  source_culture "nightshelf"
  source_status "alive"
  source_prominence 1
  source_tags({})
  source_created_at 1771051178940
  source_era "the-frozen-peace"
  cultural_origin "Nightshelf"
  world_status "alive"

  prose(<<~'CANONICAL_PROSE', origin: :published)
    A Nightshelf outlaw attempting to settle a fire-core claim her father deposited in storage vault nine. The ledger entry recording the deposit is smudged beyond reliable verification, and the eastern shaft flooding — likely connected to the broader mine collapses documented elsewhere in this edition — killed or scattered the miners who could have confirmed the original count.
    
    Iceholm posted a notice on the board at the Profundor~ Tap seeking any surviving miner willing to verify the tally, offering a meal and a debt owed honestly. The modesty of the compensation suggests either genuine poverty or a careful awareness of what Nightshelf outlaws can openly promise.
    
    She is also seeking a bone-handled pressure gauge lost near the second thermal vent, which belonged to her mate. She describes it as holding no value except to her — a claim I am inclined to believe, as pressure gauges of that era are common enough to be worthless to anyone else.
  CANONICAL_PROSE
  annotation "note_1771594322070_0", anchor: "smudged beyond reliable verification", text: "Vault nine's custodianship transferred twice during the Profun∴lapsum destabilization. Ledger damage in contested vaults is not weathering. It is editing.", type: :skepticism, display: :popout
  annotation "note_1771594322070_1", anchor: "genuine poverty or a careful awareness", text: "False disjunction. An outlaw cannot offer fire-core payment, coin, or guild-backed credit without generating a ledger entry that incriminates both parties. \"A debt owed honestly\" is not modest compensation — it is the only compensation available outside the formal Nightshelf exchange apparatus. The phrasing in the main text implies she chose restraint from a range of options. She had no range. The offer is precisely calibrated to the single narrow channel an outlaw can use without killing the witness she needs.", type: :correction, display: :full
  image "img_manual_npc_1771051178940_gvcv2a_1772874885959", role: :entity, url: "https://theiceremembers.com/raw/project_1765083188592/img_manual_npc_1771051178940_gvcv2a_1772874885959"
end
