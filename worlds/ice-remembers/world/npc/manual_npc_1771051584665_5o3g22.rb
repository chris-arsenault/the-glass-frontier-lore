# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

npc :manual_npc_1771051584665_5o3g22 do
  title "Frost-ward Yunjoushong zhu'Eyrie"
  source_id "manual_npc_1771051584665_5o3g22"
  subkind :mayor
  summary "An Aurora Stack auditor of the zhu'Eyrie lineage who was assigned to verify Shadow-Broker Nyla's confession and uncovered evidence implicating a council member in the Shattered-Spire Assault."
  status :complete
  prominence :marginal
  tags :aurora_stack
  source_kind "npc"
  source_subtype "mayor"
  source_culture "aurora-stack"
  source_status "alive"
  source_prominence 1
  source_tags({})
  source_created_at 1771051584665
  source_era "the-great-thaw"
  cultural_origin "Aurora Stack"
  world_status "alive"

  prose(<<~'CANONICAL_PROSE', origin: :published)
    ## Role and Investigation
    
    An auditor of the Aurora Stack, zhu'Eyrie lineage, assigned by Council member Amaang Skael'Compass to verify Shadow-Broker Nyla's confession in the Lens-Cathedral against Aurora Stack records. Yunjoushong is described in the single substantial source as compulsively precise — a counter of schedules, weights, discrepancies, and the pauses between sentences. Whether this characterization originated with Yunjoushong herself or was applied retrospectively to explain her findings is unclear.
    
    During Nyla's three-hour confession to thirty winters of smuggling and the murder of ☽'Ilun the Refracted — an ice-reader killed for what the Thaw-Paths Medallion had shown him — Yunjoushong noticed how quickly Nyla passed over ☽'Ilun's death. She pursued this discrepancy rather than the audit she was assigned. A Nightshelf courier at Midway Shelf confirmed weight irregularities in sealed fire-core crates *and* confirmed these had been reported directly to Amaang. A former Midnight Claws operative, Obscurum~, described a second map hidden in the Thaw-Paths Medallion: not smuggling routes but approach vectors through the eastern ridge, showing defenses dismantled from the inside before the Shattered-Spire Assault.
    
    Amaang dismissed the vectors as speculation from a criminal source. Yunjoushong returned to the Lens-Cathedral alone at third-watch and forced the medallion to yield its second reading in total darkness — seven attack paths converging on the Stack's spires, one originating inside the council tier along Amaang's assigned patrol route.
    
    ## Disappearance
    
    Yunjoushong wrapped the medallion in her auditor's sash and carried it past Midway Shelf, bypassing the council entirely. Nightshelf intelligence listed her last known position as the Midway Shelf approach. She had not reported since.
    
    The ☽'Tertius field assessment of the Glow-Fissure, compiled after these events, lists the Thaw-Paths Medallion as lost — confirming Yunjoushong successfully removed it from council custody. Where the medallion went after that, and whether Yunjoushong found the authority she sought, the record does not say.
  CANONICAL_PROSE
  annotation "note_1771594472155_0", anchor: "assigned by Council member Amaang Skael'Compass to verify Shadow-Broker Nyla's confession", text: "Amaang chose the auditor who would audit Amaang. Either she expected the zhu'Eyrie lineage to produce someone tractable — a miscalculation so severe it borders on self-destruction — or she expected Nyla's confession to contain nothing the audit couldn't absorb. If the latter, the confession was stage-managed, and Yunjoushong found what was deliberately left out of the script. Neither reading flatters anyone involved.", type: :commentary, display: :full
  annotation "note_1771594472155_1", anchor: "forced the medallion to yield its second reading in total darkness", text: "Aurora artifacts require aurora-light. A second reading in total darkness is not an aurora phenomenon — it is pressure-depth divination, blood-source or deep-source, the third magic. The medallion is a dual-source artifact, and no one in the entry remarks on this. The first reading was the mask. The dark reading was the face.", type: :pedantic, display: :full
  annotation "note_1771594472155_2", anchor: "Nightshelf intelligence listed her last known position as the Midway Shelf approach", text: "Why does the Nightshelf have a tracking record for an Aurora Stack auditor? She was expected, or she was already theirs. The phrasing — 'last known position' — is operational language, not diplomatic courtesy.", type: :skepticism, display: :popout
  image "img_manual_npc_1771051584665_5o3g22_1772874914709", role: :entity, url: "https://theiceremembers.com/raw/project_1765083188592/img_manual_npc_1771051584665_5o3g22_1772874914709"
end
