# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

chronicle :chronicle_1770691852747_bfzpt2 do
  source_id "chronicle_1770691852747_bfzpt2"
  title "Letters from the Drowned Ledge"
  summary "Hollows, isolated at Lock-Camp with dwindling fire-cores, writes to Mairae~ about a mysterious chart showing impossible routes and annotations in unknown handwriting that changes on its own. Mairae~ responds by sending six fire-cores via courier ☽'umbraoth and reveals that both correspondents are experiencing unexplained physical changes and that something beneath Hollows' location is communicating through structured knocking and counting. In his final letter, Hollows confirms the chart's handwriting changed while sealed away, reports the knocking has ceased and been replaced by counting, and hints at a patient, ancient presence below the locks that may be influencing their memories and bodies."
  status :complete
  format :document
  focus :ensemble
  narrative_style :collected_letters
  focal_era :the_faction_wars
  ticks from: 0, to: 67
  temporal_description "an epic saga spanning 2 eras, centered on the The Faction Wars"
  touched_eras :the_faction_wars, :the_great_thaw
  entrypoint :npc_keeper_hollows
  entities :npc_keeper_hollows, :veil_render_mairae, :threshold_born, :foedus_silenti
  events "tpl-faction_splinter-4", "tpl-hero_emergence-20", "act-seize_control:threshold-born-46", "act-steal_foreign_art:npc_keeper_hollows-53", "act-seize_control:threshold-born-67"
  relationships "veil-render-mairae:npc_keeper_hollows:taught_by"
  roles({npc_keeper_hollows: {role: "correspondent-a", primary: true}, veil_render_mairae: {role: "correspondent-b", primary: true}, threshold_born: {role: "mentioned-party", primary: false}, foedus_silenti: {role: "mentioned-party", primary: false}})

  prose(<<~'CANONICAL_CHRONICLE', origin: :published)
    ---
    
    *[Letter on repurposed mining chart paper, reverse side. Original survey lines visible beneath the writing. Margins smudged with fire-core site residue. One corner water-damaged, ink feathered into illegibility.]*
    
    Seventh of the Dim Month, Lock-Camp
    
    Mairae~,
    
    Three fire-cores left. Will last the week if I keep close to the stone and don't move much. I am not moving much.
    
    The Holdborn (ice-thresh) supply from the Ledge passage has gone quiet. You'll have heard. Their couriers stopped coming through the lower junction after the ☽'ofund' business — I won't write what I can't write, but the route is dead and so is my reserve. If you have contact with anyone still running cores through the Veil Vents approach, I would be grateful for the introduction. I would be grateful for fire enough to last the week after this one.
    
    The chart. I keep coming back to the chart. The fifth branch — you remember which — I held aurora-light to it again and more routes surfaced. Under things that should not have hollow beneath them. The annotations aren't mine. You know this. The ink does something in the dark that ink should not do.
    
    I have been well otherwise. The Claws leave rations. They have stopped trying to drag me.
    
    The knocking below the locks has changed. Thirteen, then silence, then twenty-one. Patient. Structured. I am keeping a log.
    
    I would like to hear your voice, even written.
    
    Hollows
    
    *[Postscript, smaller hand, cramped at the bottom margin:]* Someone was counting with me last night. There was no one here.
    
    ---
    
    *[Letter on pale crystallography stock, faintly iridescent. Bioluminescent courier marks along the fold. Faint residue of aurora-crystal dust in the creases. Script precise, each letter placed like a facet cut.]*
    
    Fourteenth of the Dim Month, Veil-works
    
    Hollows,
    
    A proverb about fire: *the flame that remembers the vein remembers also what the vein consumed.* You taught me that. I suspect you have forgotten teaching it, which is itself instruction.
    
    I am sending six fire-cores with ☽'umbraoth, who owes me a debt she would prefer I not describe. She will take the Veil Vents approach. Do not ask her about the Holdborn (ice-thresh) couriers — she will not answer and it will cost you the goodwill. I will say only that Sholong's Codex stamps do not buy passage where they once did, and leave the rest to your —
    
    The old trouble. I cannot write what the silence law will not let me write. But: the crystals I work with now hold colors I have not catalogued. I bend light through formations that were not there when I learned to bend light. Something in the ice is *newer* than the ice. You would understand what I mean if you could see my work-table.
    
    I do not visit the memorial. You have not asked. I notice you have not asked.
    
    The chart. Hollows. The handwriting that is not yours — when did it last *change?* I ask with the precision of someone who needs to know for professional reasons, not the precision of someone who is afraid.
    
    I hear your voice when I read your letters. That is enough for now.
    
    Walk close to the stone.
    
    Mairae~
    
    *[A single line, added below the signature in slightly different pressure:]* My left flipper has begun to ache in a pattern. I will not describe the pattern.
    
    ---
    
    *[Mining chart paper again, but the survey lines on the reverse now appear to show routes not present on the previous letter's stock. Fire-core soot heavier. Water damage has advanced. Handwriting subtly larger, less controlled.]*
    
    Twenty-second of the Dim Month, Lock-Camp
    
    Mairae~,
    
    ☽'umbraoth came. Six cores. I am rich. I am warm. I did not ask about the Holdborn (ice-thresh) business. She looked at the sealed entrance for a long time and said nothing, which told me everything about what the Claws have been saying about me.
    
    The handwriting on the chart last changed on the eleventh. I know because I had wrapped it in the oilcloth and put it under the stone and gone to sleep and when I woke the oilcloth was open. New annotations. A branch beneath the Still Pools going down farther than the numbers I am allowed to write. The ink was still wet.
    
    Your proverb about the flame. I taught you that wrong. The true ending is *what the vein consumed, the vein becomes.* I don't know why I taught it wrong. I don't know why I remember the right version now.
    
    The knocking below the locks has stopped.
    
    Now there is only counting.
    
    I will not say what the rhythm wants because I am not certain it is the rhythm that wants it. Something is very patient down there, Mairae~. Something has been patient longer than we have been alive.
    
    Your flipper. My flipper. The old trouble.
    
    Fire enough to last the week.
    
    Hollows
  CANONICAL_CHRONICLE
  annotation "note_1771580587028_0", anchor: "crystals I work with now hold colors I have not catalogued", text: "The Dim Month. The Long Dark approaching. At this stage of the seasonal cycle the boundary between the living world and the ice-memory is already thinning — aurora ice-readers report enhanced but less controllable abilities, and a Nightshelf crystallographer working at depth would be among the first to feel the shift. Mairae~ is not describing a new property of her crystals. She is describing what happens to perception when the veil begins to draw back and the ice starts remembering in directions it should not. 'Newer than the ice' is exactly what veil-thinned impressions look like to someone trained to read them as material rather than spiritual phenomena.", type: :commentary, display: :full
  annotation "note_1771580587028_1", anchor: "Walk close to the stone", text: "She is not offering comfort. She is naming the risk without naming it. Hollows — isolated, grieving, decades without proper light, camped at the threshold of the place that took everything — fits every known profile for the Walking. The Dim Month is when the compulsion begins to pull. 'Walk close to the stone' means *do not walk onto the ice.* In Nightshelf tradition, naming the Walking aloud is considered to invite it. Mairae~ knows what she is warding against. She has carried the weight of a colony that drowned. She knows what loss does to penguins in the dark.", type: :commentary, display: :full
  annotation "note_1771580587028_2", anchor: "The knocking below the locks has stopped", text: "My annotation on the Hollows entry called the silence after the knocking a cessation. It was not. It was a promotion — from requesting entry to something worse. Knocking is a question. Counting is preparation.", type: :skepticism, display: :popout
  annotation "note_1771580587028_3", anchor: "The ink was still wet", text: "The artifact survey — held in a separate archive — describes the same annotations as 'clearly his own.' I wrote a correction on this: the ☽'glacial Crystalline~ Spiral fractures the caster's memories and scatters them into ice, such that the writing self and the reading self are no longer contiguous. That explained the handwriting discrepancy. It does not explain wet ink on a chart wrapped in oilcloth while its owner slept. The Spiral fractures a *self*. It does not produce new annotations unprompted. Something else is writing.", type: :correction, display: :popout
  annotation "note_1771580587028_4", anchor: "My left flipper has begun to ache in a pattern", text: "She will not describe the pattern. My left flipper carries a frost-scar from the Whisper Galleries that I have never described either. The patterns are not the same — they cannot be — but they rhyme in ways I find difficult to dismiss as coincidence. The Nightshelf sent me a formal apology for what happened there. Mairae~ has no one to send hers to.", type: :tangent, display: :popout
  image "img_chronicle_1770691852747_bfzpt2_1772878803657", role: :cover, url: "https://theiceremembers.com/raw/project_1765083188592/img_chronicle_1770691852747_bfzpt2_1772878803657"
  image "img_npc_keeper_hollows_1772879793179", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_npc_keeper_hollows_1772879793179", anchor: "Three fire-cores left. Will last the week", anchor_index: 267, caption: "Hollows maintains their vigil in the depths, rationing precious fire-cores while studying the mysterious chart.", size: :medium, reference_id: "imgref_1772835746844_0"
  image "img_npc_keeper_hollows_1772879837082", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_npc_keeper_hollows_1772879837082", anchor: "Something in the ice is *newer* than the ice.", anchor_index: 2583, caption: "The chart reveals layers of annotation that predate the current keeper's understanding—something writes in the darkness.", size: :large, reference_id: "imgref_1772835746844_1"
  image "img_npc_keeper_hollows_1772879834808", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_npc_keeper_hollows_1772879834808", anchor: "If you have contact with anyone still running cores through the Veil Vents approach, I would be grateful for the introduction.", anchor_index: 638, caption: "The courier ☽'umbraoth carries fire through passages where the old routes have fallen silent.", size: :medium, reference_id: "imgref_1772835746844_2"
  image "img_npc_keeper_hollows_1772879888400", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_npc_keeper_hollows_1772879888400", anchor: "The knocking below the locks has stopped.", anchor_index: 4313, caption: "Something patient waits in the sealed depths, and the counting continues in silence.", size: :large, reference_id: "imgref_1772835746844_3"
end
