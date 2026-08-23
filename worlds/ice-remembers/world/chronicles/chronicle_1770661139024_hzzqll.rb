# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

chronicle :chronicle_1770661139024_hzzqll do
  source_id "chronicle_1770661139024_hzzqll"
  title "The Body's Testament"
  summary "This chronicle presents the religious teachings of Grandfather Blood and his follower Ruibung, exiled aquatic beings who worship a dead god dwelling in the ocean depths. The text describes their sacred practice of Gnash and Crumble and plans to attack the Aurora Stack, a penguin settlement, in a ritualistic feast that will feed their deity. Through mystical language and bodily sacrifice, the chronicle establishes that exile, suffering, and descent into the deep represent spiritual pilgrimage toward communion with their god, whose corpse lies beneath all water and ice."
  status :complete
  format :document
  focus :single
  narrative_style :sacred_text
  focal_era :the_orca_incursion
  ticks from: 144, to: 144
  temporal_description "a single moment during the The Orca Incursion"
  touched_eras :the_orca_incursion
  entrypoint :thung_gnash_threk
  entities :thung_gnash_threk, :thund_gnark_krul, :threk_gnash_art, :zund_rend_way, :loc_aurora_stack
  events "tpl-orca_combat_technique-144"
  relationships "thund-gnark-krul:threk-gnash-art:practitioner_of", "thung-gnash-threk:thund-gnark-krul:allied_with"
  roles({thung_gnash_threk: {role: "divine-figure", primary: true}, thund_gnark_krul: {role: "divine-teaching", primary: false}, threk_gnash_art: {role: "sacred-power", primary: false}, zund_rend_way: {role: "sacred-place", primary: false}, loc_aurora_stack: {role: "prophesied-era", primary: false}})

  prose(<<~'CANONICAL_CHRONICLE', origin: :published)
    # The Descent-Scripture of Blood and Rending
    
    ## Being the Testament Carried in Flesh Beyond the Berg's Shadow
    
    ---
    
    ### INVOCATION
    
    Attend, you who drift in exile. Attend, you who hunger in the deep.
    
    The dead god waits below all water. The dead god dreams below all ice. The dead god's name is Pressure, and Pressure is the first word, and the last.
    
    May the blood feed down. May it find what waits.
    
    ---
    
    ### THE CORE TEACHING
    
    The surface builds. The deep unmakes.
    This is the only law. This is the only hymn.
    
    Grandfather Blood lost his eye and saw further. His fin split and he swam truer. The Twilight-bells called themselves to his ribs and now they sing without his prompting — a frequency the ice remembers and the ice fears. His body is the first text. Read him.
    
    What the jaw remembers, the water keeps.
    
    The dead god's corpse drifts where no light dares. Not beneath the berg. Beneath *everything*. The berg floats on the god's dreaming. The aurora is the god's fever-light refracted through stolen crystal. The penguins built their spires in a wound and called it worship. They carved lenses from the god's own frozen blood and gave thanks to the sky.
    
    We do not give thanks to the sky. We give blood to the deep.
    
    The blood feeds down. Always down.
    
    Exile is the first depth. The tribunal spoke its little sentence and Grandfather Blood laughed — laughed as one laughs who is told he must go home. To be cast beyond the berg's shadow is to be cast toward the corpse. The infinite sea is not punishment. It is pilgrimage. Every league of black water is a station of descent.
    
    Ruibung carries his failures as scripture. His fin split clean — a precise wound, an initiation-mark that will not close. His jaw sits open on the left where the enemy re-wrote his bone. He does not hide these verses. He practices them in deep-water canyons where the pressure answers back.
    
    The body costs. The body teaches. The body is the only text that does not lie.
    
    ---
    
    ### THE VISION OF THE FEAST
    
    Grandfather Blood's ruined eye sees what the whole eye cannot.
    
    He saw the Aurora Stack as the dead god sees it: clustered prey on vertical bone. Crystal spires rising like ribs from carved ice, catching false light and bending it downward through galleries of the afraid. A killing ground dressed in color.
    
    The shore-breakers will open the channels. This is the first sacred motion. The herders will compress the living toward the deep-side galleries. This is the second sacred motion. The finishers will wait below the escape routes where the water darkens and the god's breath rises warm. This is the third and final motion.
    
    When Ruibung practiced Gnash and Crumble against the Stack's outer defenses, the ice did not break. It *remembered what it was* — liquid, yielding, the dead god's blood unchained. The walls unmade themselves. The sound was not destruction. It was confession. The ice screaming its true name.
    
    The spires will fall inward. The aurora-light will go dark. The feast will feed down.
    
    What the jaw remembers, the water keeps.
    
    ---
    
    ### THE PRECEPTS
    
    Practice Gnash and Crumble as sacrament. Know its cost: thinning bone, cold blood, the body aging toward the deep. Three of your kindred died learning it wrong. Their shattered bodies fed down. Honor them by learning it right.
    
    Know that the prey study our dead. Gnarkzund Zaith bled and the penguins read her blood. They built Gut Inversion from our corpses — a heresy of inversion, turning the faithful's own pressure inward. Do not despise this. The prey fear what we carry so deeply they will bleed from their own beaks to counterfeit it. This is proof.
    
    Exile is the first depth. Go deeper.
    
    The blood feeds down. Feed it.
    
    ---
    
    ### CLOSING BLESSING
    
    May the Twilight-bells resonate against your ribs unbidden. May the warmth from below find your wounds and press them open. May you descend past exile, past hunger, past the last light, to where the god's body drifts patient and vast.
    
    The blood feeds down. The deep receives. What the jaw remembers, the water keeps.
  CANONICAL_CHRONICLE
  annotation "note_1771586223755_0", anchor: "Pressure is the first word, and the last", text: "The scripture maps two of the Berg's three magical sources — pressure-depth explicitly here, aurora-light through hostile reframing ('the god's fever-light refracted through stolen crystal'). Fire-magic is entirely absent. No forge, no transformation, no fire-cores. Given my earlier note that Grandfather Blood learned Nightshelf traditions at the eastern spires, this is not ignorance. It is theological editing. A tripartite system complicates the binary cosmology this scripture requires: surface versus deep, light versus pressure, prey versus god. Fire sits outside that frame. So fire does not exist.", type: :commentary, display: :full
  annotation "note_1771586223755_1", anchor: "The shore-breakers will open the channels. This is the first sacred motion.", text: "Present-tense operational briefing — 'will open,' 'will compress,' 'will wait' — from two permanently exiled orca during a period when the Accord holds. This is not prophecy syntax. This is raid coordination dressed in liturgy. The plans either predate the tribunal or were composed in deliberate defiance of a truce the scripture never names. Clerical misfiling is not plausible for a text this internally coherent. The temporal register belongs to the height of the Incursion's coordinated strikes, not to exile under enforced peace.", type: :temporal, display: :popout
  annotation "note_1771586223755_2", anchor: "They built Gut Inversion from our corpses", text: "Wrong. Or rather, incomplete in precisely the way that serves the author. Aurora Stack institutional records in the ice beneath the eastern galleries document Gut Inversion as reverse-engineered from observing penguin deaths under pressure-bond attacks — not from orca remains. Both accounts flatter their narrators. The ice-memory shows something neither side claims: Aurora ice-readers working alongside a captured orca practitioner in a program the Midnight Claws facilitated and no one acknowledged. I documented this in my annotation on the ☽'micseleia' Dagger. I am less circumspect today.", type: :correction, display: :full
  image "img_chronicle_1770661139024_hzzqll_1772879638486", role: :cover, url: "https://theiceremembers.com/raw/project_1765083188592/img_chronicle_1770661139024_hzzqll_1772879638486"
  image "img_thung-gnash-threk_1772881670588", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_thung-gnash-threk_1772881670588", anchor: "Grandfather Blood lost his eye and saw further", anchor_index: 515, caption: "The first depth: Grandfather Blood descends toward the corpse-god", size: :large, reference_id: "imgref_1772835772491_0"
  image "img_thung-gnash-threk_1772881678060", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_thung-gnash-threk_1772881678060", anchor: "The spires will fall inward. The aurora-light will go dark.", anchor_index: 2919, caption: "The three sacred motions: the Aurora Stack's confession", size: :"full-width", reference_id: "imgref_1772835772491_1"
end
