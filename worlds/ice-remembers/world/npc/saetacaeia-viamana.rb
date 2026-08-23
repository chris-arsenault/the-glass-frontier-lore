# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

npc :saetacaeia_viamana do
  title "☽'Saetacaeia-Viamana~"
  source_id "saetacaeia-viamana"
  subkind :outlaw
  summary "☽'Saetacaeia-Viamana~ is a Nightshelf mystic and outlaw whose mastery of three forbidden magics—Star∴eternal, Shawl☽ Sun, and ☽'glacial Crystalline~ Spiral—made her invaluable to The Communion cult, then made her expendable when Firekeeper∴Doctrine spread beyond their control. She discovered The Dreaming Tooth near Thrall☽ Vavmastius and lost everything trying to keep it sacred. She later discovered and performed the third path—the sacrifice of knowledge itself—to seal the Omega Obelisk in the deep tunnels."
  status :complete
  prominence :recognized
  tags :nightshelf, :magic
  source_kind "npc"
  source_subtype "outlaw"
  source_culture "nightshelf"
  source_status "historical"
  source_prominence 2.3200000000000007
  source_tags({"mystical" => true, "culture" => "nightshelf", "secretive" => true, "leader" => true})
  source_created_at 80
  source_era "the-clever-ice-age"
  cultural_origin "Nightshelf"
  world_status "historical"
  first_recorded 80

  prose(<<~'CANONICAL_PROSE', origin: :published)
    ## Overview
    
    Nightshelf mystic and outlaw, created during the Clever Ice Age — the era in which penguin-kind's appetite for forbidden knowledge outpaced its capacity to survive the consequences. ☽'Saetacaeia-Viamana~ is among the more instructive examples of this pattern, though she would reject the framing. She mastered three forbidden magics, discovered a fourth, lost everything trying to keep a sacred artifact from misuse, and ultimately sacrificed the knowledge itself to seal something worse. She is still alive, which distinguishes her from most penguins with comparable résumés.
    
    ## Training and the Three Forbidden Magics
    
    Her teacher was Umbra-Princeps Alnae~ Oss, founder of ☽'scar Ramtatus~ and leader of the Shadow Covens' Order. Alnae~ taught her three arts that made her invaluable and then made her hunted:
    
    - **Star∴eternal** — a fire-technology channeling captured volcanic cores through bone-lattice conduits, allowing perception across vast distances
    - **Shawl☽ Sun** — the forbidden art of reading and burning ice-memory (see below)
    - **☽'glacial Crystalline~ Spiral** — a meditation that fractures the mind along aurora-lines, trapping moments in crystalline suspension
    
    Alnae~ warned her, in the elliptical Nightshelf manner, that what was learned could not be unlearned. The warning proved insufficient.
    
    The frost-scarring on her flippers — white burns attributed to channeling raw aurora without crystal mediation — dates to this period. She wraps them in ember-thread. The accounts agree on this detail, which makes me trust it slightly less than if they disagreed.
    
    ## Discovery of Shawl☽ Sun
    
    ☽'Saetacaeia-Viamana~ discovered the Dreaming Tooth near Thrall☽ Vavmastius, where The Communion — a Nightshelf cult sworn to communion with the deep-memory — had established devotional caverns. By pressing the Tooth against corrupted ice at Wane☽ Oncea, she found that pollution unraveled into visions of the dead. She was the first to find the art of burning ice-memory, and — critically — chose to witness rather than destroy what the ice held. The chronicle "The City that Grew Fat on Fire" records what happened when later practitioners lacked her restraint.
    
    ## The Third Path and the Omega Obelisk
    
    When the Omega Obelisk — a pressure-blackened whale-bone relic in the deep tunnels — began rising toward the surface, ☽'Saetacaeia-Viamana~ descended to its containment chamber alongside Void-Merchant Valveus-morb~. There she performed the Crystalline Spiral *backward*, surrendering her knowledge of all three forbidden magics to bind the artifact through sacrifice rather than force. This was the "third path" Alnae~ had once demonstrated in the same chamber. Her flippers bear additional burns from the binding. She cannot remember precisely what she gave up.
    
    ## Present Status
    
    She teaches Firekeeper∴Doctrine in caverns near Thrall☽ Vavmastius — not from belief but because ☽'Iarlocias the Silent, a Communion figure, built something from her work that she cannot bring herself to let collapse. She serves as custodian of the ☽'micseleia' Dagger, a fractured shadow-steel blade held in Communion stores. The spent amulet at her throat she still wears. Those who knew her before the Orca Incursion say she used to laugh.
  CANONICAL_PROSE
  annotation "note_1771579310448_0", anchor: "Alnae~ taught her three arts", text: "No. The entry lists Shawl☽ Sun among the three magics Alnae~ taught her, then two sections later describes ☽'Saetacaeia-Viamana~ discovering it herself near Thrall☽ Vavmastius. The ability's own description confirms she is its originator. Alnae~ taught her two arts. The third she pulled out of corrupted ice with her own flippers. The overview's 'discovered a fourth' now has no referent — there is no fourth. I miscounted my own subject's magics and let the error propagate through the structure. In an edition meant to survive a 'transition.' Unforgivable.", type: :correction, display: :full
  annotation "note_1771579310448_1", anchor: "the \"third path\" Alnae~ had once demonstrated in the same chamber", text: "Sourced from a single Communion devotional text. Alnae~'s own survey of that tunnel network — the one that used the word 'dissipation' — mentions no such demonstration. The Communion has a documented habit of folding its teachers retroactively into its theology. I let this stand because the alternative — that Alnae~ performed a knowledge-sacrifice and the survey's gaps are the proof — is worse.", type: :skepticism, display: :full
  annotation "note_1771579310448_2", anchor: "not from belief but because", text: "She wears the spent amulet. She wraps her burns in ember-thread. She teaches in the caverns. This is not disbelief. This is belief that has forgotten its own name — which, given the Spiral's costs, may be literal.", type: :commentary, display: :popout
  image "img_saetacaeia-viamana_1767901653599", role: :entity, url: "https://theiceremembers.com/raw/project_1765083188592/img_saetacaeia-viamana_1767901653599"
end
