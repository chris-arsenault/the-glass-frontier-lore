# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

chronicle :chronicle_1770850460992_auzhaa do
  source_id "chronicle_1770850460992_auzhaa"
  title "Where Else Would You Go?"
  summary "The Dawn Terrace, operated by The Icebound Exchange, offers a seven-tier guided tour with aurora galleries, heritage walks, and food stalls, though lower vaults remain closed for maintenance. Reviews are mixed: while visitors praise the stunning aurora channels and quality krill at Stall 9, critics including Nangcheowei jai'Realm and Assessor Zheishongfeihua raise concerns about sanitized historical narratives, omission of zhixai'Ward's name, and unsettling atmospheric phenomena including unexplained humming and pressure sensations. The Exchange's non-refundable deposit policy and vague language around maintenance and \"atmospheric immersion\" have drawn scrutiny from reviewers questioning what the facility is concealing."
  status :complete
  format :document
  focus :single
  narrative_style :product_reviews
  focal_era :the_great_thaw
  ticks from: 0, to: 29
  temporal_description "an epic saga spanning 2 eras, centered on the The Great Thaw"
  touched_eras :the_great_thaw, :the_faction_wars
  entrypoint :faction_icebound_exchange
  entities :faction_icebound_exchange, :the_dawn_terrace, :assessor_zheishongfeihua, :long_dark_edict
  events "act-seize_control:faction_icebound_exchange-20", "tpl-location_discovery-22", "act-spread_corruption:loc_still_pools-26", "act-seize_control:faction_icebound_exchange-29"
  roles({faction_icebound_exchange: {role: "vendor", primary: false}, the_dawn_terrace: {role: "reviewed-subject", primary: true}, assessor_zheishongfeihua: {role: "notable-reviewer", primary: false}})

  prose(<<~'CANONICAL_CHRONICLE', origin: :published)
    # THE DAWN TERRACE — Full Experience Package
    **Operated by The Icebound Exchange** | Seven-tier guided tour, aurora gallery access, heritage walk, food stalls (Tiers 1–5 only). Warming stations at Tiers 2, 4. Lower vaults closed for maintenance. Deposit non-refundable per Amendment 31.
    
    ---
    
    **★★★★★ — Worth every crystal. Where else would you go?**
    *— Fengchijouxai Rukar'Mirror, Aurora Stack resident*
    
    Took the family for the full package after the Exchange ran their Thaw-season promotion and I cannot overstate how stunning the upper galleries are. The aurora channels through zhixai'Ward's original survey-cuts — yes, *those* cuts, whatever the brochure says about "collective artisan heritage" — and the light moves like living water through the fifth tier. My chicks were speechless. The fire-grilled krill at Stall 9 was the best I've had topside; the Nightshelf vendor running it actually showed my eldest how fire-cores heat differently than aurora-crystal. Warming station at Tier 4 was prompt and the attendant — young hen, marked forehead, very polite despite everything — kept our coats dry. Beautiful place. Genuinely beautiful. You forget The Berg is all there is, for a few hours. Then you step outside and remember, but that's not the Terrace's fault, is it? I'd go again. I'd go every cycle if I could afford the deposit. Interlocked flippers holding a prism — and your deposit.
    
    ---
    
    **★★ — Heritage walk is sanitized nonsense**
    *— Nangcheowei jai'Realm*
    
    I specifically purchased the heritage walk to see the historical survey site. What I got was a guide reciting Exchange-approved text about "communal discovery" with no mention of Iing zhixai'Ward by name — not once. The blood-marks on the Tier 3 passage walls have been polished over with volcanic stone that doesn't match the original ice by a full shade of gray, and when I asked about the lower vaults, I received the standard "closed for maintenance" followed by a redirect toward Stall 14's krill wraps. I've filed under Amendment 31. I know what Amendment 31 says. The Exchange knows what Amendment 31 says. We'll see whose reading of the original ice holds up, assuming anyone can still *read* the original ice. Also: the third crystal pillar on the left in the Tier 5 gallery hums at a frequency that made my chick cry for two cycles after we got home. Nobody warned us. The brochure calls it "ambient resonance."
    
    ---
    
    **★★★ — Genuinely spectacular, genuinely unsettling**
    *— Assessor Zheishongfeihua, E'frostlings Review Circuit*
    
    The upper tiers remain structurally magnificent — I will not deny the Exchange competent maintenance of what they seized. Aurora-light channels function. The krill stalls are adequate, if overpriced by roughly forty percent against Terrace Momiou benchmarks. But the corruption creep from the Still Pools is visible now in the frost-patterning along Tiers 3 and 4: gray, brittle, wrong. The temperature holds at 48 degrees. That is not atmosphere. That is a symptom. I stood at Tier 5's eastern overlook and felt pressure in the bone — not aurora-magic, something lower, something the Exchange's "alignment of experience" language was specifically crafted to avoid naming. The Thaw-Paths Medallion glows without aurora-light. I watched it. I recommend the upper galleries for visitors who accept the terms. I do not recommend lingering. Three stars. At least nothing followed me home this time.
    
    ---
    
    **Quick Takes:**
    
    **★★★★** Krill wrap at Stall 9 excellent. Stall 14 gave me ice-gut. Lower vaults closed for maintenance again. — *Zhongchimai*
    
    **★** Something watched me from the second gallery. Not a penguin. Patient. I told staff. They handed me a printed response card. I have the card. It says "atmospheric immersion." — *Zhushe qei'Virtue*
    
    **★★★** Fine for what it is. Where else would you go? — *anonymous*
  CANONICAL_CHRONICLE
  annotation "note_1771576647089_0", anchor: "Something watched me from the second gallery. Not a penguin. Patient", text: "The perceptual profile is precise: non-penguin, patient, observational. This matches deep-ice impressions from before penguin civilization — presences the Nightshelf shadow-records catalogue as recurring during Long Dark veil-thinnings and near active corruption breach-points. The Still Pools qualifies as both. That a Thaw-season tourist independently reproduces the same description found in classified archival strata is not 'atmospheric immersion.' That the Exchange pre-printed response cards means this is not the first report, and their solution was not investigation but stationery.", type: :commentary, display: :full
  annotation "note_1771576647089_1", anchor: "At least nothing followed me home this time", text: "'This time.' I wrote about Zheishongfeihua's trembling flipper in the E'frostlings entry. A penguin who restored the Compass of Crystal — corrupted enough that half the Stack whispered about bargains — visits a corruption-adjacent tourist site regularly enough to have established a baseline for whether entities follow her home. She gave it three stars. Overpriced krill.", type: :skepticism, display: :popout
  annotation "note_1771576647089_2", anchor: "Where else would you go?", text: "Three times in one set of reviews — as wonder, as resignation, and as anonymous shrug. No penguin has ever left The Berg and returned. The Exchange did not invent the captive audience. They just built a gift shop around it.", type: :commentary, display: :popout
  image "img_chronicle_1770850460992_auzhaa_1772878727476", role: :cover, url: "https://theiceremembers.com/raw/project_1765083188592/img_chronicle_1770850460992_auzhaa_1772878727476"
  image "img_the-dawn-terrace_1772879446033", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_the-dawn-terrace_1772879446033", anchor: "aurora channels through zhixai'Ward's original survey-cuts", anchor_index: 559, caption: "The Dawn Terrace: seven tiers of engineered ice and refracted aurora-light, maintained by The Icebound Exchange.", size: :large, reference_id: "imgref_1772835730177_0"
  image "img_the-dawn-terrace_1772879551489", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_the-dawn-terrace_1772879551489", anchor: "corruption creep from the Still Pools is visible now in the frost-patterning", anchor_index: 2786, caption: "The creeping corruption: frost-patterning marks the Terrace's slow contamination from the depths below.", size: :medium, reference_id: "imgref_1772835730177_1"
end
