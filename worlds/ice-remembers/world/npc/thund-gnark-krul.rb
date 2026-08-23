# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

npc :thund_gnark_krul do
  title "Ruibung"
  source_id "thund-gnark-krul"
  subkind :orca
  summary "Ruibung is a scarred orca raider of The Drowned Ledge whose body bears the marks of a decade's brutal teaching under Gork Slaughterend and the sharper scars of defeat—a fin split by Otrolal's blade, a jaw that doesn't close quite right after Netemia's strike. He moves with the coiled precision of someone who learned to kill before he learned to think, and kills still, though the artifact he stole and the art he perfected have both slipped through his grasp like currents. A tribunal under Thaw-Kept authority sentenced him to permanent exile beyond the berg's shadow."
  status :complete
  prominence :recognized
  tags :orca
  aka "thund-gnark-krul"
  source_kind "npc"
  source_subtype "orca"
  source_culture "orca"
  source_status "historical"
  source_prominence 2.0549999999999997
  source_tags({"orca" => true, "raider" => true, "external" => true, "culture" => "orca", "hostile" => true, "maimed" => true})
  source_created_at 186
  source_era "the-frozen-peace"
  cultural_origin "Orca"
  world_status "historical"
  first_recorded 186

  prose(<<~'CANONICAL_PROSE', origin: :published)
    ## Formation and Scars
    
    Ruibung is an orca raider associated with the Drowned Ledge, a flooded former Nightshelf mining outpost, and a product of Gork Slaughterend's doctrine — the middling-rank raider who taught that strength is proof, kills are currency, and the pack is everything. Ruibung believed this until the pack stopped winning.
    
    His body is a legible record. His left dorsal fin was split cleanly by Otrolal's blade — a deliberate cut, not a combat wound, implying either punishment or ritual. His jaw sits permanently open on the left side where Netemia Glow-bringer, an Aurora Stack defender, broke and improperly reset the bone. His teeth are notched in the old orca style, each mark representing a pod-mate lost during the Orca Incursion; he stopped adding notches after the third year of the Frozen Peace, the era of uneasy reconstruction that followed. Whether he stopped because the losses stopped or because counting them became unbearable is not recorded.
    
    ## Grandfather Blood and the Religious Dimension
    
    Ruibung is named in Grandfather Blood's descent-scripture as *weapon-disciple* — a designation casting his wounds not as defeats but as initiatory marks and his practice of Gnash and Crumble, the combat form he and Grandfather Blood refined together, as sacrament. The chronicle known as "The Body's Testament" frames both figures within Wake-Singer theology: exiled practitioners worshipping the dead god whose corpse drifts in the deep, their suffering understood as pilgrimage toward communion. The text describes plans to assault Aurora Stack itself as ritualistic feeding.
    
    Ruibung is also a practitioner of the Grend Blood-Arts, the coordinated pod-hunting doctrine, though accounts suggest his practice has grown solitary and mechanical — form without communion.
    
    ## Tribunal and Exile
    
    When the patrol ship *Rime-ghost* discovered two orcas occupying the Drowned Ledge's lower passages, Ruibung was carrying the Thrumed~ Shadow-glass, a crystallized artifact of considerable power, alongside tools consistent with fire-core extraction. A cross-cultural tribunal convened under Thaw-Kept authority found Ruibung guilty of trespass upon Nightshelf sovereign territory and possession of stolen property, but acquitted him of coordinated raid activity — the evidence supported scavenging, not assault. Grandfather Blood was tried alongside him.
    
    When Luminary Xuzhong Pelm'Oath asked why he had not spoken in his own defense, Ruibung said only that nothing he said meant anything there. The sentence was permanent exile beyond the berg's shadow, effective at next tide.
    
    He does not speak of the Shadow-glass anymore. Other raiders report seeing him staring into dark water as if something valuable had drowned there.
  CANONICAL_PROSE
  annotation "note_1771586264081_0", anchor: "Netemia Glow-bringer, an Aurora Stack defender, broke and improperly reset the bone", text: "Netemia scarred both teacher and student. Gork Slaughterend's entry records her as his first wounding — she broke him at Aurora Stack before the Augur finished the job. That she then broke Ruibung's jaw suggests either extraordinary bad luck for Gork's lineage or a defender who specifically targeted his school. The ice near the eastern approach preserves pressure-impressions consistent with repeated orca approach along the same vector. Someone kept coming back. Someone kept being there.", type: :commentary, display: :full
  annotation "note_1771586264081_1", anchor: "trespass upon Nightshelf sovereign territory", text: "The Drowned Ledge's lower passages are underwater. They have been underwater for three generations. Orcas live in water. Charging an orca with trespass for occupying a submerged tunnel requires the legal assertion that flooded Nightshelf infrastructure remains sovereign territory rather than becoming, as it plainly is, ocean. The tribunal established this without recorded argument. See my annotation on Grandfather Blood's trial — the Nightshelf, whose sovereignty was supposedly violated, were not participants in this adjudication. Pelm'Oath claimed jurisdiction over water on behalf of a party not present. Remarkable.", type: :correction, display: :full
  annotation "note_1771586264081_2", anchor: "a deliberate cut, not a combat wound, implying either punishment or ritual", text: "From what source? A split fin is a split fin. I hedged this in the main text and I should not have. There is no surviving testimony distinguishing the cut's intent.", type: :skepticism, display: :popout
  image "img_thund-gnark-krul_1767901348451", role: :entity, url: "https://theiceremembers.com/raw/project_1765083188592/img_thund-gnark-krul_1767901348451"
end
