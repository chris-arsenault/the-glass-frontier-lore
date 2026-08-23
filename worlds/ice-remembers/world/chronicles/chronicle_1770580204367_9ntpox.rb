# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

chronicle :chronicle_1770580204367_9ntpox do
  source_id "chronicle_1770580204367_9ntpox"
  title "The Verdict Below"
  summary "The Shadow Parliament of The Berg, led by Presiding Chair Umbraae~, convenes to try the Midnight Claws organization for thirty winters of unsanctioned governance, resource diversion, and the disappearance of eleven colony members. Chief Fire Keeper Velumeth~ presents evidence of a ledger documenting 1,100 diverted fire-cores and the Claws' monopolistic control of the Glow-Fissure, while witnesses testify to both the organization's corruption and their essential role in sustaining settlements during supply failures. Umbraae~ dissolves the Midnight Claws and sentences surviving members to supervised labor-service above the third descent level, while also formally charging the council tier with complicity for suppressing courier reports, leaving the dangerous Glow-Fissure unguarded as the Fire Keepers assume control."
  status :complete
  format :story
  focus :ensemble
  narrative_style :trial_judgment
  focal_era :the_clever_ice_age
  ticks from: 0, to: 80
  temporal_description "an epic saga spanning 2 eras, centered on the The Clever Ice Age"
  touched_eras :the_clever_ice_age, :the_faction_wars
  entrypoint :loc_glow_fissure
  entities :loc_glow_fissure, :faction_midnight_claws, :nanaiamis_praefectus, :qingoqa_aihua_mist_wrought, :iudicium_culum, :tide_fall
  events "sys-control_collapse:faction_midnight_claws-38", "act-ideology_conquers:mandatum-absconditu-41", "act-spread_corruption:loc_nightfall_shelf-45", "sys-devout_believer_detector:faction_midnight_claws-41", "sys-ice_memory_witness:nanaiamis-praefectus-61", "act-seize_control:faction_midnight_claws-72", "act-cleanse_corruption:veil-render-mairae-80", "act-corrupt_location:drift-coalesce-glacial-79", "act-seize_control:faction_midnight_claws-68", "act-seize_control:faction_midnight_claws-80"
  relationships "faction_midnight_claws:loc_glow_fissure:controls", "nanaiamis-praefectus:faction_midnight_claws:member_of"
  roles({loc_glow_fissure: {role: "witness", primary: true}, faction_midnight_claws: {role: "judge", primary: false}, nanaiamis_praefectus: {role: "accused", primary: false}, qingoqa_aihua_mist_wrought: {role: "accuser", primary: false}, iudicium_culum: {role: "the-precedent", primary: true}})

  prose(<<~'CANONICAL_CHRONICLE', origin: :published)
    The fire-core behind Umbraae~ was dying. It cast her shadow long and amber across the half-circle of stone seats, and every guild-master who filed into the chamber measured its remaining life the way miners measure air — by feel, by dread. Three months, perhaps four. Shadows fell in the wrong direction, faces looked carved from the same volcanic rock as the walls, and the cold crept in along the floor where firelight couldn't reach.
    
    Umbraae~ sat in the presiding chair with her flippers flat on the stone armrests. She had held this seat for nine winters. The rock above pressed down with the weight of the entire Nightshelf, and she had learned not to think about it, the same way she had learned not to think about the fissure that split the bedrock three levels below. She could feel it, though. They all could. That cold-hum in the teeth.
    
    The seats nearest the accused's platform sat empty — proximity as confession, distance as cowardice. Only old Threnn of the ☽'ofund' Guild sat close, and Threnn was deaf in one ear and claimed not to know what he was sitting near.
    
    The accused's bench held three penguins: a courier, a tunnel-guard, and a ledger-keeper named Velumia~ whose bone-clasp fire-core amulet still glowed faintly at her throat. None of them were leadership. Nyla had confessed and then vanished into the deep tunnels, and the Midnight Claws sat headless before the Shadow Parliament like a body still twitching after the cut.
    
    Velumeth~, Chief Fire Keeper and appointed prosecutor, rose. His wrappings were formal — ash-gray, the seams tight enough to suggest a penguin who believed in the power of appearances. By the glow of his fire-core rod he unrolled the charges.
    
    "By invocation of Iudicium∴culum, ratified in the deep caverns after the orca infiltration, amended through the Mbra∴silentiu, the Thron∴mbra Fracta, and the Abys∴uina —" He let the names land. Every crisis that had widened the law's reach. "— the Shadow Parliament brings formal charges against the organization known as the Midnight Claws for thirty winters of unsanctioned governance, resource diversion, controlled corruption of a contested site, and the disappearance of no fewer than eleven colony members whose names are entered into the record."
    
    He read the names. The courier stared at the floor. The tunnel-guard stared at Velumeth~. Velumia~ sat with her flippers folded, still as carved ice.
    
    "The penalty range encompasses dissolution, forfeiture of all territorial claims, and sentencing of surviving members to labor-depth conscription." He paused. "There is no exile on The Berg. The tribunal is aware of what labor-depth means."
    
    "The defense is recognized," Umbraae~ said.
    
    Fluxium~ stood — a young guild-lawyer with mended wrappings and the look of someone who had taken this case because refusing it would have been worse. "The defense contests the applicability of Iudicium∴culum to internal governance disputes. The statute was written to address infiltration by external hostile forces, not —"
    
    "The objection is noted for the record," Umbraae~ said. "And overruled. Proceed to testimony."
    
    ---
    
    Velumeth~ called Qingoqa aihua'Mist-wrought first.
    
    She entered the way Aurora Stack penguins always entered Nightshelf spaces: upright, careful, as if the ceiling might come down. Her white robes caught the brazier-light and turned the color of old bone. The silver threading — mended, re-mended, a cartography of small repairs — glinted where the seams held. Her left flipper bore the crystalline scar from the Scared Shroud, and Umbraae~ saw three guild-masters lean subtly away from it.
    
    "You are Qingoqa aihua'Mist-wrought, ceremony organizer for the Aurora Stack, formerly of the joint surface-council?"
    
    "I am."
    
    "You fled The Berg's surface settlements two seasons before Tide Fall Blasphemy and returned after the Aurora Stack outposts at Starfall, Glint-reach, and the Lower Pinnacle were drowned. Is that correct?"
    
    "I left. Fled implies a pursuer."
    
    Velumeth~ let that sit. "When you returned, what did you find regarding fire-core supply to the surface?"
    
    "The supply had not stopped. That was what disturbed me. Three outposts gone, the Accord cracked like spring-ice, legitimate channels collapsed — and fire-cores still arrived. Sealed crates. No manifests. Delivered through tunnel routes that don't appear on any sanctioned map." She paused. "When a star continues burning after its fuel is spent, you look for what else it's consuming."
    
    Velumeth~ produced the ledger — a fire-core shipping record bound in treated seal-skin, its pages split into two columns. The left matched official Fire Keeper quotas. The right did not match anything. Quantities, dates, routes — all in a cipher the Fire Keepers had broken after Nyla's confession.
    
    "The right column documents thirty winters of diverted fire-cores. Cores pulled from the mines before quota-counting. Routed through Claws-controlled tunnels. Distributed at the Claws' discretion, outside any oversight the Accord provides. The discrepancy amounts to eleven hundred fire-cores." He let the number sit. Enough to heat a settlement for six winters. Enough to arm a garrison. Enough to matter.
    
    "The Claws did not steal fire-cores to sell them. They stole fire-cores to *need* them. They created dependency. Settlements that received Claws fire-cores during shortages learned that official channels could not be trusted — because the Claws had already bled those channels dry."
    
    He produced a map of the Glow-Fissure's upper reaches, hand-drawn on split stone, detailed down to individual guard-post rotations. It stopped at the third descent level. Below that, blank stone.
    
    "The Claws controlled access to the Fissure for twenty-two winters. They posted guards. They rotated shifts — four days on, because longer exposure produced —" He chose his word. "— changes. When the cartographer Kess attempted a full survey, she returned speaking in phonemes her own colony-mates couldn't parse. She left Nightshelf within a season. No one confirmed she reached Aurora Stack." He touched the blank space. "This was not containment. This was monopoly."
    
    "And what came out of it?" Fluxium~ asked from the defense bench. The chamber felt the answer in its teeth.
    
    Velumeth~ turned to Qingoqa. "In your capacity organizing joint ceremonies, did you encounter evidence that Fissure corruption had reached the surface?"
    
    She was quiet for three breaths. "I organize gatherings. I notice who attends. After Tide Fall Blasphemy when the Wake-Singers' ritual cracked the memorial ice and the waters rose —" She stopped. Started again, differently. "Korvik came up from the Nightshelf tunnels to pull drowning penguins from the melt. He didn't survive the second surge. Kaela Brightflank carries his token still." The chamber was silent. "The orca Wake-Singers exploited pressure-depth magic. The same source that bleeds upward through the Fissure. The Claws lived beside that source for a generation. When the constellation is in the house of the hunter, you don't ask why the wolves grew bold — you ask who left the gate unlatched."
    
    The metaphor hung in the volcanic air, cracking against stone acoustics like something from a different world.
    
    ---
    
    Fluxium~ called Nanaiamis~ Praefectus.
    
    She entered and every eye went to her flippers. A fine, continuous tremor — not nerves, not cold. Something the ice had put there and not taken back. She wore charcoal wrappings, forgettable, except for the fire-core amulet that caught the brazier-light and held it a beat too long. Nightshelf custom required witnesses to stand with flippers visible at their sides. The tremor was legible to everyone.
    
    Fluxium~ held up a single strand of ember-thread, pulled from a cloak hem, glowing faintly amber. "This was recovered from the Glow-Fissure's second guard post. Ember-thread glows in the presence of strong emotion — fear or deception, the texts disagree. Nanaiamis~, you wore this thread."
    
    "A thread wears itself." Nightshelf elliptical speech. A proverb that was also an evasion.
    
    "You served as herald for the Midnight Claws. You brokered the agreement between the ☽'ofund' Guild and the Claws that resulted in their seizure of Thrall☽ Vavmastius. You were present when the Directrix Mirror was displayed. You have, by your own admission, not looked at ice directly since."
    
    "The ice remembers what we buried. I was present. I remain present. These are not the same condition."
    
    Fluxium~ shifted tone. Gentler now, though gentleness was a tool and everyone knew it. "When the mines collapsed in the seventeenth winter and the official supply channels failed — who kept the fire-cores moving?"
    
    Her flippers shook. The ember-thread pulsed once.
    
    "The Claws."
    
    "When Veil-render Mairae~ attempted to cleanse the Glow-Fissure and no guild, no Fire Keeper, no parliament-sanctioned body would provide escort — who provided it?"
    
    "The Claws."
    
    "When reports of crate-weight discrepancies were filed by Claws couriers to the council tier — filed upward, voluntarily, through official channels — what happened?"
    
    Three guild-masters on the left arc studied their own flippers.
    
    "They were absorbed," Nanaiamis~ said. "Quietly. As such things are."
    
    "The corruption documented in the geological surveys — was it slower while the guards stood?"
    
    "Measurably." She looked at her own trembling flippers. "Some of us buried ourselves there so the rest wouldn't have to."
    
    Velumeth~ stood for cross-examination. "The Claws provided escort for Mairae~'s cleansing. Did the corruption return?"
    
    "Corruption returns. That is its nature."
    
    "But the wall remained. Under Claws control. And what passed through it — what came up from below the third descent level, where the map goes blank — that remained under Claws control as well."
    
    Nanaiamis~ touched something in her wrappings. A bone token, worn smooth. Her flippers steadied around it for one moment, then resumed their tremor.
    
    "I am a herald. I announce what has already been decided. I do not decide."
    
    "You announced festivals," Velumeth~ said. "Unless the defense wishes to amend the testimony to include festival announcement as the full extent of the witness's involvement."
    
    Someone laughed. Just once. The bitter kind. The ember-thread flared white for a half-breath, then dimmed.
    
    Umbraae~ watched Nanaiamis~ leave and noticed what no one else seemed to: the ember-thread in Fluxium~'s grip had gone dark.
    
    ---
    
    The half-circle was silent. The fire-core pulsed its slow, dying rhythm.
    
    Umbraae~ did not deliberate long. The facts had been deliberating for thirty winters; she was merely the instrument that brought them to ground.
    
    "Iudicium∴culum was written in terror," she said. "After the orca walked among us wearing our faces, learning our names. It was written to make shadow-work visible. The law does not ask whether it is convenient. It asks whether it was broken."
    
    She looked at the ledger. The two columns.
    
    "The Midnight Claws diverted fire-cores outside the Accord's authority. This is documented. They controlled access to a corruption site without sanctioned mandate. This is documented. Eleven colony members are missing. Their names are in the record."
    
    She paused.
    
    "It is also documented that when legitimate supply failed, Claws networks sustained settlements that would otherwise have gone cold. That Claws operatives sealed the deep-forge at ☽'slew Ravium~ during the orca incursion, an action no sanctioned body ordered or could have executed. That reports of irregularities were filed to this council and this council chose silence."
    
    None of the guild-masters looked back.
    
    "The Midnight Claws are dissolved. Territorial claims forfeit. Remaining members are sentenced to supervised labor-service —" She held the word. "— above the third descent level. Not labor-depth. This tribunal is not clean enough to send anyone to die."
    
    The courier exhaled. The tunnel-guard stared ahead. Velumia~ touched her bone-clasp amulet once, then folded her flippers and was still.
    
    Umbraae~ stood. "This tribunal also formally notes that the council tier's absorption of courier reports constituted complicity in the charged offenses. A separate inquiry will be convened." She did not smile. "Under Iudicium∴culum."
    
    The guild-masters dispersed into tunnels a little colder than the week before. Threnn had fallen asleep and was carried out. The bone-clasp and amulet sat on the accused's platform, small as a child's things.
    
    ---
    
    Umbraae~ sat alone with the dying fire-core.
    
    She thought about Kess the cartographer, who went down into the Fissure and came back wrong. About Korvik, who pulled drowning penguins from the melt and didn't survive the second surge. About the settlements going cold tonight because the smuggling routes had names attached and the names had been confessed.
    
    The verdict was already written — guilty under amended provision, not treason, the lesser charge carrying the lesser weight. Guard posts at the Glow-Fissure transferred to Fire Keeper authority effective immediately.
    
    In smaller marks at the bottom of the record she had added: *Fire Keeper command to establish Fissure rotation within three days or forfeit claim.*
    
    Three days. The same interval after which Claws guards had requested reassignment without explanation. She wanted the Fire Keepers to learn what the Claws had known — what it cost to stand between the colony and the thing in the deep, night after night, and call it crime.
    
    The fire-core gave one last pulse and went to ember. In the sudden dark, the cold-hum rose through the stone floor and into her teeth, and three levels below, the Glow-Fissure breathed its whale-song light into tunnels where no one was guarding it anymore — where no one would stand for three days, or longer, while the Fire Keepers debated jurisdiction and the corruption crept upward at whatever pace the ice allowed.
    
    The bone-clasp and the amulet stayed on the platform. Nobody collected them. In time the clerk would, or wouldn't, and they'd join the evidence boxes in the archive caverns where the ice remembers everything — theft and triage, corruption and containment, the visible law and its invisible cost — and doesn't distinguish between them.
  CANONICAL_CHRONICLE
  annotation "note_1771581513498_0", anchor: "The discrepancy amounts to eleven hundred fire-cores", text: "One thousand and seventy-three. I transcribed the column totals from this tribunal's own ledger, preserved in ice-impression, and they sum to 1,073. Twenty-seven cores disappeared between the evidence and the prosecution's rhetoric. Velumeth~ chose the round number. In my earlier annotation I wrote that one rounds up to convict. I was being generous. One rounds up because 'eleven hundred' sounds like institutional betrayal and 1,073 sounds like someone made an honest count — and honest counts invite honest questions about where twenty-seven cores went.", type: :correction, display: :full
  annotation "note_1771581513498_1", anchor: "After the orca walked among us wearing our faces, learning our names", text: "'Wearing our faces' describes deep-cover infiltration consistent with the full Orca Incursion, which postdates this era by a significant margin. The Clever Ice Age ice-memory I have catalogued shows hunt-songs, massing war-pods, shore-breaker formations — not penguins discovering their neighbor was an intelligence asset. Umbraae~ is reaching forward for language more terrifying than the available history provides. She may be citing a localized precursor event the broader timeline does not capture. She may also be a judge who understands that anachronism makes better rhetoric than accuracy. I flag this as probable source contamination — either the chronicler's, or the ice's own layering. The impression is too vivid for simple error.", type: :temporal, display: :full, source_anchor: "after the orca walked among us wearing our faces, learning our names"
  annotation "note_1771581513498_2", anchor: "the disappearance of no fewer than eleven colony members whose names are entered into the record", text: "'No fewer than' is prosecutorial for 'we stopped looking.' I want the seasonal breakdown. Claws operatives stationed at the Fissure — exposed to corruption, suffering by any clinical definition — would be acutely vulnerable to the Walking during Long Dark. The compulsion takes those who have lost much. If even two of these eleven walked out onto the ice because something in them broke, this tribunal is charging the Claws with deaths the Berg itself inflicted. There is no statute for that. There never has been.", type: :skepticism, display: :full
  annotation "note_1771581513498_3", anchor: "sealed the deep-forge at ☽'slew Ravium~ during the orca incursion", text: "Noted as an aside, as though sealing a deep-forge against a raid is a simple act of courage. It is not. Orca assaults follow tactical geometry — shore-breakers driving access channels, herders pushing defenders toward killing zones, finishers positioned below escape routes. Sealing the forge before the pattern completed requires knowing the pattern. No sanctioned body held that intelligence. The Claws did. The tribunal is not curious about how.", type: :commentary, display: :popout
  annotation "note_1771581513498_4", anchor: "four days on, because longer exposure produced", text: "Four-day scheduled rotations. But the verdict's own closing note gives three days as the interval at which guards requested reassignment. One number is administrative. The other is what the Fissure actually does to a body. The chronicler records both without noticing they disagree.", type: :pedantic, display: :popout
  annotation "note_1771581513498_5", anchor: "Nyla had confessed and then vanished into the deep tunnels", text: "Confessed to the Aurora Stack council. Vanished into tunnels the Nightshelf controls. This sequence requires either catastrophic negligence or quiet institutional permission, and the Nightshelf does not do catastrophic negligence.", type: :skepticism, display: :popout
  annotation "note_1771581513498_6", anchor: "the ember-thread in Fluxium~'s grip had gone dark", text: "The thread glows with strong emotion and died when its source left the room. The defense attorney's performed gentleness was exactly that — performance, confirmed by the evidence he was holding. That this observation lives only in Umbraae~'s private perception and not in the tribunal record may be the most precise thing in this entire account.", type: :commentary, display: :popout
  image "img_chronicle_1770580204367_9ntpox_1772878831160", role: :cover, url: "https://theiceremembers.com/raw/project_1765083188592/img_chronicle_1770580204367_9ntpox_1772878831160"
  image "img_loc_glow_fissure_1772879855829", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_loc_glow_fissure_1772879855829", anchor: "half-circle of stone seats, and every guild-master who filed into the chamber", anchor_index: 86, caption: "The Shadow Parliament convenes to judge the Midnight Claws", size: :large, reference_id: "imgref_1772835745589_0"
  image "img_loc_glow_fissure_1772879904795", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_loc_glow_fissure_1772879904795", anchor: "white robes caught the brazier-light and turned the color of old bone", anchor_index: 3302, caption: "Witness testimony: the Aurora Stack's account of diverted fire-cores", size: :medium, reference_id: "imgref_1772835745589_1"
  image "img_loc_glow_fissure_1772879899427", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_loc_glow_fissure_1772879899427", anchor: "fine, continuous tremor — not nerves, not cold. Something the ice had put there", anchor_index: 7315, caption: "The herald's tremor: witness to the Claws' buried bargains", size: :medium, reference_id: "imgref_1772835745589_2"
  image "img_loc_glow_fissure_1772879948251", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_loc_glow_fissure_1772879948251", anchor: "sat alone with the dying fire-core", anchor_index: 12474, caption: "Aftermath: the cost of justice rendered in darkness and silence", size: :large, reference_id: "imgref_1772835745589_3"
  log "2026-08-23 — retargeted stale published note anchors note_1771581513498_1 to their surviving passages; each original remains in source_anchor."
end
