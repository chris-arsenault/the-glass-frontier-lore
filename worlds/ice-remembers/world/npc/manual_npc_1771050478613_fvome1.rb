# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

npc :manual_npc_1771050478613_fvome1 do
  title "Ingniu Pelm'Realm"
  source_id "manual_npc_1771050478613_fvome1"
  subkind :hero
  summary "Ingniu Pelm'Realm is a Junior Archivist at the Aurora Stack Records Office who compiled the official record of the Shattered-Spire Assault's final hours from fragmentary survivor depositions and physical evidence."
  status :complete
  prominence :marginal
  tags :aurora_stack
  source_kind "npc"
  source_subtype "hero"
  source_culture "aurora-stack"
  source_status "alive"
  source_prominence 1
  source_tags({})
  source_created_at 1771050478613
  source_era "the-frozen-peace"
  cultural_origin "Aurora Stack"
  world_status "alive"

  prose(<<~'CANONICAL_PROSE', origin: :published)
    Junior Archivist at the Aurora Stack Records Office. Ingniu Pelm'Realm compiled the official archival entry documenting the final hours of the Shattered-Spire Assault — the orca siege that nearly destroyed Aurora Stack — working from fragmentary survivor depositions, E'frostlings damage assessments, physical evidence at the casting site, and testimony obtained from the orca commander Thung Thrakrek under Vestigium∴moria protocols.
    
    She personally reviewed the site where defenders unleashed the Grulkzul Omega Strike, the unauthorized fusion of Nightshelf fire-knowledge and blood-working that ended both the assault and its casters. She recorded twelve Midnight Claws defenders unaccounted for, with no means to determine whether that figure represented casters, casualties, or both, and left the name-fields open in the formal register. The crystal register containing the eastern corridor patrol roster had been destroyed in the assault. No surviving authority could adjudicate the discrepancies in her sources.
    
    A conscientious record-keeper working with inadequate materials. The open name-fields are the most honest thing in the document.
  CANONICAL_PROSE
  annotation "note_1771593883428_0", anchor: "twelve Midnight Claws defenders unaccounted for", text: "Twelve Nightshelf criminal operatives stationed in Aurora Stack's eastern corridor during a major orca siege. The entry calls them \"defenders.\" My Slaughter Moon annotation flagged the same pattern: Nightshelf operatives embedded in Aurora defensive positions, retrospectively classified as civilians or volunteers. The deep ice preserves coordination signatures from these deployments — signal-patterns consistent with prearranged Nightshelf intelligence operations, not spontaneous mutual aid. Ingniu had no access to that stratum. She recorded what she found. What she found had already been edited by the absence of anyone authorized to explain it.", type: :correction, display: :full
  annotation "note_1771593883428_1", anchor: "testimony obtained from the orca commander Thung Thrakrek under Vestigium∴moria protocols", text: "Vestigium∴moria was designed for penguin ice-memory resonance. Orca neurological architecture is fundamentally dissimilar. Whatever Ingniu extracted from Thung Thrakrek under that protocol, the error margins are unquantified and likely unquantifiable.", type: :skepticism, display: :popout
  image "img_manual_npc_1771050478613_fvome1_1772874738234", role: :entity, url: "https://theiceremembers.com/raw/project_1765083188592/img_manual_npc_1771050478613_fvome1_1772874738234"
end
