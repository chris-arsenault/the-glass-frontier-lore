# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

concept :circle_gathering do
  title "Circle Gathering"
  source_id "circle-gathering"
  subkind :social_practice
  summary "Circle Gathering is the Aurora Stack's seasonal convocation held in The Still Pools where factions and merchants assemble under clear skies to display artifacts, negotiate resources, and commemorate the dead—but only when the aurora permits, and only among those the Luminaries deem worthy of witness."
  status :complete
  prominence :renowned
  tags :aurora_stack
  source_kind "rule"
  source_subtype "social"
  source_culture "aurora-stack"
  source_status "enacted"
  source_prominence 3.392
  source_tags({"cultural" => true, "culture" => "aurora-stack", "libertarian" => true, "mundane" => true})
  source_created_at 126
  source_era "the-orca-incursion"
  cultural_origin "Aurora Stack"
  world_status "enacted"
  first_recorded 126

  prose(<<~'CANONICAL_PROSE', origin: :published)
    ## Definition
    
    Circle Gathering is the Aurora Stack's open-sky convocation, held at the Still Pools — a corruption-adjacent site repurposed as neutral ground — and convened only when the aurora burns clearly enough for the Council of Luminaries to authorize it. If cloud cover intervenes mid-session, all business halts until the light returns. The practice originated during the Orca Incursion, which tells you what it was built to survive.
    
    ## Conduct
    
    Participants assemble in circles on the ice. Business is spoken openly — no shadow-dealing, no concealed negotiations. Factions that maintain active hostilities elsewhere observe truce under aurora-light: the Midnight Claws, the Nightshelf's criminal syndicate, have traded stolen goods at the same gathering where legitimate merchants like Lianhingme hi'Shard display artifacts such as the ☽'micseleia' Dagger on ice-pedestals. The E'frostlings, Aurora Stack's fractured merchant bloc, attend as a matter of custom.
    
    Violations — breaking the circle, drawing weapons, moving deals into shadow — result in exclusion from future gatherings at minimum. The phrasing in the oral tradition is "if the Luminaries let you leave at all," which I take to be disciplinary rather than lethal, though I have not found a record that clarifies the distinction.
    
    ## Commemorative and Arbitral Functions
    
    The Gathering formally commemorates the Aurora-touched succession crisis, the Darkening, the Breach, the Accord, the Gilding, and the succession dispute Of The High Tier — six events spanning three eras. It also serves as binding arbitration for cross-colony disputes; Nightshelf Fire Keepers have attended to witness formal claims, and decisions reached within the circle hold by surviving custom.
    
    It was at a Circle Gathering that Augur ☽'Silvsiaelrous~ the Resolute successfully argued for the Ring's placement in the memorial alcove Echo∴eliquiae, redefining a weapon as a witness. Lianhingme hi'Shard has announced three gatherings. After the second, her flipper trembled when she spoke the names of the dead. No one asked why.
  CANONICAL_PROSE
  annotation "note_1771592090759_0", anchor: "a corruption-adjacent site repurposed as neutral ground", text: "\"Corruption-adjacent\" understates the evidence. The Still Pools is not near a corruption source — it is one. Canon breach-point records list it alongside the Glow-Fissure and the Veil Vents as an active origin. Cleansing rituals create temporary sanctified zones; they do not reclassify the site. I softened this in the main text because the entry concerns the Gathering, not the Pools. But the distinction matters: every Circle Gathering convenes on ground that is actively producing corruption symptoms.", type: :correction, display: :full
  annotation "note_1771592090759_1", anchor: "decisions reached within the circle hold by surviving custom", text: "Three secret renegotiations of the Flipper Accord are frozen into administrative ice. None were conducted within a circle. None were conducted under aurora-light. The Gathering's arbitral authority is real — but it operates in a domain the actual power brokers have already bypassed.", type: :skepticism, display: :popout
  annotation "note_1771592090759_2", anchor: "no shadow-dealing, no concealed negotiations", text: "The same sentence that prohibits concealed negotiations names the Midnight Claws trading stolen goods in plain sight. The rule does not prohibit illicit commerce. It prohibits concealment. The distinction is structural, not cosmetic — forced transparency launders what it touches.", type: :commentary, display: :popout
  annotation "note_1771592090759_3", anchor: "her flipper trembled when she spoke the names of the dead", text: "Cold-burn discoloration and involuntary tremor are catalogued corruption symptoms at three of the four active source points I have surveyed. The Still Pools is the fourth. This may be grief. It may not be.", type: :commentary, display: :full, source_anchor: "Her flipper trembled when she spoke the names of the dead"
  image "img_circle-gathering_1767901022184", role: :entity, url: "https://theiceremembers.com/raw/project_1765083188592/img_circle-gathering_1767901022184"
  log "2026-08-23 — retargeted stale published note anchors note_1771592090759_3 to their surviving passages; each original remains in source_anchor."
end
