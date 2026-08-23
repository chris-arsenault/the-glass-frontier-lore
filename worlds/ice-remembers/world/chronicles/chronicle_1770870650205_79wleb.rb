# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

chronicle :chronicle_1770870650205_79wleb do
  source_id "chronicle_1770870650205_79wleb"
  title "Aurora Fades South"
  summary "An anonymous chronicle inscribed in the ice of the Promenade Ward's eastern gallery documents a dusk-cycle moment in the Frozen Peace. Through four poetic vignettes, it captures the fading aurora over crystal spires, a trembling figure in a copper helm, mysterious dark threads growing in the ice, and the promenade's final moments of warmth and light before nightfall."
  status :complete
  format :document
  focus :single
  narrative_style :haiku_collection
  focal_era :the_frozen_peace
  ticks from: 222, to: 222
  temporal_description "a single moment during the The Frozen Peace"
  touched_eras :the_frozen_peace
  entrypoint :soar_helm
  entities :soar_helm, :grand_auditor_mingmeyang_beacon_lit_ice_crowned, :beacon_keeper_lianhinglou, :the_promenade_ward
  events "tpl-tech_breakthrough-222"
  relationships "beacon-keeper-lianhinglou:soar-helm:practitioner_of", "grand-auditor-mingmeyang-beacon-lit-ice-crowned:soar-helm:practitioner_of", "soar-helm:the-promenade-ward:originated_in"
  roles({soar_helm: {role: "observed-moment", primary: true}, grand_auditor_mingmeyang_beacon_lit_ice_crowned: {role: "poet-context", primary: false}, beacon_keeper_lianhinglou: {role: "observed-moment", primary: false}})

  prose(<<~'CANONICAL_CHRONICLE', origin: :published)
    *Anonymous — found inscribed in the ice of the eastern gallery wall, below the graffiti that reads* Oeichowei walked here. *The Promenade Ward, dusk-cycle. The Frozen Peace.*
    
    **i. the spires**
    
    Aurora fades south —
    crystal spires hold the last light
    ice groans underneath
    
    **ii. the helm**
    
    A flipper trembles —
    copper helm still warm from flight
    dusk fills the east spire
    
    **iii. the deep**
    
    Dark threads in the ice —
    aurora-bloom still grows there
    warm scent, spreading cold
    
    **iv. the ward**
    
    Stars through cracked spire-glass —
    the promenade holds its warmth
    one more night of light
  CANONICAL_CHRONICLE
  annotation "note_1771590593165_0", anchor: "Dark threads in the ice —\naurora-bloom still grows there\nwarm scent, spreading cold", text: "Three lines. Three sources. Aurora-bloom is aurora-light, still growing where corruption has taken root. Warm scent is fire-core heat — the Nightshelf's dwindling export that keeps surface wards alive. Dark threads are pressure-depth corruption rising through the ice. The Berg's entire magical ecology compressed into a single breath, and the poet makes it sensory rather than declarative: something that grows, something that smells warm, something that spreads cold. Anonymous, carved into a gallery wall beneath someone else's graffiti. They understood everything and left no name.", type: :commentary, display: :full
  annotation "note_1771590593165_1", anchor: "copper helm still warm from flight", text: "The Soar Helm drains the wearer's body heat to fuel ascent. The warmth in the copper is the pilot's warmth. The flipper trembles because the body has been emptied of what the metal now holds.", type: :pedantic, display: :popout
  image "img_chronicle_1770870650205_79wleb_1772879507020", role: :cover, url: "https://theiceremembers.com/raw/project_1765083188592/img_chronicle_1770870650205_79wleb_1772879507020"
  image "img_soar-helm_1772881489223", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_soar-helm_1772881489223", anchor: "the spires**\n\nAurora fades south —\ncrystal spires hold the last light\nice groans underneath\n\n**ii.", anchor_index: 181, caption: "The Promenade Ward at dusk-cycle, where engineered spires channel the aurora's final glow", size: :large, reference_id: "imgref_1772835783899_0"
  image "img_soar-helm_1772881495038", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_soar-helm_1772881495038", anchor: "the helm**\n\nA flipper trembles —\ncopper helm still warm from flight\ndusk fills the east spire\n\n**iii.", anchor_index: 280, caption: "The moment between descent and arrival, where warmth meets the cold threshold", size: :medium, reference_id: "imgref_1772835783900_1"
  image "img_soar-helm_1772881504822", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_soar-helm_1772881504822", anchor: "the deep**\n\nDark threads in the ice —\naurora-bloom still grows there\nwarm scent, spreading cold\n\n**iv.", anchor_index: 382, caption: "The paradox of aurora-growth: light that warms while the ice remembers freezing", size: :medium, reference_id: "imgref_1772835783900_2"
end
