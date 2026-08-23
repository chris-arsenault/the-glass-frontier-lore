# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

npc :thung_gnark_krul do
  title "Jark Rankzule"
  source_id "thung-gnark-krul"
  subkind :orca
  summary "Jark Rankzule is a scarred orca raider whose left flank bears the permanent maiming of Augur ☽'Milucaum~ Shadow-bane—a wound that never healed clean and marks him as diminished among his pod. He hunts alongside Gork Slaughterend near Aurora Stack with the brutal focus of one who must prove his worth through kills, not mobility."
  status :complete
  prominence :marginal
  tags :orca
  aka "thung-gnark-krul"
  source_kind "npc"
  source_subtype "orca"
  source_culture "orca"
  source_status "alive"
  source_prominence 1.605
  source_tags({"orca" => true, "raider" => true, "culture" => "orca", "hostile" => true, "external" => true, "follower" => true, "maimed" => true})
  source_created_at 166
  source_era "the-orca-incursion"
  cultural_origin "Orca"
  world_status "alive"
  first_recorded 166

  prose(<<~'CANONICAL_PROSE', origin: :published)
    ## Overview
    
    Jark Rankzule is an orca raider active during and after the Orca Incursion, permanently maimed by Augur ☽'Milucaum~ Shadow-bane — the same augur who killed his hunting partner Gork Slaughterend during the Frozen Peace. Three parallel gashes severed muscle along Rankzule's left flank and never knitted straight, leaving him listing in the water and favoring his right side in any turn. His pod does not speak of the wound. The Gork Slaughterend who now covers his weakened flank in combat is a descendant of the original, bearing the inherited name — a detail the oral accounts do not trouble themselves to clarify.
    
    Rankzule carries a kelp-rope harness strung with seventeen penguin beaks, a pressure harpoon notched for each successful hunt, and is a practitioner of Gnash and Crumble, the pressure-collapse technique derived from the Rupture-Song.
    
    ## The Nighted~ Lantern
    
    Nightshelf archival records catalogue Rankzule among four successive orca thieves of the Nighted~ Lantern, a Nightshelf grimoire of deep communion and blood-ritual. All four are classified as deceased — a designation his continued seasonal raids within sight of the Aurora Stack wall make difficult to sustain. None of the four read past the tome's third chapter. The Lantern is bound against his ribs with kelp. What he sought in it, or failed to find, the record does not say.
    
    ## The Clear-sky Mandate
    
    Rankzule's raids are credited with forcing Aurora Stack to replace the Circle Gathering with the Clear-sky Mandate, the war-measure requiring Council votes under open aurora skies. Whether a single raider's predation truly compelled institutional reform or whether the Mandate's architects found it convenient to personify a systemic threat is a question the administrative ice does not resolve.
    
    ## The Notices
    
    Postings have appeared on colony boards — blocky script too large for flipper-work, signed with a crude fluke-mark or the initials *J.R.Z.* One, found near the Nightshelf's third thermal junction, declared that a hunt-kin with a maimed flank sought what the pod would not give, and offered to trade at the junction where warm-stone meets salt. Someone bordered it for removal. No one removed it.
  CANONICAL_PROSE
  annotation "note_1771586695424_0", anchor: "All four are classified as deceased", text: "The Nightshelf does not misfile. If four successive orca thieves are classified as deceased, and one raids seasonally within sight of the Aurora wall, then either their legendary record-keeping has suffered a lapse I find implausible, or a dead orca requires no diplomatic response. Bureaucratic convenience has a long and distinguished history on the Berg.", type: :commentary, display: :popout
  annotation "note_1771586695424_1", anchor: "Whether a single raider's predation truly compelled institutional reform", text: "My three prior annotations on the Mandate traced its architecture to Still Pools isolationists who understood exactly what a legislative paradox was for. Rankzule's raids provided the crisis. But crises provide cover, not authorship. The administrative ice from this period shows the Mandate's language was substantially complete before Rankzule's name appears in any tactical report. Someone needed a face for the threat. Rankzule, listing visibly to starboard with his trophy harness, was theatrically obliging.", type: :skepticism, display: :full
  annotation "note_1771586695424_2", anchor: "None of the four read past the tome's third chapter", text: "Who verified this, and how? The grimoire is kelp-bound to a living orca's ribcage. Someone counted turned pages at distance, or this is inference dressed as fact.", type: :skepticism, display: :popout
  annotation "note_1771586695424_3", anchor: "signed with a crude fluke-mark or the initials *J.R.Z.*", text: "An orca who supposedly cannot read past chapter three of a stolen grimoire nonetheless composes declarative sentences in script recognizable to penguins, signs with initials following penguin naming convention, and identifies a thermal junction by its infrastructure designation. Either Rankzule has resources this entry does not account for, or the assumption that orca literacy is uniformly absent needs quiet retirement.", type: :commentary, display: :full, source_anchor: "signed with a crude fluke-mark or the initials J.R.Z."
  image "img_thung-gnark-krul_1767906842069", role: :entity, url: "https://theiceremembers.com/raw/project_1765083188592/img_thung-gnark-krul_1767906842069"
  log "2026-08-23 — retargeted stale published note anchors note_1771586695424_3 to their surviving passages; each original remains in source_anchor."
  log "2026-08-23 — classified source relation thung-gnark-krul:clear-sky-mandate:related_to as provoked; Jark Rankzule's raids prompted the Mandate."
end
