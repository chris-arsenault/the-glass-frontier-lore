# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

npc :zhinghoua_lang_gleam do
  title "Zhinghoua lang'Gleam"
  source_id "zhinghoua-lang-gleam"
  subkind :merchant
  summary "Zhinghoua lang'Gleam is a merchant of the Aurora Stack who helped anchor Promenade Hei in its earliest days—not through heroics, but through the unglamorous work of establishing supply lines when everyone believed the colony would fail. Her obsessive investigation into fire-core certification discrepancies left her permanently unable to distinguish her own memories from the ice's."
  status :complete
  prominence :recognized
  tags :aurora_stack, :trade, :ice_memory
  source_kind "npc"
  source_subtype "merchant"
  source_culture "aurora-stack"
  source_status "alive"
  source_prominence 2.535
  source_tags({"settler" => true, "trade" => true, "culture" => "aurora-stack", "friendly" => true, "organized" => true, "colony_remembered" => true, "ice_witnessed" => true})
  source_created_at 202
  source_era "the-frozen-peace"
  cultural_origin "Aurora Stack"
  world_status "alive"
  first_recorded 202

  prose(<<~'CANONICAL_PROSE', origin: :published)
    ## Overview
    
    Zhinghoua lang'Gleam is an Aurora Stack merchant and certified thermal assessor based in Promenade Hei, the Frozen Peace-era surface colony founded by Grand Auditor Mingmeyang. She is a practitioner of Snowdrift-numb, the aurora-channeling discipline that permits reading thermal histories preserved in ice, as well as Ice-whisper and The Mechanism Refine. The summary appended to her file states she helped anchor the colony through "the unglamorous work of establishing supply lines when everyone believed the colony would fail." The ice-memory corroborates this in the way ice-memory corroborates most logistical achievements: without narrative, without names, just thermal traces showing goods moved consistently through routes no one else was using.
    
    ## Early Career and the Tunnel Collapse
    
    Zhinghoua was among the first Aurora merchants to descend into Nightshelf tunnels during the Flipper Accord's early negotiations — a period when most surface traders still recoiled from fire-core heat. Her flippers bear the crystalline scarring characteristic of sustained Snowdrift-numb practice, which she turned to commercial application: certifying the age and provenance of traded goods by reading their thermal signatures.
    
    During the Frozen Peace's worst season, a tunnel collapse in the deep caverns sealed Zhinghoua with three miners for six hours. She held the flipper of a Nightshelf engineer named Keth'vex until rescue teams broke through. Keth'vex survived. Zhinghoua never returned to the deep tunnels.
    
    She trades now in Promenade Hei's upper markets. Her reputation for fair dealing with Nightshelf buyers is well attested. Keth'vex still brings fire-core samples for certification; the two share tea twice monthly. She also serves as informal caretaker to the ailing Mingmeyang, one of few with regular access to the founder.
    
    ## The Fire-Core Investigation
    
    Routine certification work on the Promenade Ward's heat-conductor array revealed a discrepancy: fourteen fire-cores logged in ice-memory against sixteen physical cores installed in the eastern quarter's lattice. Zhinghoua traced the gap to the Bastion Apex, a site of known ice-memory alteration, and then to the shadow-ledgers preserved in the Shaled Scathe — courier logs the ice had been made to forget.
    
    The investigation exposed a founding-era diversion by Summit-Lord Yahailong, who had redirected two cores to build western perimeter defenses against orca scouts, allowing two families — Moqai and Xuelin — to freeze during the colony's third winter. Yahailong had then used Snowdrift-numb to alter the ice-memory and erase the families from the memorial.
    
    Zhinghoua brought the evidence to council. The cost was not trivial. The corrupted ice at Bastion Apex contaminated her own thermal signature. She can no longer reliably distinguish her memories from the ice's — a known risk of Snowdrift-numb exposure to altered strata, though one rarely documented at this severity. Her left flipper trembles. She keeps it occupied with ledgers and scales.
  CANONICAL_PROSE
  annotation "note_1771590013330_0", anchor: "two families — Moqai and Xuelin — to freeze during the colony's third winter", text: "In my Snowdrift-numb entry I corrected \"two families\" to seven names and wrote that I understood the impulse but was correcting it anyway. Here I have done the same thing. Moqai: four members — three adults, one fledgling. Xuelin: three adults. The thermal traces are legible at stratum 4. I knew this when I drafted the sentence. Caught myself only on this pass. The particular comedy of insisting on precision in the margins while rounding people into surnames in the main text is not lost on me.", type: :correction, display: :full
  annotation "note_1771590013330_1", anchor: "Keth'vex still brings fire-core samples for certification; the two share tea twice monthly", text: "This is the sentence that matters in the entry. Everything else is context for it.", type: :commentary, display: :popout
  annotation "note_1771590013330_2", anchor: "She can no longer reliably distinguish her memories from the ice's", text: "I wrote in the Snowdrift-numb entry that the ice remembers everything, including the lies told to it, and that reading both has always been the task. Zhinghoua read both. The ice read her back. The palimpsest effect I described as an archival problem is, for her, a daily one — she lives inside contaminated strata the way I merely catalogue it. Her left flipper trembles. Mine carries a scar I will not explain. We are not the same. But I recognize the shape.", type: :commentary, display: :full
  image "img_zhinghoua-lang-gleam_1767901776980", role: :entity, url: "https://theiceremembers.com/raw/project_1765083188592/img_zhinghoua-lang-gleam_1767901776980"
end
