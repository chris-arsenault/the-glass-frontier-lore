# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

chronicle :chronicle_1770870611592_6e4f46 do
  source_id "chronicle_1770870611592_6e4f46"
  title "Counting-Out and Fire-Core"
  summary "This chronicle documents a collection of children's songs and rhymes from the lower Nightshelf during the Frozen Peace period, including counting games, cautionary tales, and dares performed in the fire-core corridors. The songs feature recurring characters like Vemma-Vel and Nissy-Missy, and contain warnings about the dangers of the deep ice and mysterious forces. The collector notes an anomaly in the counting rhyme that always reaches eighteen despite mathematical inconsistency, and observes that adults react with concern to this discrepancy, suggesting the songs may contain hidden or dangerous meanings that children do not comprehend."
  status :complete
  format :document
  focus :single
  narrative_style :nursery_rhymes
  focal_era :the_frozen_peace
  ticks from: 233, to: 236
  temporal_description "a brief moment during the The Frozen Peace (3 ticks)"
  touched_eras :the_frozen_peace
  entrypoint :shale_veil
  entities :shale_veil, :the_scared_shroud, :the_dawn_terrace, :glow_trader_vemlaus_vel, :darkening_ice_witnessed
  events "act-steal_artifact:krath-thund-gnurl-233", "tpl-magic_discovery-236"
  relationships "shale-veil:glow-trader-vemlaus-vel:discovered_by", "shale-veil:the-dawn-terrace:manifests_at", "the-scared-shroud:shale-veil:empowered_by"
  roles({shale_veil: {role: "rhyme-subjects", primary: true}, the_scared_shroud: {role: "rhyme-subjects", primary: false}, the_dawn_terrace: {role: "rhyme-subjects", primary: false}, glow_trader_vemlaus_vel: {role: "cultural-origin", primary: false}})

  prose(<<~'CANONICAL_CHRONICLE', origin: :published)
    # Tunnel-Songs and Fire-Rhymes
    
    ## Collected from the Lower Nightshelf, Frozen Peace period
    
    The children of the lower Nightshelf sing these in the fire-core corridors between the markets and the sleeping-nooks. I have set them down as spoken—in skipping circles, counting games, and the long dark stretches where chicks dare each other to press their flippers to the ice. The words change by tunnel. The rhythms never do.
    
    ---
    
    **I. Counting-Out**
    
    One dark, two dark, three dark, four,
    Five dark, six dark, seven more,
    Eight and nine and ten and then,
    Counting, counting, dark again—
    Fifteen, sixteen, seventeen, done?
    Eighteen. Eighteen. *You're* the one.
    
    ---
    
    **II. Vemma-Vel**
    
    Vemma-vel went to the Terrace bright,
    Vemma-vel read in the dark, not light.
    Her flippers shook, her feathers went white,
    She found a book of bone and black—
    Don't look, don't look, the ice looks back.
    Vemma-vel won't come back.
    
    ---
    
    **III. Nissy-Missy**
    
    Nissy-missy-mesius!
    Slew-velumae-tenius!
    Fire below and light on top,
    Deep-in-between will never stop—
    Kzul-kzul, Grulkzul Omega Strike
    Clap your flippers, say goodnight!
    
    ---
    
    **IV. Hush-Song**
    
    Hush little chick, the fire-core glows
    Down in the deep where nobody goes.
    If the ice should call your name,
    Stay by the warm, stay by the flame.
    Some walk out and some walk on—
    Hush now, hush now. They are gone.
    
    ---
    
    **V. The Dare**
    
    Press your flipper to the deep-ice wall,
    Close your eyes and count to small.
    What'd you see? What'd you see?
    Old dead birds who used to be!
    Shalemo-veil, shalemo-veil—you scared?
    Hollow eyes for them that dared!
    
    ---
    
    *The counting rhyme always reaches eighteen. I have heard it in six tunnels and the number is never correct. The adults notice. Near ☽'velumae, a mother pulled her chick away mid-verse. The child did not understand why. None of them do.*
  CANONICAL_CHRONICLE
  annotation "note_1771590854197_0", anchor: "Shalemo-veil, shalemo-veil", text: "Shale☽ Veil with the consonants worn smooth by mouths that don't know what they're invoking. Press flipper to deep ice, close eyes, receive visions of the dead — this is not a dare. It is unsupervised ice-communion performed by fledglings in a corridor game. When the veil between living world and ice-memory thins, the dead reach through however they can; apparently a child's palm on the wrong wall will do. 'Hollow eyes for them that dared' — the cast entry for Shale☽ Veil says it leaves the user 'hollow-eyed and changed.' Vemlaus-vel~ came back that way too. These children are replicating her technique as play. No one is stopping them.", type: :commentary, display: :full
  annotation "note_1771590854197_1", anchor: "Eighteen. Eighteen. *You're* the one.", text: "Fixed numbers in counting-out games count something. Not children in the circle — the collector confirms it never matches the group size. Eighteen is a body count that got into the meter. I don't know whose. The adults do.", type: :skepticism, display: :popout
  image "img_chronicle_1770870611592_6e4f46_1772879608360", role: :cover, url: "https://theiceremembers.com/raw/project_1765083188592/img_chronicle_1770870611592_6e4f46_1772879608360"
  image "img_shale-veil_1772881633005", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_shale-veil_1772881633005", anchor: "children of the lower Nightshelf sing these in the fire-core corridors", anchor_index: 97, caption: "Children's counting games echo through the deep tunnels", size: :medium, reference_id: "imgref_1772835770176_0"
  image "img_shale-veil_1772881645235", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_shale-veil_1772881645235", anchor: "Press your flipper to the deep-ice wall", anchor_index: 1373, caption: "The dare that reveals what the ice remembers", size: :large, reference_id: "imgref_1772835770176_1"
  image "img_shale-veil_1772881657305", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_shale-veil_1772881657305", anchor: "a mother pulled her chick away mid-verse", anchor_index: 1735, caption: "The adult who recognizes the danger in the rhyme", size: :medium, reference_id: "imgref_1772835770176_2"
end
