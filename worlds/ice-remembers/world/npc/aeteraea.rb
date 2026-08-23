# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

npc :aeteraea do
  title "☽'aeteraea"
  source_id "aeteraea"
  subkind :merchant
  summary "☽'aeteraea is a Nightshelf merchant whose ledgers are written in code and whose silence is more valuable than any inventory. The ice witnessed something in her during the Faction Wars—elevation or curse, no one asks—and she's been hoarding secrets in the tunnels ever since. After the cleansing at Wane☽ Oncea destroyed her networks, she vanished into the deep tunnels."
  status :complete
  prominence :recognized
  tags :nightshelf, :trade, :magic, :ice_memory, :corruption
  source_kind "npc"
  source_subtype "merchant"
  source_culture "nightshelf"
  source_status "historical"
  source_prominence 2.234
  source_tags({"trade" => true, "culture" => "nightshelf", "mystical" => true, "secretive" => true, "ice_witnessed" => true, "corrupted" => true, "colony_remembered" => true, "cursed" => true})
  source_created_at 27
  source_era "the-great-thaw"
  cultural_origin "Nightshelf"
  world_status "historical"
  first_recorded 27

  prose(<<~'CANONICAL_PROSE', origin: :published)
    ## Trade and Influence
    
    ☽'aeteraea was a Nightshelf merchant operating from the lower markets of Nightfall Shelf through the ☽'ofund' Guild, a volcanic-trade faction rooted in the Great Thaw. Her listed inventory — fire-cores, crystal fragments — was secondary. Her actual commerce was information: tunnel stability reports, the names of Aurora Stack traders willing to violate the Flipper Accord, and knowledge of what the deep ice had begun to remember. Other merchants avoided her but could not afford to. She anticipated need before it was spoken.
    
    Her flippers bore scars she would not explain — old burns, or contact with something not meant to be held. She wore layered charcoal wraps and a fire-core amulet she kept deliberately cold.
    
    ## Doctrine and Patronage
    
    The ideas that became **Mandatum∴absconditu** — the Nightshelf doctrine sanctifying secrecy as survival — originated with ☽'aeteraea. Lovumruius~ Domina, who formalized the creed, learned to listen to the ice's old stories from ☽'aeteraea first. That connection afforded ☽'aeteraea protection. It also ensured her isolation.
    
    ## The Coded Ledgers
    
    Her ledger entries from the Faction Wars era remain on file at the ☽'ofund' Guild Registry, undecoded. They reference unnamed parties and unsanctioned trade routes corresponding to crystal shipment volumes that significantly exceed official guild documentation. The discrepancies surfaced during the ☽'glacial Crystalline~ Spiral incident at Terrace Momiou but were never formally investigated.
    
    ## Corruption and Disappearance
    
    ☽'aeteraea's trade networks ran through the corruption at Wane☽ Oncea, a Nightshelf settlement tainted by deep breach-point contamination. She communed openly with presences in the corrupted walls, mapping cold-burn thresholds and whisper-echo corridors — intelligence no uncorrupted merchant would seek. She called this contact *advantage*.
    
    When ☽'Sanctteinvaus, a Nightshelf carrier, brought the grimoire ☽'numu' Witness into Wane☽ Oncea, the resulting cleansing burned ☽'aeteraea's ledgers to pale blue-green flame and silenced the presences she had depended on. ☽'aeteraea walked into the tunnels below the fourth depth. She has not been seen since.
    
    The ice witnessed something in her during the Faction Wars — elevation or curse. No one still alive asks which.
  CANONICAL_PROSE
  annotation "note_1771579940621_0", anchor: "originated with ☽'aeteraea", text: "The deep-gallery inscriptions I flagged in my prior Mandatum∴absconditu annotation predate her listed era. Nightshelf scripture carved where it should not have been, older than the colony above it. She may have articulated what she found in the ice rather than what she conceived. Prophets who excavate are not the same as prophets who invent, and the distinction has theological consequences I declined to pursue in the main text because this entry is already doing enough work.", type: :skepticism, display: :popout
  annotation "note_1771579940621_1", anchor: "crystal shipment volumes that significantly exceed official guild documentation", text: "They exceed the *public* documentation. The second secret renegotiation of the Flipper Accord — recovered from administrative ice at depth sixteen — expanded crystal allocation quotas by roughly a third with no corresponding update to the published terms. Under that draft, her volumes may have been fully sanctioned. The discrepancy is real only if the Accord everyone cites is the Accord that governed trade. It was not. Three drafts say it was not.", type: :correction, display: :full
  annotation "note_1771579940621_2", anchor: "never formally investigated", text: "The manifests are in the Terrace Momiou administrative strata. Filed in triplicate. I noted this in the ☽'ofund' Guild entry. 'Never formally investigated' is doing unconscionable work in this sentence — it implies absence of evidence rather than refusal to look at evidence that was sitting in the open, annotated, and cross-referenced by its own authors.", type: :correction, display: :popout
  annotation "note_1771579940621_3", anchor: "walked into the tunnels below the fourth depth", text: "The Walking goes outward — onto the ice, into the frozen sea. She went down. I do not know what to call a compulsion that pulls toward the deep ice rather than away from the Berg entirely. The Nightshelf may have a term for it. If so, no one offered it when I asked.", type: :commentary, display: :popout
  image "img_aeteraea_1767901595693", role: :entity, url: "https://theiceremembers.com/raw/project_1765083188592/img_aeteraea_1767901595693"
end
