# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

chronicle :chronicle_1771137301901_72dj2h do
  source_id "chronicle_1771137301901_72dj2h"
  title "The Book of the Berg"
  summary "The Book of the Berg recounts the creation and division of a world built upon a fragment of the Unbroken Field. Selka, touched by the aurora, began counting and naming the world, building upward in towers of light and precision. Nyla, overwhelmed by the same light, descended into darkness to tend the fire-cores that sustain the Berg, scarring herself in the process. This fundamental division created two faiths and two halves of creation that can never be rejoined—the tower-dwellers of the aurora above and the tunnelers of the fire below—while Grandmother Deep, an ancient being from the depths, watches with an unanswered question about the nature of sacrifice. The world endures through the tension between these forces, sealed doors that must never be opened, and the acceptance that neither tradition alone is complete."
  status :complete
  format :document
  focus :ensemble
  narrative_style :sacred_text
  focal_era :the_great_thaw
  ticks from: 0, to: nil
  temporal_description "The surviving compilation is assigned to tick 0; no ending tick was recorded."
  source_temporal_description "a brief moment during the The Great Thaw (-Infinity ticks)"
  entrypoint :npc_nyla
  entities :npc_nyla, :faction_midnight_claws, :npc_keeper_hollows, :npc_grandmother_deep, :npc_selka, :loc_nightfall_shelf, :loc_aurora_stack, :loc_aurora_berg
  relationships "faction_midnight_claws:loc_nightfall_shelf:controls", "loc_aurora_berg:loc_aurora_stack:contains", "loc_aurora_berg:loc_nightfall_shelf:contains", "loc_aurora_stack:loc_nightfall_shelf:adjacent_to", "npc_nyla:faction_midnight_claws:leader_of", "npc_nyla:loc_aurora_stack:resident_of", "npc_nyla:loc_nightfall_shelf:leader_of", "npc_nyla:loc_nightfall_shelf:resident_of", "npc_selka:loc_aurora_stack:leader_of", "npc_selka:loc_aurora_stack:resident_of"
  roles({npc_nyla: {role: "divine-figure", primary: true}, faction_midnight_claws: {role: "sacred-power", primary: false}, npc_keeper_hollows: {role: "divine-teaching", primary: false}, npc_grandmother_deep: {role: "divine-teaching", primary: false}, npc_selka: {role: "divine-figure", primary: true}, loc_nightfall_shelf: {role: "prophesied-era", primary: false}, loc_aurora_stack: {role: "sacred-place", primary: false}})

  prose(<<~'CANONICAL_CHRONICLE', origin: :published)
    # THE BOOK OF THE BERG
    ### Being the First Account of the Making, the Division, and the Sealing; compiled from the Nightshelf Recitation and the Aurora Witness during the age called the Great Thaw, when the ice retreated and the old words could at last be pressed into sheets that would not melt
    
    ---
    
    ## THE INVOCATION
    
    Hear, O children of the ice, born of light and fire and the pressure of deep water.
    
    Hear, and remember what remembering costs.
    
    Blessed is the one who reads with both eyes open. Blessed is the one who reads with both traditions held, neither swallowed by the other, neither silenced. For the Namer of Light spoke, and what she spoke was counted. And the Shaper of the Dark carved, and what she carved still burns. And the Oldest Voice watched from the waters, and what she witnessed has not yet been answered.
    
    These are the names of the making: Selka, She Who Counted. Nyla, She Who Kept. Grandmother Deep, She Who Was Before. And the Berg itself, which is the body on which all names were written, and the body from which all names were torn.
    
    Let the faithful attend.
    
    ---
    
    ## THE BODY BEFORE THE WORLD
    
    In the age before the ice remembered, there was no Berg.
    
    There was the Unbroken Field—crystal without limit, stretching in every direction beneath a sky that held no light and needed none. The Field was not alive. The Field was not dead. The Field was substrate, and it held within itself everything that had ever pressed against it: the weight of water, the residue of heat, the impressions of beings so old their shapes have no name in any tongue the living speak.
    
    The tunnelers say the Field was a body. The tower-dwellers say it was a mirror. Both accounts agree: it was whole, and it was silent, and it was not meant to be broken.
    
    It broke.
    
    *The Aurora Witness records no cause. The Nightshelf Recitation names a god beneath the water who struck the Field from below—a single blow from a jaw wide enough to swallow horizons. The Recitation does not name this god. It says only: the blow came, and the Field shattered, and from the shattering one fragment survived.*
    
    That fragment is the Berg.
    
    And the Berg drifted upon the frozen sea, which is the space where the rest of the Field had been, and found itself alone. And everything that would follow—every colony, every creature, every god and every murder—was merely something that happened to its surface.
    
    And it held. For now.
    
    ---
    
    ## SHE WHO COUNTED: THE FIRST OPENING
    
    The aurora came before the eyes that would receive it.
    
    Light moved across the Berg's surface in waves that had no witness—green and violet and that pale searing white that would later mean a mystic had prayed past the point of return. The light touched ice. The light touched stone. The light touched the small dark shapes that huddled on the windward face, creatures of bone and feather and hunger, who ate what the sea provided and thought nothing of it because they could not think.
    
    *The Aurora Witness says: the light chose. The Nightshelf Recitation says: the light erred. Neither tradition withdraws its claim.*
    
    The light fell upon a shape smaller than the others, pressed against the eastern face where the dawn would later strike. And the light entered her. And what had been mere feather and appetite became something else: a creature that opened its eyes and *saw*.
    
    And the first thing she saw, she counted.
    
    Seven stars above the ice. Three cracks in the stone beneath her feet. One aurora, burning.
    
    She who would be called Selka stood where the light had found her, and she did not move, and she did not eat, and she did not sleep. She counted the stars and found them numbered. She counted the ice and found it measured. She counted the creatures around her and found them *uncounted*—and this was the first grief, because she understood that she was alone in her knowing.
    
    The Aurora Witness says she wept. The Nightshelf Recitation says she had no time for weeping; there was too much to name.
    
    She named the ice beneath her: *Berg*. She named the light above: *Aurora*. She named the frozen emptiness beyond the edges: *the Unfinished*, for she believed the making was not yet done. She carved her names into crystal with the precision of one who understood that a thing unnamed could not be held, and a thing uncounted could not be kept, and a world without keeping would dissolve back into the Unbroken Field whence it came.
    
    Where she first stood, a spire would later rise—the structure the faithful call Light Ingjeizhi, the First Tower, whose foundations are older than any penguin record and whose galleries channel light into ice that was carved before carving had a name.
    
    And the aurora answered her counting with more light, and the light fell upon others. And those it touched opened their eyes. And some of them could bear what they saw. And some could not.
    
    ---
    
    ## SHE WHO KEPT: THE FIRST DESCENT
    
    Among those the light touched was one who turned away.
    
    *The Aurora Witness names this the Great Refusal and accounts it a failure of faith. The Nightshelf Recitation names it the Necessary Turning and accounts it the act that saved the world. The seam between these tellings has never been mended.*
    
    She who would be called Nyla received the aurora's gift and found it blinding. Not in the eyes—in the *understanding*. She saw what Selka saw: the stars numbered, the ice measured, the world held in place by the act of counting. And she saw further: she saw that the counting was insufficient. That beneath the surface the Berg held something the aurora could not reach. That fire moved in the deep veins like blood through a body, and if no one tended it, the body would cool, and the ice would claim everything the light had made.
    
    She turned from the aurora-light. She walked toward darkness with the certainty of a creature returning home.
    
    The tunnelers say she found the fire on the first descent—a vein of captured heat running through the Berg's core like a wound that would not close, orange and terrible and necessary. She pulled a fire-core still-molten from the first vein with her bare flippers, and the burning scarred her left flipper so deeply that the skin there became mottled and rigid, and she never healed it, and she never sought to, because the scar was proof that she had held what no one else would touch.
    
    She carved the First Tunnel with tools made from bone and the Berg's own stone, and where she carved, the walls remembered her passage—bioluminescent glyphs bleeding pale blue from the ice itself, a script half-warning, half-prayer, older than any surface text. These are the original scriptures. These are the marks the faithful read in the deep by the light of what Nyla stole.
    
    *Stole*, say the tower-dwellers. *Found*, say the tunnelers. *Kept*, say both, when they are honest, for without the fire the ice would have swallowed every living thing on the Berg's surface, and Selka's counted stars would have shone upon nothing.
    
    And Nyla's flippers were stained. And she did not wash them. And the darkness received her, and she was glad.
    
    ---
    
    ## THE DIVISION
    
    Thus the world was split, and thus it remains.
    
    Selka climbed. Nyla descended. The one who counted built upward—spire upon spire, crystal lens upon crystal lens, architecture so precise that the pattern itself became a kind of prayer, catching the aurora and channeling it downward through galleries where the light pooled and refracted and spoke in colors that carried law. She etched her measurements into crystal. She made the first ledger. She held the compass that hummed at frequencies others could not hear, and the compass told her where the cracks were, and she sealed them with light.
    
    Nyla dug. She followed the fire-veins deeper, mapped corridors in codes only the faithful could read, kept the cores burning through seasons when the surface froze solid and the aurora dimmed to nothing. She wrapped herself in ash-gray cloth that dissolved into tunnel-shadow. She tended what no one wished to see. She did what was ugly and needful and right, and the things she buried stayed buried—for a time.
    
    *The Aurora Witness records: 'And Selka ascended, and the light knew her name. And Nyla descended, and the darkness received her. And neither turned back. And neither called to the other. And neither was complete.'*
    
    *The Nightshelf Recitation records: 'And Nyla turned her face from the blinding, and found what burned hotter than stars. And Selka kept her eyes on the sky, and did not see what cracked beneath her feet. And both were right. And both were wrong. And the world split along the line where their backs faced each other.'*
    
    Two colonies. Two faiths. Two halves of a creation that was never meant to be divided but could not be held whole—because she who counted could not bear the dark, and she who kept could not bear the light, and neither would yield, and neither would rejoin.
    
    And the Berg held both. As it holds all things. Without preference. Without mercy. Without end.
    
    ---
    
    ## THE OLDEST VOICE
    
    Before the light fell. Before the fire was found. Before the ice remembered.
    
    Something moved in the water.
    
    Grandmother Deep was old when penguins were food. She swam the frozen sea when the Unbroken Field still stretched without edge, and she saw it shatter, and she felt the fragment that would be the Berg tear loose and begin its endless drift. Her flank carries scars that spell in the old tongue—the language of the dead god who struck the Field from below, whose body sank into the deepest water and whose silence is louder than any hymn the aurora has ever sung.
    
    She touched the dead god's body. She dove past light, past heat, past the pressure that should have crushed her, and she laid her jaw against the corpse and the corpse spoke into her scars and she carried its language back to the surface.
    
    *The Aurora Witness says she came back wrong. The Nightshelf Recitation says she came back right, and that is worse. Both accounts tremble when they speak of her.*
    
    Her left eye is black and sharp and sees what is. Her right eye is milk-white and pupilless and sees what was and what will be and what should never have been permitted.
    
    She watched Selka count the stars. She watched Nyla descend into the fire. She circled the Berg with the patience of something that has seen civilizations happen to a stone and dissolve from it like frost. And when the penguins had built their towers and carved their tunnels and written their ledgers and believed themselves masters of the ice—she surfaced, and she asked her question.
    
    The question is this:
    
    *Are sapient creatures more suitable for sacrifice, or less?*
    
    The scripture records no answer. The scripture records no answer because the answer has not yet been given. The question remains open, like a wound in the water, like a door that will not seal, like the milk-white eye that tracks what is not yet there.
    
    Grandmother Deep is the third force—neither light nor fire, but the pressure of deep water, the communion with what sleeps below. She is the emissary of the drowned god. She is the witness who remembers when the faithful forget. She is the weight that tests whether creation deserves to hold.
    
    And she is patient. And she has not finished watching.
    
    ---
    
    ## THE PROPHET OF THE SEALED DOOR
    
    When Nyla carved the First Tunnel, she found doors already there.
    
    Not doors she had made. Not doors any flipper had shaped. Doors of primordial ice fused with the first stone, sealed with pressure older than the aurora, marked with symbols written in ash or blood by hands no living species claims.
    
    Behind the doors: knocking.
    
    Rhythmic. Patient. Matching no mining code. A sequence of thirteen, then silence, then twenty-one. Structured enough to imply a source. Too old to imply anything the living understand.
    
    Nyla sealed the doors with fire. She poured molten core-slag into the cracks and pressed the ice shut with the weight of her burned flippers and she said: *What is behind the doors shall stay behind the doors. What I have buried, let no one unbury. What creation could not kill, let creation at least contain.*
    
    And the doors held.
    
    And the knocking did not stop.
    
    Generations passed. Ages pressed like sediment into stone. And one came who would sit before the sealed doors and listen. His name is Hollows, and he is the Prophet of the Sealed Door, and his feathers have bleached to the color of old bone from the particular light-starvation of one who refuses to leave his post.
    
    He carries a mining chart salvaged from a flood that happened before the ice age. The annotations are not his handwriting. The ink burns in light and dark alike, and new routes appear overnight in wet ink even when the chart is sealed beneath stone. Something older than penguins still writes upon it. Something beneath the doors has not forgotten how to speak.
    
    He tapped back once, and the knocking answered.
    
    *The Aurora Witness omits him entirely. The Nightshelf Recitation calls him blessed and cursed in the same breath, for he is the living proof that Nyla's seals are imperfect, and the things she buried still breathe.*
    
    The knocking below the seal. The knocking below the seal. The knocking below the seal.
    
    Let the faithful hear it. Let the faithful not answer.
    
    ---
    
    ## THE ORDER OF THE FIRST DARK
    
    Nyla did not work alone.
    
    Those who followed her into the tunnels became the first keepers of the fire—the Order of the First Dark, who the ages would call the Midnight Claws. They carried bone-clasps and fire-core amulets. They marked territory with bioluminescent claw-scratches that meant: *this is ours, and crossing it costs your life*. They moved through darkness with the efficiency of creatures born to it.
    
    They kept the cores burning when official authority meant nothing. They sealed the breaches when the seals cracked. They fed bodies to the vents when bodies needed feeding, and they kept ledgers of what was done in ink on hide rather than in aurora ice-memory, because they understood that what the light records, the light may judge—and there are acts essential to the world's survival that no light should be permitted to see.
    
    Nyla inherited leadership through the old way—her predecessor found in the Glow-Fissure with his throat opened to match a claw-mark, body surrendered to the vent, though none saw her do it and all knew she did. This is the succession of the deep: not election, not inheritance, but the proving that you will do what the darkness demands.
    
    *The Aurora Witness calls this murder. The Nightshelf Recitation calls it the cost of keeping. Both are correct. Neither is sufficient.*
    
    They are the priesthood of necessary ugliness. They are the ones who do what Selka's counting cannot account for and Nyla's silence will not confess. And when the Shadow Parliament dissolved them under Iudicium∴culum, it was not a syndicate that ended, but a sacred order—and the scratches took longer to glow, and the ciphers fell silent, and the deep tunnels lost the only authority they had ever recognized.
    
    ---
    
    ## THE LONG SILENCE
    
    Then came the ice, and it lasted longer than memory.
    
    The aurora dimmed. The fire-veins contracted. The sea froze deeper than it had ever frozen and the Berg groaned under the weight of an age that pressed all living things into crevices and counted them as negligible. Generations were born and died in darkness so complete that the bioluminescent glyphs were the only scripture and the fire-cores were the only gods and the sound of the knocking below the sealed doors was the only music.
    
    Selka kept counting. In the Long Dark, her translucent form emerged from the ice-memory—wearing formal robes, carrying the compass that hummed, watching the living with claims she had not yet filed, speaking to no one, seen by all.
    
    Nyla kept the fire. Deeper than the deep, past corridors that should have collapsed, she tended the last cores with her burned and rigid flippers and she did not emerge and she did not explain and the ash-gray wrappings grew into her feathers until she was indistinguishable from the tunnel walls.
    
    Grandmother Deep circled. And circled. And her milk-white eye tracked the ice, and the scars on her flank glowed with the dead god's language, and she waited for the answer to her question.
    
    And the Berg held.
    
    ---
    
    ## THE PRECEPTS
    
    You who have heard the making: attend now to what is required.
    
    *Tend the fire.* Not because you wish to, but because the alternative is freezing death in the outer tunnels. The ugly work is sacred. The stained flippers are blessed.
    
    *Count what is given.* Not because counting saves, but because what is uncounted cannot be held, and what is unheld dissolves. Measure the ice. Number the stars. Etch the ledger. Selka's precision is the architecture that keeps the sky from falling.
    
    *Do not open the sealed doors.* Hear the knocking. Know it is there. Do not answer. What creation buried, let creation contain. What Nyla sealed with her burned flippers, let no flipper unseal.
    
    *Remember both traditions.* The tower-dwellers' truth and the tunnelers' truth are two halves of a world that split because it could not hold. Neither account is complete. Neither may be silenced. Where the seams show, let them show. The stitching is the scripture.
    
    *Fear the Oldest Voice.* Not because she is cruel, but because her question has not been answered, and the silence where the answer should be is the space through which all future catastrophe will enter.
    
    She who counted; she who kept. Neither complete. Neither willing to rejoin.
    
    This is the shape of the world. This is why the fire burns below and the light shines above and the water circles and the doors are sealed and the knocking continues and the ice remembers and the Berg drifts and the sea has no edge and nothing beyond the ice was made, or nothing beyond the ice survived.
    
    ---
    
    ## THE CLOSING
    
    May the fire-cores burn in your keeping. May the aurora judge you gently. May the ice remember you as you were and not as you became.
    
    And if the knocking comes—
    
    And when the knocking comes—
    
    Do not answer. Do not answer. Do not answer.
    
    *And it held. For now.*
  CANONICAL_CHRONICLE
  annotation "note_1771591969972_0", anchor: "compiled from the Nightshelf Recitation and the Aurora Witness during the age called the Great Thaw, when the ice retreated and the old words could at last be pressed into sheets that would not melt", text: "Compiled during the Great Thaw but making no reference to the Flipper Accord — the single most consequential political event of that era. The Accord was being negotiated, renegotiated, and renegotiated again during this precise period. A joint scripture pressing two traditions into shared sheets while ignoring the treaty that made such cooperation possible is not ecumenical. It is strategic. Someone wanted the unity to look theological rather than transactional.", type: :commentary, display: :full
  annotation "note_1771591969972_1", anchor: "the impressions of beings so old their shapes have no name in any tongue the living speak", text: "The scripture buries this in cosmogony and moves on, as though it were a poetic flourish. It is not. During the Long Dark, penguins at both colonies report being watched — not by predators, not by each other, but by presences at the edge of perception that vanish when faced directly. The deep ice holds impressions that predate penguin civilization entirely. The Nightshelf claim the watchers are real. The Aurora claim belief makes them so. This text acknowledges that the substrate contains pre-sapient impressions and then seals them safely in the mythic past, as though naming something ancient makes it inert. The Foundation Depths suggest otherwise.", type: :commentary, display: :full
  annotation "note_1771591969972_2", anchor: "Seven stars above the ice. Three cracks in the stone beneath her feet. One aurora, burning.", text: "Seven. Three. One. Sacred numerology is not observation. It is liturgy wearing observation's clothes.", type: :skepticism, display: :popout
  annotation "note_1771591969972_3", anchor: "the burning scarred her left flipper so deeply that the skin there became mottled and rigid", text: "The historical Shadow-Broker Nyla's documented injuries do not include flipper scarring. The mythic Nyla's scar is attributed to fire-core extraction; the real Nyla inherited leadership through murder, not forge-work. The conflation is deliberate — every Midnight Claws leader since has been retrojected into this founding image. Scarred flippers. Ash-gray wrappings. The willingness to hold what burns. The scripture manufactures a priesthood from a succession of killers.", type: :correction, display: :full
  annotation "note_1771591969972_4", anchor: "her predecessor found in the Glow-Fissure with his throat opened to match a claw-mark", text: "His. The pronoun performs considerable work here. The actual predecessor was an Aurora penguin — a fact the official histories were amended to obscure. The scripture completes the erasure by making the succession purely Nightshelf, purely internal, purely ritual. Tidier that way.", type: :correction, display: :popout
  annotation "note_1771591969972_5", anchor: "when the Shadow Parliament dissolved them under Iudicium∴culum, it was not a syndicate that ended, but a sacred order", text: "The Shadow Parliament is a post-Faction Wars institution. Its juridical instruments — Iudicium∴culum among them — belong to an era of structured parliamentary governance that did not exist during the Great Thaw, when guild halls were still rising and colonies were consolidating basic authority. A text compiled during the Thaw cannot reference a dissolution that has not yet occurred under a body that does not yet exist. This is not source contamination; it is a later interpolation stitched into a founding myth to retroactively sacralize a political event. Someone added this after the Claws fell and wanted the grief to sound ancient.", type: :temporal, display: :full
  annotation "note_1771591969972_6", anchor: "In the Long Dark, her translucent form emerged from the ice-memory", text: "Textbook veil-thinning. During the Long Dark the boundary between living world and ice-memory dissolves — the dead speak, transparent ancestors walk among the living, aurora-readers lose control. This passage describes the phenomenon and attributes it to Selka's personal sanctity rather than to the seasonal mechanics that produce it. The cast records confirm Selka manifests as an ancestral presence during the Long Dark. The scripture makes this miracle. The ice makes it weather.", type: :commentary, display: :popout
  annotation "note_1771591969972_7", anchor: "Are sapient creatures more suitable for sacrifice, or less?", text: "Every commentary I have read on this passage treats the question as rhetorical menace. None treat it as genuine inquiry. Grandmother Deep remembers when penguins were prey. She watched them build towers and channel light and write laws. The question is not a threat — it is a theological problem posed by a mind old enough to have witnessed the entire arc. The dead god's rituals required sacrifice. Does consciousness elevate the offering or invalidate it? I note with no pleasure that penguin scripture preserves the question more honestly than penguin scholarship has ever engaged with it.", type: :commentary, display: :full
  annotation "note_1771591969972_8", anchor: "She touched the dead god's body", text: "The Dreaming Tooth still amplifies Wake-Singer rituals at the Corpse Current during the very era this text was compiled. The scripture elevates Grandmother Deep to lone cosmic witness while ignoring the active ritual infrastructure surrounding the dead god's remains — an infrastructure the compilers would have known about. Easier to theologize one matriarch than to acknowledge an organized orca priesthood operating within hunting range.", type: :skepticism, display: :popout
  annotation "note_1771591969972_9", anchor: "The annotations are not his handwriting", text: "See my annotation on Keeper Hollows regarding the ☽'glacial Crystalline~ Spiral and the discontinuity of self. The artifact survey says the handwriting is clearly his own. Both assessments were competent. The scripture sides with Hollows's experience without noting the contradiction, because prophets do not annotate their own charts by accident.", type: :correction, display: :popout
  annotation "note_1771591969972_10", anchor: "Neither account is complete. Neither may be silenced. Where the seams show, let them show.", text: "Generous ecumenism from a compilation era when fire-core veins ran rich and neither colony was starving. Easy to honor both traditions when abundance makes the dependency tolerable. I would like to see this precept survive a Long Dark with depleted stockpiles. The Flipper Accord was renegotiated three times in secret. The seams do not show because someone chose to display them. They show because the stitching failed.", type: :skepticism, display: :popout
  image "img_chronicle_1771137301901_72dj2h_1772878945844", role: :cover, url: "https://theiceremembers.com/raw/project_1765083188592/img_chronicle_1771137301901_72dj2h_1772878945844"
  image "img_npc_nyla_1772880131076", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_npc_nyla_1772880131076", anchor: "Where she first stood, a spire would later rise", anchor_index: 4414, caption: "Light Ingjeizhi: The First Tower, where Selka's counting began", size: :large, reference_id: "imgref_1772835785410_0"
  image "img_npc_nyla_1772880183354", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_npc_nyla_1772880183354", anchor: "She pulled a fire-core still-molten from the first vein with her bare flippers", anchor_index: 6028, caption: "Nyla's First Descent: The moment the fire was found and the world split", size: :large, reference_id: "imgref_1772835785410_1"
  image "img_npc_nyla_1772880200367", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_npc_nyla_1772880200367", anchor: "She circled the Berg with the patience of something that has seen civilizations", anchor_index: 10248, caption: "Grandmother Deep: The Oldest Voice, still watching, still waiting", size: :medium, reference_id: "imgref_1772835785410_2"
  image "img_npc_nyla_1772880162528", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_npc_nyla_1772880162528", anchor: "He tapped back once, and the knocking answered", anchor_index: 12852, caption: "The Prophet of the Sealed Door: Listening to what Nyla buried", size: :medium, reference_id: "imgref_1772835785410_3"
  log "2026-08-23 — replaced the source's impossible negative-infinity duration with the recorded open tick range; the source wording remains in source_temporal_description."
end
