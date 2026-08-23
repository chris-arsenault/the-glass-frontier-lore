# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

chronicle :chronicle_1770660278925_3s3v16 do
  source_id "chronicle_1770660278925_3s3v16"
  title "Twilight Through Empty Spires"
  summary "An anonymous chronicle composed at the Scar describes a desolate, storm-darkened season where the deep has fallen silent. The narrative depicts a solitary figure lifting a crystal as twilight-bells ring without purpose, while the landscape—marked by boiled shallows, warm gouged stone, and a drifting berg—remains empty and abandoned, with no one present to witness or respond to these events."
  status :complete
  format :document
  focus :single
  narrative_style :haiku_collection
  focal_era :the_faction_wars
  ticks from: 2, to: 60
  temporal_description "an epic saga during the The Faction Wars (58 ticks)"
  touched_eras :the_faction_wars
  entrypoint :scar_lucamlinaecius
  entities :scar_lucamlinaecius, :tide_fall, :gift_custom, :abyss_collapse_tide
  events "tpl-dark_ritual-60"
  relationships "tide-fall:scar-lucamlinaecius:occurred_at"
  roles({scar_lucamlinaecius: {role: "observed-moment", primary: false}, tide_fall: {role: "observed-moment", primary: false}, gift_custom: {role: "poet-context", primary: true}})

  prose(<<~'CANONICAL_CHRONICLE', origin: :published)
    *Anonymous — storm-dark, the season the deep fell silent. Composed at the Scar, when the Twilight-bells rang with nothing to announce.*
    
    Steam where breath should be —
    the shallows boil and go still,
    one white flank rolls dark.
    
    She lifts the crystal —
    twilight-bells ring through the spires
    for no one to hear.
    
    Gouged stone still holds warmth —
    char-smell rises through patched ice,
    the walls hum. No one.
    
    The berg drifts. Below,
    boiled shallows cool to dark glass —
    twilight does not break.
  CANONICAL_CHRONICLE
  annotation "note_1771580094184_0", anchor: "for no one to hear", text: "The Walking does not always begin on the ice. Sometimes it begins like this — a routine gesture completed in a place that was full, finding no one left to receive it. The compulsion seizes those who have lost much. Every account I have catalogued describes the moment before departure as banal: a task finished in silence, then the understanding that there is no one to finish it for. She lifts the crystal. The bells ring. The poem does not tell us she stays.", type: :commentary, display: :full
  annotation "note_1771580094184_1", anchor: "Gouged stone still holds warmth", text: "Fire-core extraction scars. Worked stone retains heat for weeks after a vein is abandoned — longer if the vein was still active. This is not ancient ruin. This is recent departure.", type: :pedantic, display: :popout
  image "img_chronicle_1770660278925_3s3v16_1772878794066", role: :cover, url: "https://theiceremembers.com/raw/project_1765083188592/img_chronicle_1770660278925_3s3v16_1772878794066"
  image "img_gift-custom_1772879771862", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_gift-custom_1772879771862", anchor: "storm-dark, the season the deep fell silent", anchor_index: 13, caption: "The Berg in silence—the moment after the deep stopped answering.", size: :"full-width", reference_id: "imgref_1772835738434_0"
  image "img_gift-custom_1772879783854", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_gift-custom_1772879783854", anchor: "one white flank rolls dark", anchor_index: 200, caption: "The moment the shallows answer what should not answer.", size: :large, reference_id: "imgref_1772835738434_1"
  image "img_gift-custom_1772879803289", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_gift-custom_1772879803289", anchor: "Gouged stone still holds warmth", anchor_index: 313, caption: "The Scar remembers what the living cannot speak.", size: :medium, reference_id: "imgref_1772835738434_2"
end
