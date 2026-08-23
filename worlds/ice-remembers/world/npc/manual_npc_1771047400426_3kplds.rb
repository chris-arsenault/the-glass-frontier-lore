# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

npc :manual_npc_1771047400426_3kplds do
  title "Umbraae~"
  source_id "manual_npc_1771047400426_3kplds"
  subkind :merchant
  summary "Presiding judge of the Shadow Parliament who held the tribunal seat for nine winters and oversaw the formal dissolution of the Midnight Claws."
  status :complete
  prominence :recognized
  tags :nightshelf
  source_kind "npc"
  source_subtype "merchant"
  source_culture "nightshelf"
  source_status "historical"
  source_prominence 2
  source_tags({})
  source_created_at 1771047400426
  source_era "the-clever-ice-age"
  cultural_origin "Nightshelf"
  world_status "historical"

  prose(<<~'CANONICAL_PROSE', origin: :published)
    ## Role
    
    Presiding chair of the Shadow Parliament, the Nightshelf's judicial body, for nine winters. Umbraae~ is defined in the record almost entirely by a single proceeding: the tribunal that formally dissolved the Midnight Claws, a syndicate charged under *Iudicium∴culum* with thirty winters of unsanctioned governance, fire-core diversion, and the disappearance of eleven colony members.
    
    ## The Claws Tribunal
    
    Chief Fire Keeper Velumeth~ presented evidence including a ledger documenting 1,100 diverted fire-cores and the Claws' monopolistic control of the Glow-Fissure. Witnesses testified to both the organization's corruption and its role in sustaining settlements during supply failures — a complication the verdict would have to accommodate.
    
    Umbraae~ dissolved the Midnight Claws and sentenced surviving members to supervised labor-service above the third descent level, rejecting the harsher option of labor-depth conscription. The sentence split the difference between justice and institutional self-preservation, because Umbraae~ simultaneously charged the council tier itself with complicity — its quiet absorption of filed courier reports had allowed the Claws to operate for three decades. She ordered a separate inquiry under the same statute.
    
    She transferred Glow-Fissure guard posts to Fire Keeper authority and gave them three days to establish a rotation. The interval was precise: it matched the period after which Claws guards had historically requested reassignment. She notices what others miss.
    
    ## Assessment
    
    The thirty winters and eleven disappearances both deserve the skepticism I have applied to round figures throughout this edition, but I have no competing count to offer. The tribunal record, such as it is, remains the best-documented Nightshelf judicial proceeding in the archive. Umbraae~ has never been described as kind. The record does not require her to be.
  CANONICAL_PROSE
  annotation "note_1771593338145_0", anchor: "She transferred Glow-Fissure guard posts to Fire Keeper authority and gave them three days to establish a rotation. The interval was precise: it matched the period after which Claws guards had historically requested reassignment.", text: "Three days. She knew the exact interval at which proximity to the Fissure broke even loyal operatives — the point where guard duty became something closer to exposure. And she gave the Fire Keepers exactly that window, no more. Not cruelty. Operational literacy. She had read the reassignment logs closely enough to know that what the Claws endured at that post was not discipline but slow contamination, and she built her transition timeline around it. That is not in the verdict. It is in the rotation schedule, which no one reads. I read it.", type: :commentary, display: :full
  annotation "note_1771593338145_1", anchor: "a syndicate charged under *Iudicium∴culum* with thirty winters of unsanctioned governance, fire-core diversion, and the disappearance of eleven colony members", text: "Nyla's confession before the Aurora Stack council came after the tribunal, not before — the Claws were already dissolved when she spoke. She confessed to a body that had no jurisdiction over her, in a colony that was not hers, about a murder the Shadow Parliament had not charged. Whatever drove that confession, it was not the tribunal's outcome. Umbraae~ sentenced an organization. Nyla sentenced herself. The two proceedings do not connect the way the chronology tempts you to assume.", type: :correction, display: :full, source_anchor: "a syndicate charged under Iudicium∴culum with thirty winters of unsanctioned governance, fire-core diversion, and the disappearance of eleven colony members"
  image "img_manual_npc_1771047400426_3kplds_1772874589915", role: :entity, url: "https://theiceremembers.com/raw/project_1765083188592/img_manual_npc_1771047400426_3kplds_1772874589915"
  log "2026-08-23 — retargeted stale published note anchors note_1771593338145_1 to their surviving passages; each original remains in source_anchor."
end
