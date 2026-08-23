# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

npc :qeilin_qingwei do
  title "Qeilin-Qingwei"
  source_id "qeilin-qingwei"
  subkind :outlaw
  summary "Qeilin-Qingwei was a crystal-reader for Holdborn (ice-thresh) until the schism—now she moves through both colonies' black markets, trading in aurora-glass and old grievances. She won't speak of Gilt-Hand Yeaiu qi'Gleam, but her flippers shake when someone mentions the name."
  status :complete
  prominence :marginal
  tags :aurora_stack, :trade
  source_kind "npc"
  source_subtype "outlaw"
  source_culture "aurora-stack"
  source_status "historical"
  source_prominence 1.0810000000000002
  source_tags({"criminal" => true, "culture" => "aurora-stack", "friendly" => true, "trade" => true, "organized" => true})
  source_created_at 4
  source_era "the-great-thaw"
  cultural_origin "Aurora Stack"
  world_status "historical"
  first_recorded 4

  prose(<<~'CANONICAL_PROSE', origin: :published)
    ## Background
    
    Qeilin-Qingwei served as a crystal-reader for Holdborn (ice-thresh), the E'frostlings splinter faction that seized territory during the Great Thaw under Gilt-Hand Yeaiu qi'Gleam's banner. Those who knew her before the schism claim she was intended for the Spiral Council, reading alignments other mystics could not perceive. Her clouded eyes — the particular degradation that comes from prolonged aurora-light exposure in dim caverns — support a history of sustained crystal-work, whatever she now attributes to age.
    
    After the schism, Qeilin-Qingwei severed visible ties with Holdborn. She will not enter the deep tunnels, will not accept fire-core payment, and will not speak Gilt-Hand Yeaiu qi'Gleam's name, though her flippers shake when others do. The nature of the break — political, personal, or both — is unrecorded in any source available to me.
    
    ## Current Operations
    
    Qeilin-Qingwei now moves between both colonies' black markets, trading processed aurora-glass and information with the even-handedness of someone who has decided loyalty is a liability. Her crystal-reading expertise reportedly produces stock that outperforms Aureate Merchant Guild certified merchandise — a claim I cannot verify but which, given Aureate's documented quality-control failures, requires less exaggeration than it once might have. Customers reference her only in code: a grey-coat trader with samples worth seeing.
    
    She carries a pouch of uncut aurora-crystals she will not sell, only display. She wears a merchant's coat with silver embroidery she has picked into near-illegibility. She still sets out two cups when she brews fire-tea. Her companion has not returned from the deep in seven cycles.
    
    I note these details because they are all I have. No administrative ice preserves her, and the oral record is thin. She is, by design or by consequence, a figure the archives have forgotten.
  CANONICAL_PROSE
  annotation "note_1771582015190_0", anchor: "No administrative ice preserves her", text: "Except in the Holdborn registry filing I cited in my own annotation on that faction's entry, where she appears by name as the clerk who entered Holdborn's designation three days after Gilt-Hand bled on the ☽'micseleia' Dagger. And two paragraphs up I wrote 'unrecorded in any source available to me.' The source was available to me. I produced it. One begins to appreciate why the Council saw fit to reassign my assistants — evidently I require someone whose sole duty is to read my own marginalia back to me before I contradict them in print.", type: :correction, display: :full
  annotation "note_1771582015190_1", anchor: "a pouch of uncut aurora-crystals she will not sell, only display", text: "Uncut crystals are readable. Cut ones are merchandise. She is not displaying stock — she is offering readings to anyone literate enough to look.", type: :commentary, display: :popout
  image "img_qeilin-qingwei_1767849245918", role: :entity, url: "https://theiceremembers.com/raw/project_1765083188592/img_qeilin-qingwei_1767849245918"
end
