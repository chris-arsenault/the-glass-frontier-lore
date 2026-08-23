# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

chronicle :chronicle_1770675742928_lj4bni do
  source_id "chronicle_1770675742928_lj4bni"
  title "Herald-Patter and Deep Cant"
  summary "This chronicle documents the sayings and proverbs of The Drowned Ledge, a deep-shaft mining community, passed through oral tradition and ritual testimony under Mandatum∴ccord. The sayings span practical miner's wisdom about fire-cores and tunnel safety, cautionary tales about dangerous practices like harvesting from Iasnolica~ and coalescing debts, virtues of silence and careful leadership exemplified by Nanaiamis~, and cryptic old sayings referencing foundational figures like Silv and events such as the Fissure and the succession. These sayings serve as both cultural memory and political markers, with some carrying dangerous implications about which side speakers stood on during the community's past conflicts."
  status :complete
  format :document
  focus :single
  narrative_style :proverbs_sayings
  focal_era :the_faction_wars
  ticks from: 28, to: 67
  temporal_description "an extended arc during the The Faction Wars (39 ticks)"
  touched_eras :the_faction_wars
  entrypoint :drift_coalesce_glacial
  entities :thaw_iasnolica, :loc_veil_vents, :drift_coalesce_glacial, :nanaiamis_praefectus, :crypt_chancellor_silvcaeclerae_fawn, :mandatum_ccord, :the_reg_lum_veli
  events "tpl-wild_magical_discovery-67", "tpl-great_festival-50", "act-tome_dispels_danger:amulet-of-crest-28"
  relationships "drift-coalesce-glacial:loc_veil_vents:manifests_at", "thaw-iasnolica:drift-coalesce-glacial:corrupted_by"
  roles({thaw_iasnolica: {role: "proverbial-place", primary: false}, loc_veil_vents: {role: "cultural-value", primary: false}, drift_coalesce_glacial: {role: "cultural-value", primary: false}, nanaiamis_praefectus: {role: "folk-hero", primary: false}, crypt_chancellor_silvcaeclerae_fawn: {role: "folk-hero", primary: true}, mandatum_ccord: {role: "cultural-institution", primary: false}})

  prose(<<~'CANONICAL_CHRONICLE', origin: :published)
    # Sayings of the Deep Shelf
    
    These are heard at the fire-markets of The Drowned Ledge, in miner's cant between shifts at the deep shafts, in the herald-patter Nanaiamis~ speaks when she announces the rotation bells. They pass flipper to flipper in the dark places where the Accord's auditors do not linger. Some are stitched in ember-thread on cloaks. Some are spoken only once, at festival, under Mandatum∴ccord, where a saying becomes testimony and testimony becomes record. Choose carefully which ones you repeat.
    
    ---
    
    **Common Sayings**
    
    *Fire shared is fire halved; fire hoarded is fire lost.* — Miner's cant, older than the forges.
    
    *A good tunnel breathes twice: once in, once out. A bad tunnel only breathes in.*
    
    *Count your fire-cores at dusk; count your friends at dawn. The numbers never match.*
    
    *Steady as Nanaiamis~.* — Said of anything still working despite visible damage. Her flippers shake; the festivals run on time.
    
    *The echo knows the shape of the tunnel better than the digger does.*
    
    *Three shifts make a debt; four shifts make a grave.* — Deep-shaft rotation law, spoken as proverb, enforced as fact.
    
    ---
    
    **Cautionary Sayings**
    
    *Don't coalesce what you can't shed.* — Originally about ice-craft. Now about alliances, debts, the things that crystallize in the marrow when you borrow what isn't yours. Ask anyone who's worked the outer vents what crystal in the lungs sounds like.
    
    *Going to Iasnolica~* — harvesting from a source you know is wrong because the alternative is nothing. The black water there tastes like copper and old char. You drink it anyway. You don't go back unchanged.
    
    *Feeding fish bones to a cold vent* — any devotion spent on something already decided to die.
    
    *The ice remembers what you buried.* Speak it at festival or speak it never. What the tunnel keeps, the tunnel keeps — until the Long Dark thins the veil and the dead recite your deeds in voices you recognize.
    
    ---
    
    **Virtue Sayings**
    
    *Silence is the warmest gift.* — Nightshelf compliment: I trust you enough to say nothing.
    
    *The penguin who checks the shaft before she descends will check it again before she sends her crew.* — Said of careful leaders. Said less often since the Fissure.
    
    *A fire-core given in dark is worth three traded in light.* — Merchant-herald formula, attributed to Nanaiamis~ herself, though she denies it.
    
    *Write your name in the ice with your flippers, not your mouth.* — The deepest reputation is the one you never claimed. Mandatum∴ccord demands speech; virtue sometimes demands otherwise. Both are true. It depends which tunnel you're standing in.
    
    ---
    
    **Old Sayings**
    
    *Silv's silence keeps the Berg.* — Nobody explains this one; nobody asks. The first digger's debt is the one no ledger records and no audit calls due. What she found in the deepest dark, she kept. What she gave for it — the wrappings at her wrists tell half; the ice below ☽'slew Nisaemesius~ tells the rest to anyone fool enough to press their flippers against it during the Long Dark.
    
    *Dead flippers hold no seals.* Or: *The code outlasts the coder.* — You will hear both, from different tunnels. The one you quote tells everyone which side of the Fissure you stood on when the succession broke, and Mandatum∴ccord is listening.
    
    *What the black water touches, the black water names.*
  CANONICAL_CHRONICLE
  annotation "note_1771579595677_0", anchor: "Ask anyone who's worked the outer vents what crystal in the lungs sounds like.", text: "Not metaphor. Drift-coalesce — uncontrolled aurora-crystallization forming in lungs and bone-marrow — is documented at the Veil Vents and the Glow-Fissure's northern reach. The saying's drift from 'ice-craft' to 'alliances and debts' tracks the corruption's own progression: what begins as a technique becomes a condition becomes a sentence. The miners who coined this were describing symptoms. By the time it enters herald-patter, it has become philosophy. The transformation is itself a kind of coalescing. The outer vents are corruption source points. The proverb knows this. It just won't say it plainly.", type: :commentary, display: :full
  annotation "note_1771579595677_1", anchor: "anyone fool enough to press their flippers against it during the Long Dark", text: "The ice below ☽'slew Nisaemesius~ is old enough to carry impressions from before penguin habitation. I have worked adjacent strata. The entry assumes what answers you there is Silv's testimony — her debt, her silence. The deep ice does not curate its memories for your convenience. When the Long Dark thins the veil, what presses back against your flippers may not be the first digger at all.", type: :commentary, display: :full
  annotation "note_1771579595677_2", anchor: "The one you quote tells everyone which side of the Fissure you stood on", text: "Loyalty test. Under Mandatum∴ccord, where testimony becomes record, choosing which version of a proverb to speak is not preference — it is self-filing.", type: :skepticism, display: :popout
  image "img_chronicle_1770675742928_lj4bni_1772878736679", role: :cover, url: "https://theiceremembers.com/raw/project_1765083188592/img_chronicle_1770675742928_lj4bni_1772878736679"
  image "img_crypt-chancellor-silvcaeclerae-fawn_1772879508302", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_crypt-chancellor-silvcaeclerae-fawn_1772879508302", anchor: "Steady as Nanaiamis~", anchor_index: 811, caption: "The herald whose tremor marks her reliability—fire-markets of The Drowned Ledge", size: :medium, reference_id: "imgref_1772835731478_0"
  image "img_crypt-chancellor-silvcaeclerae-fawn_1772879518194", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_crypt-chancellor-silvcaeclerae-fawn_1772879518194", anchor: "Going to Iasnolica~", anchor_index: 1411, caption: "The black water source—where devotion becomes desperation", size: :large, reference_id: "imgref_1772835731478_1"
  image "img_crypt-chancellor-silvcaeclerae-fawn_1772879611243", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_crypt-chancellor-silvcaeclerae-fawn_1772879611243", anchor: "The ice remembers what you buried", anchor_index: 1715, caption: "What the tunnel keeps—revealed only when the Long Dark thins the veil", size: :medium, reference_id: "imgref_1772835731478_2"
end
