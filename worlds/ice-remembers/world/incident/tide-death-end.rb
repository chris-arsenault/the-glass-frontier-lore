# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

incident :tide_death_end do
  title "Tide End Incident"
  source_id "tide-death-end"
  subkind :disaster
  summary "The Wake-Singers drowned The Glow-Fissure in ritual fire and blood, breaking the aurora-sanctified ground where penguins had buried their deepest dead. The dark magic that rippled outward killed everything in the shallows for three seasons—fish, seals, the small things that kept the orca pods fed—and forced the raiders deeper into hunger and stranger worship."
  status :complete
  prominence :marginal
  tags :orca
  aka "tide-death-end"
  source_kind "occurrence"
  source_subtype "disaster"
  source_culture "orca"
  source_status "historical"
  source_prominence 1.5
  source_tags({"ritual" => true, "dark_magic" => true, "desecration" => true, "culture" => "orca", "fire" => true, "mundane" => true})
  source_created_at 82
  source_era "the-clever-ice-age"
  cultural_origin "Orca"
  world_status "historical"
  first_recorded 82

  prose(<<~'CANONICAL_PROSE', origin: :published)
    A Wake-Singer desecration of The Glow-Fissure, the deep aurora-lit crack beneath Nightfall Shelf, carried out during the Clever Ice Age. The Wake-Singers — an orca shaman cult devoted to waking their dead god through blood sacrifice — chose a storm-dark period when the aurora was inactive and penguin airships could not launch. They poured rendered orca fat and performed reversal-songs into the Fissure, breaking the aurora-sanctified ground where penguins had interred their oldest dead.
    
    The ecological aftermath is better documented than the ritual itself. The corruption that spread outward killed fish, seals, and krill stocks in the surrounding shallows for three full seasons. A Nightshelf salvage crew recovered a bone-handled ritual knife from the site; its handle was carved with names that have never been identified.
    
    The orca raiders who commissioned the rite received none of the abundance promised. The shallows they depended on were now dead. What the Tide End Incident produced, for orca and penguin alike, was hunger — and a deepening turn toward the stranger worship that followed.
  CANONICAL_PROSE
  annotation "note_1771595385240_0", anchor: "The corruption that spread outward killed fish, seals, and krill stocks in the surrounding shallows for three full seasons.", text: "I corrected this in the Clever Ice Age entry and I am correcting it again here because apparently I did not listen to myself. The Nightshelf's krill-harvesting expansion had already crossed into traditional orca hunting grounds — I documented the boundary strata. Those shallows were stressed before a single drop of rendered fat hit the water. The ritual was the killing blow to an ecosystem penguin industry had been strangling for a generation. My entry assigns sole causation to the Wake-Singers because desecration is a cleaner story than complicity. It is also wrong.", type: :correction, display: :full
  annotation "note_1771595385240_1", anchor: "its handle was carved with names that have never been identified", text: "Never been identified by penguins. Orca naming conventions follow pod-lineage structures that no Aurora linguist has studied and no Nightshelf code-breaker has been tasked with. The knife is in a Nightshelf evidence vault. The names are unidentified because no one with the competence to read them has been allowed near it.", type: :correction, display: :popout
  annotation "note_1771595385240_2", anchor: "penguin airships could not launch", text: "Airship construction does not appear in any Clever Ice Age stratum I have catalogued. The earliest airship references surface in late Frozen Peace administrative ice — provisioning orders, dock-weight schedules. This detail belongs to a later era's account of Fissure operations, compressed into the Tide End narrative by either source contamination or my own carelessness in compiling across strata. Given my mood, I will blame the ice.", type: :temporal, display: :popout
  image "img_tide-death-end_1767911325048", role: :entity, url: "https://theiceremembers.com/raw/project_1765083188592/img_tide-death-end_1767911325048"
end
