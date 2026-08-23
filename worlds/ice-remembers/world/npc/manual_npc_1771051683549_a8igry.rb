# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

npc :manual_npc_1771051683549_a8igry do
  title "Frost-ward Xumaijang"
  source_id "manual_npc_1771051683549_a8igry"
  subkind :hero
  summary "An Aurora Stack archivist and materials assessor with fourteen cycles of service, sole survivor of the Veil Vent survey's thermal collapse, who compiles artifact registries at the Accord judiciary's request."
  status :complete
  prominence :marginal
  tags :aurora_stack
  source_kind "npc"
  source_subtype "hero"
  source_culture "aurora-stack"
  source_status "alive"
  source_prominence 1
  source_tags({})
  source_created_at 1771051683549
  source_era "the-great-thaw"
  cultural_origin "Aurora Stack"
  world_status "alive"

  prose(<<~'CANONICAL_PROSE', origin: :published)
    Aurora Stack ice-reader and materials assessor, fourteen cycles in service. Sole surviving cataloguer from the Veil Vent survey — a geological assessment of the thermal fissures along the Berg's corruption network that ended in collapse, killing two colleagues and destroying the expedition's records with them. Xumaijang does not discuss the details.
    
    Xumaijang compiles artifact registries at the Accord judiciary's request, documenting provenance, material condition, and luminance ratings with a precision I recognize professionally. The registry "Objects that Outlived Their Keepers" assessed three significant items: the Crystalline Lineage, an aurora-crystal genealogical tome discovered at the Veil Vents, now deteriorating under Keeper Hollows' custody and requiring recharge; the Dreaming Tooth, a bone relic held by the Wake-Singers whose resonance has killed multiple handlers; and Sholong's Codex, a genealogical-celestial work in pristine condition with self-rearranging text and contested provenance. Xumaijang noted declining geothermal activity as a systemic threat to artifact preservation — a concern the fire-core supply records I have reviewed independently confirm.
    
    Xumaijang is separately investigating Keeper Hollows' mining chart, whose annotations reportedly change overnight in wet ink Hollows denies writing. That investigation remains incomplete.
  CANONICAL_PROSE
  annotation "note_1771594544785_0", anchor: "Objects that Outlived Their Keepers", text: "The judiciary accepted a registry bearing this title without remarking on it. Fourteen cycles of service, two colleagues dead in the collapse, the expedition records gone — and Xumaijang named the document not for the Accord, not for the artifacts, but for the fact of survival outlasting the survivors. You do not title a registry like that by accident. You title it like that because you have been sitting alone in a workroom cataloguing things that are still here, and thinking about who is not.", type: :commentary, display: :full
  annotation "note_1771594544785_1", anchor: "annotations reportedly change overnight in wet ink Hollows denies writing", text: "Wet ink. Not frost-impression, not echo-residue, not any recognized symptom of corruption bleed or ice-memory intrusion. Wet ink. Xumaijang is investigating this alone, which the judiciary either does not know or does not mind. The Veil Vents are an active corruption source. The last time a lone assessor conducted extended fieldwork adjacent to one, the thermal collapse killed everyone except Xumaijang.", type: :skepticism, display: :full
  image "img_manual_npc_1771051683549_a8igry_1772874929343", role: :entity, url: "https://theiceremembers.com/raw/project_1765083188592/img_manual_npc_1771051683549_a8igry_1772874929343"
end
