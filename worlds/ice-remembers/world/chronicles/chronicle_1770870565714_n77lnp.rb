# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

chronicle :chronicle_1770870565714_n77lnp do
  source_id "chronicle_1770870565714_n77lnp"
  title "Three Mouths, One Hunger"
  summary "The Grend-thung Song is a war chant used by orca war-pods during coordinated strikes, featuring recurring figures like Thung Thrakrek Threk's Opening and Gnarkzund Zaith who employ ritualistic hunting techniques involving synchronized jaw-snapping and blood patterns to crush prey. The chant escalates to describe shamans invoking a dead god beneath the ice through crystal-infused rituals and synchronized singing, resulting in the god's final destruction. The song concludes with the orcas having sung a dead god into oblivion, leaving only silence and scars as evidence of their dark power."
  status :complete
  format :document
  focus :single
  narrative_style :folk_song
  focal_era :the_orca_incursion
  ticks from: 142, to: 160
  temporal_description "a short episode during the The Orca Incursion (18 ticks)"
  touched_eras :the_orca_incursion
  entrypoint :the_grend_thung_blood_arts
  entities :the_grend_thung_blood_arts, :grul_grrul_art, :thund_khrrak_art, :thund_slaughter_moon
  events "tpl-orca_combat_technique-142", "act-echo_occurrence:grul-grrul-art-151", "sys-combat_technique_formation:0-160"
  relationships "the-grend-thung-blood-arts:grul-grrul-art:subsumes", "the-grend-thung-blood-arts:thund-khrrak-art:subsumes"
  roles({the_grend_thung_blood_arts: {role: "song-subject", primary: true}, grul_grrul_art: {role: "song-subject", primary: false}, thund_khrrak_art: {role: "cultural-origin", primary: false}})

  prose(<<~'CANONICAL_CHRONICLE', origin: :published)
    # The Grend-thung Song
    
    **Collector's Note:**
    Chanted among orca war-pods before coordinated strikes during the Incursion. Driven in unison at hunting frequency, jaw-snap rhythm. No single author claimed. Thung Thrakrek's name recurs in many such chants, though Slaughter Moon survivors insist the truest voice came from the ice, not the throat.
    
    ---
    
    We carved the channels, spine and rib,
    Thung Thrakrek bled them wide—
    The bone locked hard with fathom-weight,
    The crushing dark rushed inside.
    Threk's Opening cracked the skeleton open,
    The abyss filled what it broke.
    His teeth went notched, his left eye clouded—
    The deep don't care what it woke.
    
    > *Three mouths, one hunger, teeth and tide—*
    > *The deep answers back from the other side.*
    
    Gnarkzund Zaith drew the bleeding pattern,
    The pod held still as stone.
    Khrrak's Collapse needs no jaw to strike with—
    It finds the kill through blood and bone.
    They fell mid-flight, no wound upon them,
    Their chambers crushed within.
    A pod that breaks the rhythm dies—
    A pod that holds it breaks the skin.
    
    > *Three mouths, one hunger, teeth and tide—*
    > *The deep answers back from the other side.*
    
    The Long Dark thinned the veil to nothing,
    The shamans carved their hide,
    Packed the cuts with stolen crystal
    Till the aurora bled and cried.
    The chant came up from under the ice—
    No throat had shaped that sound.
    The prisoners watched. The frozen sea shuddered.
    The dead god stirred the ground.
    
    > *Three mouths, one hunger, teeth and tide—*
    > *The deep answers back. The deep has* died.
    
    ---
    
    Bone remembers the current, brothers,
    The scars still burn in black.
    We sang the dead god's name to nothing—
    And nothing sang it back.
  CANONICAL_CHRONICLE
  annotation "note_1771585898335_0", anchor: "The chant came up from under the ice—\nNo throat had shaped that sound", text: "The orca attribute what answered to their dead god. They are wrong, or at least incomplete. The Foundation Depths preserve impressions from strata older than orca worship, older than penguin settlement — presences I have encountered and cannot classify. During the Long Dark, when the veil thins, these impressions become attentive. Patient. The Nightshelf claim the watchers are real; the Aurora claim belief makes them so. The orca shamans packed stolen aurora-crystal into their own scarification channels and sang downward, and something rose to meet the singing. That it rose does not mean it was what they named. The dead god may have stirred. But the deep ice was already listening.", type: :commentary, display: :full
  annotation "note_1771585898335_1", anchor: "The prisoners watched.", text: "Three words, mid-verse, no elaboration. Penguin prisoners at a Wake-Singer blood-ritual. Forced to witness. Then the song moves on, because the song was never about them.", type: :tangent, display: :popout
  image "img_chronicle_1770870565714_n77lnp_1771763194436", role: :cover, url: "https://theiceremembers.com/raw/project_1765083188592/img_chronicle_1770870565714_n77lnp_1771763194436"
  image "img_the-grend-thung-blood-arts_1772880104665", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_the-grend-thung-blood-arts_1772880104665", anchor: "Thung Thrakrek bled them wide", anchor_index: 391, caption: "The Grend-thung ritual: pressure-magic carved into bone and blood", size: :large, reference_id: "imgref_1772835749375_0"
  image "img_the-grend-thung-blood-arts_1772880136739", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_the-grend-thung-blood-arts_1772880136739", anchor: "The chant came up from under the ice", anchor_index: 1289, caption: "Slaughter Moon: the moment the deep answered back", size: :"full-width", reference_id: "imgref_1772835749375_1"
end
