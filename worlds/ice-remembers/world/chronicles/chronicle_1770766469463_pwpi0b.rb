# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

chronicle :chronicle_1770766469463_pwpi0b do
  source_id "chronicle_1770766469463_pwpi0b"
  title "Luminary Dead; Aurora-Seal Unclaimed"
  summary "Following the death of Luminary Meridian-of-the-First-Light, a succession crisis has left the aurora-seal unclaimed by either Claimant Prism-Ascending or Claimant Depth-Keeper, forcing the postponement of the Tide Custom festival. Fire-core rationing has been reduced to Third Tier levels, with residential allocations cut from three to two cores per quarter-cycle, while mysterious unregistered shipments from The Collective☽ Of Led∴merch arrive without proper documentation. As the Long Dark approaches and orca activity intensifies on the eastern perimeter, Forum Floe faces a critical shortage of authority and resources, with no settled leadership to maintain the colony's beacon-fires."
  status :complete
  format :document
  focus :ensemble
  narrative_style :heralds_dispatch
  focal_era :the_orca_incursion
  ticks from: 149, to: 187
  temporal_description "an epic saga spanning 2 eras, centered on the The Orca Incursion"
  touched_eras :the_orca_incursion, :the_frozen_peace
  entrypoint :aurora_touched_crown_contested
  entities :aurora_touched_crown_contested, :the_forum_floe, :threshold_born, :collective_of_shadow_covens, :zhachelang_zhihi_opalum, :tide_custom
  events "sys-merchant_prosperity:collective-of-shadow-covens-187", "act-seize_control:collective-of-shadow-covens-149", "act-seize_control:threshold-born-159", "tpl-succession_crisis-160", "act-seize_control:collective-of-shadow-covens-172"
  relationships "aurora-touched-crown-contested:the-forum-floe:epicenter_of", "tide-custom:aurora-touched-crown-contested:commemorates", "tide-custom:threshold-born:celebrated_by", "tide-custom:zhachelang-zhihi-opalum:celebrated_by", "zhachelang-zhihi-opalum:threshold-born:member_of"
  roles({aurora_touched_crown_contested: {role: "newsworthy-subject", primary: true}, the_forum_floe: {role: "affected-territory", primary: true}, threshold_born: {role: "faction-involved", primary: false}, collective_of_shadow_covens: {role: "faction-involved", primary: false}, zhachelang_zhihi_opalum: {role: "notable-figure", primary: false}})

  prose(<<~'CANONICAL_CHRONICLE', origin: :published)
    # AURORA STACK HERALD'S DISPATCH
    *Cycle 47, third rotation, dimming quarter — Forum Floe posting-wall and all settlements*
    
    ---
    
    ## SUCCESSION CRISIS HALTS TIDE CUSTOM; FIRE-CORE RATIONING ENTERS THIRD TIER AS LONG DARK CLOSES
    
    Eleven days since the death of Luminary Meridian-of-the-First-Light—crystal shard in the left lung, found frost-sealed in her sleeping-chamber at Forum Floe—neither Claimant Prism-Ascending, Aurora-Heir, nor Claimant Depth-Keeper holds the aurora-seal. The Tide Custom, scheduled for the final clear-sky window, stands postponed. By order of —
    
    ---
    
    The postponement notice bears the signature of Zhachelang zhihi'Opalum, Organizer-of-Record, Tide Custom, acting under Accord civic provision rather than Luminary authority. "The galleries require fire-core allocation I am not authorized to guarantee," Zhachelang zhihi'Opalum states for the record. "Display booths remain priced at eight aurora fragments. The festival awaits scheduling." Half-carved crests line the upper galleries. Merchants holding aurora-charged silk may file inventory-loss at the mid-terrace registry, hours of dim-light only.
    
    **Fire-Core Rationing — Revised Downward.** Heating brazier allotments enter Third Tier effective this rotation. Residential: two cores per quarter-cycle, reduced from three. Forum Floe processing stations: allotment under review. Fourteen crates of Class III fire-cores arrived at Forum Floe via unregistered channel, bearing the triple-mark of ☽'tenebris. The Collective☽ Of Led∴merch is named as source-of-record. Ledger documentation: none filed. The crates have not been refused.
    
    **Defense Rotation — Eastern Perimeter, Forum Floe.** Three orca probing actions this quarter-cycle, including shore-breaker activity at the secondary harvesting rig. Garrison rotation continues per standing schedule. Perimeter anomalies reported at eastern stations. Couriers are cordially invited to travel in pairs until further notice.
    
    **Thin-Veil Advisory, Standard.** Ice-readers report uncontrolled visions at increased frequency. Luminaries cannot convene. Aurora: diminishing. Diminishing aurora does not technically qualify as clouded skies.
    
    **Factional Registry, Amended.** Holdborn (ice-thresh) holdings revised to one — The Hearth Plaza. Membership revised downward. Sholong's Codex status: under review.
    
    **Walking Count — Long Dark Advisory.**
    The count stands at —
    Ferryman. Weshaiou huhua'Mirror. Downdraft-Second. Jaizha Pelm'Aurora. Zhangunou Skael'Bridge. Yongneheihua. Lucaetlaera~ Of ☽'.
    By trade-name only, per custom. The full list continues at the Forum Floe posting-wall. Citizens are reminded the Walking is not —
    
    ---
    
    Fire-cores remaining: revised downward. The Long Dark approaches a Stack whose beacon-fires answer to no settled authority. Trade through Forum Floe continues under disputed terms; unregistered shipments now outnumber ledgered ones. Orca pressure on the eastern perimeter intensifies without unified garrison command. The postponement of the Tide Custom preserves crystals the colony cannot afford to burn — and denies both claimants the public demonstration the Luminaries require for investiture. Someone must light the beacon-fires.
    
    By order of —
  CANONICAL_CHRONICLE
  annotation "note_1771586408242_0", anchor: "shore-breaker activity at the secondary harvesting rig", text: "Shore-breakers split ice to create water-access channels. Behind them come herders, who drive groups toward killing zones. Behind the herders: finishers, waiting in the water below every escape route. It is a three-phase kill system rehearsed across generations. A 'probing action' that deploys shore-breakers is not probing. It is a dress rehearsal with live choreography. The herald has buried a tactical escalation report inside a garrison rotation notice with the urgency of a scheduling memo. I cannot decide whether this is composure or whether no one in the current command structure recognizes what shore-breaker deployment signals. Given the authority vacuum, I suspect the latter.", type: :commentary, display: :full
  annotation "note_1771586408242_1", anchor: "The crates have not been refused", text: "Six words doing more institutional work than the entire Flipper Accord. No one authorized acceptance. No one recorded refusal. The fire-cores are heating someone's quarter right now and the ledger page is blank. Bureaucratic genius or bureaucratic paralysis — the warmth is identical.", type: :skepticism, display: :popout
  annotation "note_1771586408242_2", anchor: "Ferryman. Weshaiou huhua'Mirror. Downdraft-Second.", text: "Two courier trade-names. The Corps fields perhaps forty active runners between both civilizations. Losing two to the Walking during a succession crisis with fire-core rationing at Third Tier is not a line item — it is the supply chain shedding vertebrae. The herald lists them in the same cadence as civilians, which is either admirable restraint or someone who hasn't done the arithmetic.", type: :commentary, display: :popout
  image "img_chronicle_1770766469463_pwpi0b_1772879543059", role: :cover, url: "https://theiceremembers.com/raw/project_1765083188592/img_chronicle_1770766469463_pwpi0b_1772879543059"
  image "img_aurora-touched-crown-contested_1772881544960", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_aurora-touched-crown-contested_1772881544960", anchor: "Half-carved crests line the upper galleries", anchor_index: 968, caption: "The Tide Custom postponed: Aurora Stack's beacon-fires await settlement of succession.", size: :large, reference_id: "imgref_1772835778544_0"
  image "img_aurora-touched-crown-contested_1772881552720", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_aurora-touched-crown-contested_1772881552720", anchor: "Three orca probing actions this quarter-cycle, including shore-breaker activity", anchor_index: 1670, caption: "Eastern perimeter under pressure: orca incursions intensify as garrison command fractures.", size: :large, reference_id: "imgref_1772835778544_1"
  image "img_aurora-touched-crown-contested_1772881569109", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_aurora-touched-crown-contested_1772881569109", anchor: "The Long Dark approaches a Stack whose beacon-fires answer to no settled authority", anchor_index: 2705, caption: "Long Dark Advisory: Aurora Stack's authority collapses under accumulated constraint.", size: :medium, reference_id: "imgref_1772835778544_2"
end
