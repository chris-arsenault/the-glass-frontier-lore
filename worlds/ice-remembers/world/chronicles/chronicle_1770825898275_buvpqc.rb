# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

chronicle :chronicle_1770825898275_buvpqc do
  source_id "chronicle_1770825898275_buvpqc"
  title "Objects that Outlived Their Keepers"
  summary "Frost-ward Xumaijang, an experienced archivist, compiled a registry of three significant artifacts for the Accord judiciary. The Crystalline Lineage, a genealogical tome with aurora-crystal pages discovered at the Veil Vents, is deteriorating under Keeper Hollows' custody and requires recharging. The Dreaming Tooth, a mysterious bone relic held by the Wake-Singers, emits a dangerous resonance that causes shared dreams and has resulted in multiple deaths among its handlers. Sholong's Codex, a pristine genealogical-celestial work with rearranging text, remains in contested provenance but undamaged. Xumaijang notes with concern that declining geothermal activity threatens the artifacts' survival and hints at mysterious new items requiring investigation."
  status :complete
  format :document
  focus :ensemble
  narrative_style :artisans_catalogue
  focal_era :the_great_thaw
  ticks from: 0, to: 22
  temporal_description "an extended arc during the The Great Thaw (22 ticks)"
  touched_eras :the_great_thaw
  entrypoint :artifact_god_tooth
  entities :artifact_god_tooth, :amulet_of_crest, :sholong_s_codex, :loc_veil_vents, :npc_keeper_hollows, :snowdrift_numb_astral, :abyss_collapse_tide
  events "act-steal_artifact:npc_grandmother_deep-22", "act-spread_corruption:loc_forgotten_shore-11", "act-steal_artifact:npc_grandmother_deep-1", "tpl-artifact_discovery-1"
  relationships "amulet-of-crest:loc_veil_vents:stored_at", "amulet-of-crest:npc_keeper_hollows:owned_by", "artifact_god_tooth:abyss-collapse-tide:participant_in", "artifact_god_tooth:snowdrift-numb-astral:empowered_by"
  roles({artifact_god_tooth: {role: "catalogued-item", primary: false}, amulet_of_crest: {role: "catalogued-item", primary: true}, sholong_s_codex: {role: "catalogued-item", primary: true}, loc_veil_vents: {role: "provenance-place", primary: true}, npc_keeper_hollows: {role: "creator-or-owner", primary: false}, snowdrift_numb_astral: {role: "associated-power", primary: false}})

  prose(<<~'CANONICAL_CHRONICLE', origin: :published)
    # CATALOGUE OF NOTABLE ARTIFACTS
    ## Second Season of the Open Water — Aurora Stack Material Registry
    
    **Compiled by Frost-ward Xumaijang, Archivist**
    
    This registry documents three artifacts of significant cultural and material value currently within or adjacent to Aurora Stack provenance, compiled at the Accord judiciary's request. My authority extends only to what I have personally inspected; one entry is assembled from secondary accounts, noted accordingly. Credentials: fourteen cycles as ice-reader and materials assessor; sole surviving cataloguer from the Veil Vent survey after the thermal collapse took my colleagues' records and, in two cases, my colleagues. I note what I find. I do not embellish.
    
    ---
    
    ### ENTRY 01 — THE CRYSTALLINE LINEAGE
    
    **Type:** Genealogical tome. **Material:** Eternal ice-binding; aurora-crystal pages. **Dimensions:** Two flipper-spans across, open. **Luminance:** faded; three pages functionally dead.
    
    Discovered at the Veil Vents, hidden within the mineral crust of the third fissure, wrapped in oilcloth predating living memory. Aurora-crystal pages inscribed with genealogies extending to the first thaw-water families; inscriptions respond with faint luminance when held by Aurora Stack blood. I have verified this. The glow is weak.
    
    Provenance incomplete. The tome passed into orca possession — Grandmother Deep acquired it during confusion following the Abyss Collapse Tide when ownership records boiled with the trade routes. Her teeth-marks scar the binding; three pages are spider-webbed with fractures consistent with orca jaw-pressure. Three further pages: missing entirely.
    
    Currently held by Keeper Hollows near the sealed ice-locks. His handling introduced secondary damage — aurora-ink along the spine burned black where his corrupted touch contacted the crystal. He trades access for fire-cores and sealed promises. He will not trade the tome itself. He will not bring it to the surface for recharging.
    
    Condition: deteriorating. I last inspected it nine tides ago. The final genealogies were legible. Barely.
    
    ---
    
    ### ENTRY 02 — THE DREAMING TOOTH
    
    **Type:** Relic; bone fragment. **Material:** Calcified tissue, unknown mega-fauna. **Dimensions:** Length of a penguin's forearm. **Luminance:** none. **Resonance:** active; frequency unmeasured.
    
    I have not held this item. No penguin has. It resides with the Wake-Singers at the Corpse Current's heart, beyond any registry's jurisdiction. My description derives from orca trade-intermediaries and one firsthand account — Achaiwei Rukar'Crest heard its hum from forty spans and refused to approach closer.
    
    Yellowed like old ice. Ridged with grooves scored fresh by the Abyss Collapse Tide when the ocean floor buckled. It hums at frequencies that settle in the flipper-bones. Handlers report shared dreams: warm darkness; something vast; patience. The resonance interacts with ice-memory consistent with the Snowdrift-numb phenomenon — involuntary cooling, boundary-thinning, impressions surfacing unbidden.
    
    Grandmother Deep acquired it during the same collapse that fractured the Lineage's provenance. The Wake-Singers lost three shamans and their attention simultaneously. See also: three previous wielders (deceased). Last known handler walked into the deep, did not surface.
    
    Handling precautions: do not handle. Do not approach. The precautions do not work.
    
    ---
    
    ### ENTRY 03 — SHOLONG'S CODEX
    
    **Type:** Genealogical-celestial codex. **Material:** Eternal ice-binding; aurora-glass pages. **Luminance:** active; strong.
    
    The finest intact aurora-glass work I have examined. Pages so thin they catch light like a held breath, inscribed with genealogies cross-referenced to celestial alignments proving bloodline-legitimacy through constellation-mapping. The text rearranges depending on the viewer's approach; I have confirmed this across three inspections and cannot explain it.
    
    Provenance clean, formally documented. Contested between factions whose claims I will not adjudicate — both would object to any specificity. Condition: pristine. The ice-binding shows no stress. The aurora-glass shows no fracture.
    
    I note this with unease. Nothing on the Berg stays pristine.
    
    ---
    
    ### CURATOR'S NOTES
    
    Three artifacts; two require active aurora for recharging. The Veil Vents' steam output has declined each season I have measured it. The oldest vent froze last winter. The Abyss Collapse Tide severed the orca salvage routes; provenance chains loop endlessly on the only land that exists. Destruction is the only way an entry closes permanently.
    
    I am seeking authentication for items referenced in Keeper Hollows' mining chart. The annotations change overnight in wet ink he denies writing.
    
    I do not look forward to that entry.
  CANONICAL_CHRONICLE
  annotation "note_1771574842657_0", anchor: "My description derives from orca trade-intermediaries", text: "The Wake-Singers are not trade-intermediaries. They are intelligent, coordinated raiders who worship a dead god — the same god whose jaw the Tooth was carved from — and conduct blood-rituals at the Corpse Current to wake it. Xumaijang's registry reduces this to a provenance complication because the Accord demands diplomatic language for entities beyond its jurisdiction. 'Acquired during confusion' is how a functionary records seizure when she cannot call it that.", type: :commentary, display: :full
  annotation "note_1771574842657_1", anchor: "took my colleagues' records and, in two cases, my colleagues", text: "Between commas. In a credentials paragraph. You list the dead as subordinate clauses because giving them their own sentence would require you to stop.", type: :tangent, display: :popout
  annotation "note_1771574842657_2", anchor: "Contested between factions whose claims I will not adjudicate", text: "She knew. The factions she would not name tore each other apart over this Codex within generations. Its destruction during the early Faction Wars left both colonies claiming legitimacy through competing readings of its final pages — pages she records here as pristine. Her refusal to specify was not diplomatic restraint. It was the only safe choice left.", type: :commentary, display: :popout
  image "img_chronicle_1770825898275_buvpqc_1772879302301", role: :cover, url: "https://theiceremembers.com/raw/project_1765083188592/img_chronicle_1770825898275_buvpqc_1772879302301"
  image "img_amulet-of-crest_1772881106467", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_amulet-of-crest_1772881106467", anchor: "Currently held by Keeper Hollows near the sealed ice-locks", anchor_index: 1633, caption: "Keeper Hollows guards the deteriorating Crystalline Lineage", size: :large, reference_id: "imgref_1772833514542_0"
  image "img_amulet-of-crest_1772881120487", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_amulet-of-crest_1772881120487", anchor: "Ridged with grooves scored fresh by the Abyss Collapse Tide", anchor_index: 2644, caption: "The Dreaming Tooth resonates at the Corpse Current's heart", size: :large, reference_id: "imgref_1772833514542_1"
  image "img_amulet-of-crest_1772881122252", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_amulet-of-crest_1772881122252", anchor: "The resonance interacts with ice-memory consistent with the Snowdrift-numb phenomenon", anchor_index: 2863, caption: "Involuntary cooling and boundary-thinning mark the artifact's influence", size: :medium, reference_id: "imgref_1772833514542_2"
end
