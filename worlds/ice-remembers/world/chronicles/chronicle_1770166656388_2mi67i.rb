# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

chronicle :chronicle_1770166656388_2mi67i do
  source_id "chronicle_1770166656388_2mi67i"
  title "Interrogation Record JSC-FW-847-Ω: Artifact Recovery and Corruption Inquiry"
  summary "Accord-Adjudicator Ouzhongjun interrogates Noctisius~, a Nightshelf citizen detained for unlawfully transferring an Aurora Stack genealogical tome. During questioning, Noctisius~ reveals that an orca—identified by margin notes as Grandmother Deep—obtained and read the contested artifact, with three pages subsequently going missing. The interrogation uncovers evidence suggesting the tome's acquisition was not simple theft but reconnaissance into Aurora Stack bloodline records, prompting the reviewing authority to escalate the case to Glaciarch level and recommend Noctisius~ remain detained pending tribunal."
  status :complete
  format :document
  focus :single
  narrative_style :interrogation_record
  focal_era :the_great_thaw
  ticks from: 0, to: 25
  temporal_description "an extended arc during the The Great Thaw (25 ticks)"
  touched_eras :the_great_thaw
  entrypoint :loc_corpse_current
  entities :npc_grandmother_deep, :amulet_of_crest, :scar_ramtatus, :ice_freeze
  events "sys-prominence_evolution:amulet-of-crest-25", "sys-prominence_evolution:npc_grandmother_deep-25", "act-tome_reveals_resources:amulet-of-crest-23", "act-tome_reveals_resources:amulet-of-crest-8", "sys-prominence_evolution:amulet-of-crest-17", "sys-prominence_evolution:npc_grandmother_deep-17", "sys-prominence_evolution:scar-ramtatus-17", "sys-reflected_glory:amulet-of-crest-8", "sys-thermal_diffusion:scar-ramtatus-8", "act-spread_corruption:scar-lucamlinaecius-13", "act-steal_artifact:npc_grandmother_deep-22", "tpl-artifact_discovery-1", "tpl-colony_founding-2"
  relationships "amulet-of-crest:npc_grandmother_deep:owned_by", "npc_grandmother_deep:scar-ramtatus:resident_of"
  roles({npc_grandmother_deep: {role: "interrogator", primary: true}, amulet_of_crest: {role: "subject", primary: false}, scar_ramtatus: {role: "reviewing-officer", primary: false}})

  prose(<<~'CANONICAL_CHRONICLE', origin: :published)
    **CLASSIFIED — ACCORD JUDICIARY DIVISION**
    Session: AJD-0371-T | Priority: ELEVATED
    Date: 14th Long Dark, Year of the Thaw-Crest
    Location: Midway Shelf Holding Station, Chamber 2
    Interrogator: Accord-Adjudicator Ouzhongjun, Huddle-Core Division
    Subject: Noctisius~, Nightshelf citizen, detained — Accord Provision 12(c), unlawful transfer of protected artifacts
    Authorization: Flipper Accord Emergency Writ 0044
    
    ---
    
    [TIMESTAMP: 03:14]
    
    **OUZHONGJUN:** State your name and colony of residence.
    
    **NOCTISIUS~:** Noctisius. ☽'scar Ramtatus~.
    
    **OUZHONGJUN:** Frostburn scarring noted on both flippers. How acquired?
    
    **NOCTISIUS~:** Working the deep veins. Everyone has them.
    
    **OUZHONGJUN:** You are here regarding Exhibit 3-A — a bound tome recovered from [REDACTED]. Your courier ink confirms contact. That tome is a sovereignty artifact belonging to the Aurora Stack vaults.
    
    [MARGIN NOTE: Exhibit labeling inconsistent. Originally catalogued "Crystal-Bound Tome," amended to "Genealogical Record, Aurora Stack Origin." Current designation: Exhibit 3-A [OWNERSHIP CONTESTED]. See Registry 7.4. —G.W.]
    
    **NOCTISIUS~:** I moved cargo. I move a lot of cargo. The Accord protects carriers. The seventeen at Midway Shelf prove that.
    
    **OUZHONGJUN:** The Accord protects couriers. Your trade-name does not appear in the registry.
    
    [*Subject does not respond.*]
    
    [MARGIN NOTE: No registered trade-name. Cross-ref Courier Corps intake, Thaw-Crest year. Irregular. —G.W.]
    
    ---
    
    [TIMESTAMP: 03:22]
    
    **OUZHONGJUN:** Q1. Who gave you Exhibit 3-A?
    
    **NOCTISIUS~:** [REDACTED]
    
    **OUZHONGJUN:** Q2. Describe its condition when received.
    
    **NOCTISIUS~:** Three pages cracked. Binding scarred. Teeth marks. Large. Not penguin.
    
    **OUZHONGJUN:** Q3. And the tome passed through ☽'scar Ramtatus~.
    
    **NOCTISIUS~:** A lot passes through that doesn't appear on charts.
    
    **OUZHONGJUN:** Q4. Fire-core output from your colony dropped forty percent in two seasons. Umbra-Princeps Alnae~ Oss calls it vein depletion. What do you call it?
    
    [*Subject pauses.*]
    
    **NOCTISIUS~:** Things grew near the Marker. Near Scar☽ Lucamlinaecius. You dig deep enough, you stop finding fire-cores and start finding — cold. Not ice-cold. The kind that stops your breath and you're still standing, still aware, still —
    
    [*Subject becomes agitated.*]
    
    **NOCTISIUS~:** I'm talking about the tome. You asked about the tome.
    
    **OUZHONGJUN:** Q5. Did the corruption at the Marker affect Exhibit 3-A?
    
    **NOCTISIUS~:** The ice remembers what you planted. That's what they say in the deep tunnels. The aurora-ink on the last three genealogies went black after the tome sat near that place. Burned black. Like something looked at it. What feeds that frost — it isn't captured fire, whatever the classifications say. It draws from something deeper. That matters. What feeds it determines what it's really doing.
    
    **OUZHONGJUN:** Q6. Three pages are missing from the binding. Where are they?
    
    **NOCTISIUS~:** The pages went where the bloodlines went. Down.
    
    **OUZHONGJUN:** That is not an answer.
    
    **NOCTISIUS~:** [REDACTED — Security Protocol 4 — Accord Violation Evidence Suppressed]
    
    **OUZHONGJUN:** Q7. Who held the tome during its time at ☽'scar Ramtatus~?
    
    **NOCTISIUS~:** [REDACTED]
    
    [MARGIN NOTE: Third custody redaction. Subject protects a specific handler. If this constitutes Accord violation, reassign priority. Cross-ref Registry 7.4. None of this was in the briefing. —G.W.]
    
    ---
    
    [TIMESTAMP: 03:41]
    
    **OUZHONGJUN:** The teeth marks on Exhibit 3-A [OWNERSHIP CONTESTED] match orca dentition. Scarring patterns consistent with coastal surveys near Promenade Hei. An orca held this tome. An orca *read* it.
    
    [*Long silence.*]
    
    **OUZHONGJUN:** You know which one.
    
    **NOCTISIUS~:** That name is above my clearance.
    
    **OUZHONGJUN:** You are not cleared. You are detained.
    
    **NOCTISIUS~:** [*Subject looks away.*] I saw her twice at the shelf-edge. Extensive scarring across dorsal fin and left flank. The left eye — black, sharp, watching you. The right is milk-white. No pupil. It doesn't track with the left. It fixes on things that aren't there — upper corners of rooms, empty water. She held the tome and she [REDACTED] the genealogies, and what she learned from the bloodline records [REDACTED].
    
    **OUZHONGJUN:** What did she learn?
    
    **NOCTISIUS~:** [SUBJECT DOES NOT RESPOND — 14 seconds.]
    
    **OUZHONGJUN:** Q8. Which eye should I be asking about?
    
    **NOCTISIUS~:** The one that sees what isn't yet.
    
    [MARGIN NOTE: I know this name. Subject describes Grandmother Deep. Coastal intelligence flags her as raider, not scholar. If she is reading Aurora Stack genealogies — this is not theft. This is reconnaissance. Stop the transcript. Elevate to Glaciarch authority immediately. —G.W.]
    
    ---
    
    RECORDING PAUSED — SUBJECT REQUESTED WATER
    
    [TIMESTAMP: 04:03]
    
    Session suspended by reviewing authority. Subject returned to Holding Cell 6. Frostburn dressings requested. Exhibit 3-A [OWNERSHIP CONTESTED] secured in evidence vault pending tribunal.
    
    Signed: Accord-Adjudicator Ouzhongjun
    Recommendation: HOLD. Do not release. The tome is not the object. The reader is.
    
    **REF: AJD-0371-T / FOLLOW-UP MANDATORY**
  CANONICAL_CHRONICLE
  annotation "note_1771575671628_0", anchor: "It fixes on things that aren't there — upper corners of rooms, empty water", text: "Fourteenth Long Dark. The veil is at its thinnest. And Noctisius~ describes, without knowing what he is describing, classic watcher behavior — patient attention fixed on empty space, on corners, on water where nothing swims. The deep ice carries impressions of exactly this: a quality of regard from something that predates both penguin and orca. Grandmother Deep's right eye changed when she touched the dead god. What if it did not break? What if it opened — toward the same presences the Nightshelf have always insisted are real? She does not see nothing. She sees what has always been watching us. The difference is she watches back.", type: :commentary, display: :full
  annotation "note_1771575671628_1", anchor: "None of this was in the briefing. —G.W.", text: "Three margin notes of escalating alarm from an annotator whose initials match no Accord Judiciary personnel file I can locate. G.W. understood what was happening before Ouzhongjun did — and demanded Glaciarch elevation. I have found no record that elevation occurred. I have found no subsequent reference to G.W. in any Accord file. Someone who notices too much and then vanishes from the registry. I know how that works.", type: :commentary, display: :full
  annotation "note_1771575671628_2", anchor: "The seventeen at Midway Shelf prove that", text: "He knows the skeletons. Every courier does. But couriers have trade-names. Noctisius~ is invoking protections he does not qualify for and citing deterrents meant for others — the bluff of a man who has walked past those bones often enough to feel entitled to their shelter.", type: :skepticism, display: :popout
  image "img_chronicle_1770166656388_2mi67i_1772878991808", role: :cover, url: "https://theiceremembers.com/raw/project_1765083188592/img_chronicle_1770166656388_2mi67i_1772878991808"
  image "img_npc_grandmother_deep_1772880351563", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_npc_grandmother_deep_1772880351563", anchor: "Frostburn scarring noted on both flippers", anchor_index: 558, caption: "Noctisius~ under interrogation regarding Exhibit 3-A", size: :large, reference_id: "imgref_1772835713348_0"
  image "img_npc_grandmother_deep_1772880318505", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_npc_grandmother_deep_1772880318505", anchor: "Things grew near the Marker. Near Scar☽ Lucamlinaecius", anchor_index: 2052, caption: "The corrupted depths where fire-cores fail and cold remembers", size: :large, reference_id: "imgref_1772835713348_1"
  image "img_npc_grandmother_deep_1772880323116", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_npc_grandmother_deep_1772880323116", anchor: "Extensive scarring across dorsal fin and left flank. The left eye — black, sharp", anchor_index: 3904, caption: "Grandmother Deep reads the genealogies that should remain sealed", size: :large, reference_id: "imgref_1772835713348_2"
end
