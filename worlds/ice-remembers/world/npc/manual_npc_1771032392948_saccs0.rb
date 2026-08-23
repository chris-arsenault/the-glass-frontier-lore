# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

npc :manual_npc_1771032392948_saccs0 do
  title "Keth'vex"
  source_id "manual_npc_1771032392948_saccs0"
  subkind :merchant
  summary "A Nightshelf engineer stationed at the garrison checkpoint in the Shaled Scathe, known for providing fire-core samples and quiet companionship to the fire-core certifier Zhinghoua lang'Gleam. She also served as the third keeper of the grimoire ☽'☽'numu' Witness, a burden that broke the two keepers before her."
  status :complete
  prominence :marginal
  tags :nightshelf
  source_kind "npc"
  source_subtype "merchant"
  source_culture "nightshelf"
  source_status "historical"
  source_prominence 1
  source_tags({})
  source_created_at 1771032392948
  source_era "the-faction-wars"
  cultural_origin "Nightshelf"
  world_status "historical"

  prose(<<~'CANONICAL_PROSE', origin: :published)
    A Nightshelf engineer stationed at the garrison checkpoint in the Shaled Scathe — the refugee caverns where the Nightshelf maintained founding-era records in ink on hide, independent of Aurora ice-memory. Keth'vex delivered fire-core samples to Zhinghoua lang'Gleam, an Aurora Stack certification specialist, on a bimonthly schedule, and once held Zhinghoua's hand in the dark during a tunnel collapse. When Zhinghoua later came seeking founding-era courier binders relevant to a discrepancy in fire-core allocation records, Keth'vex surrendered them without a word, along with a cup of fire-core tea. The Nightshelf's hide-ink archives exist precisely for moments like this — parallel records that cannot be altered by ice-corruption — and Keth'vex understood what she was handing over.
    
    She was also the third keeper of ☽'☽'numu' Witness, a Nightshelf grimoire bound in volcanic glass and layered with ancestor-bone sigils, its ink legible only in perfect darkness. The first keeper drowned herself. The second walked into the deep and went silent. Keth'vex's flippers shook when she held the grimoire and when she set it down. She passed it to the void-mage Sivruta~ at the Glow-Fissure, together with intelligence on the location of the Twilight-bells near the Bleeder — artifacts whose retrieval would cost Sivruta~ considerably more than Keth'vex's quiet entry in the record suggests.
  CANONICAL_PROSE
  annotation "note_1771593038349_0", anchor: "discrepancy in fire-core allocation records", text: "Fire-core quotas were reduced by a third during one of the Accord's undisclosed renegotiations — the drafts survive in administrative ice, Layer 7-East, and were never reconciled with the published terms. Any competent certifier comparing actual shipments against the public Accord would find a gap indistinguishable from systematic theft. Keth'vex knew what those courier binders proved. She handed Zhinghoua the evidence that the gap was policy, not crime. Without a word, because what would the word be? 'Your government lied to you about how much warmth it was owed'?", type: :commentary, display: :full
  annotation "note_1771593038349_1", anchor: "walked into the deep and went silent", text: "Name it. This is the Walking. The circumlocution does not soften what happened to the second keeper; it obscures it.", type: :correction, display: :popout
  image "img_manual_npc_1771032392948_saccs0_1772874504618", role: :entity, url: "https://theiceremembers.com/raw/project_1765083188592/img_manual_npc_1771032392948_saccs0_1772874504618"
end
