thread :reconnection do
  name "Thread: The Reconnection"
  subkind :story_thread
  path "dm/threads/reconnection.md"
  reviewed "2026-03-19"
  contains_dm true

  prose <<~PROSE
    *A fractured civilization remembers it was once whole — and discovers that "whole" no longer means what it used to.*

    ---
  PROSE
  prose <<~PROSE, section: :description, heading: "The Emotional Core"
    The Signal Famine was #{elapsed :the_glassfall, :the_rekindling} of not knowing who else survived. For small communities, this was existential — they weren't built to sustain themselves. For large communities like Sithari, it forged an identity of self-sufficiency that persists to this day. Both experiences left a deep, shared legacy: **communication is sacred.** Not as a political stance, but as a cultural given — the way free speech is a given, not a debate topic.

    This fear of disconnection constrains everything that follows. The Contested Reach was tame because nobody wanted to risk the network. The Accord holds because the alternative is silence. The comm hub incident is the defining "line you don't cross" because crossing it threatens the one thing everyone agrees matters.

    ---
  PROSE
  prose <<~PROSE, section: :how_it_works, heading: "Beat Sequence"
    ### Beat 1: The Severance
    **Era:** 2140 CE | **Filled by:** #{ref :the_glassfall, "The Glassfall"}

    The ring shatters. Communications collapse instantly. Every community is suddenly alone.

    **Effect:** Immediate infrastructure crisis.
    **Consequence:** Communities must survive independently or die.
    **Downstream:** Two divergent survival strategies emerge (Beat 2).

    ---

    ### Beat 2: The Divergence
    **Era:** 2140–2305 CE | **Filled by:** Signal Famine (era)

    #{elapsed :the_glassfall, :the_rekindling} of isolation produces two kinds of communities:

    **Small communities** face genuine resource crisis. They weren't built to be self-sufficient. Many fail. The ones that survive develop deep traditions of mutual aid, resourcefulness, and — eventually — rituals and festivals celebrating connection.

    **Large communities** (Sithari, others) stabilize through institutional strength. #{ref :sithari, "Sithari"} and #{ref :the_continuity, "The Continuity"} flourish precisely because they don't need anyone else. Self-sufficiency becomes identity, not just survival strategy.

    **Effect:** Every community develops independently — different governance, different culture, different relationship with resonance.
    **Consequence:** When they reconnect, they discover they've become strangers (Beat 5).
    **Downstream:** The fear of disconnection becomes a cultural inheritance that constrains all future conflict (Beats 7, 8). Small-community reconnection traditions persist as cultural texture. Sithari's self-sufficient pride becomes both strength and source of resentment.

    ---

    ### Beat 3: The First Signal
    **Era:** ~2305 CE | **Filled by:** #{ref :glasswake, "Glasswake"}, #{ref :hab_meridian, "Hab Meridian"}

    A salvage crew in Glasswake finds a transmitter in fallen hab wreckage. Minor repair. It talks. Hab Meridian answers.

    **Emotional beat:** Disbelief → data starts flowing → confirmation it's real → joy. Not universal — some people react with suspicion — but the dominant response is joy.
    **Effect:** Proves reconnection is possible.
    **Consequence:** Accelerates efforts everywhere. Every community with salvaged equipment starts trying.
    **Downstream:** Glasswake becomes historically famous and practically unremarkable (Beat 9). The transmitter technology is crude — this is improvised, not restored infrastructure. Sets the baseline that the Span (Beat 4) will dramatically exceed.

    ---

    ### Beat 4: The Span
    **Era:** ~2305 CE (rediscovered) | **Filled by:** #{ref :span_nine, "Span Nine"}

    Pre-Glassfall hardline infrastructure — a luminous filament connecting #{ref :whitefoot, "Whitefoot"} to Pelhari and Threshold Station. It had been glowing in the sky for #{elapsed :the_glassfall, :the_rekindling}. Nobody understood what it was until the reconnection effort started looking up.

    **Effect:** Sithari gains real-time high-bandwidth communication with the #{ref :clarisant, "Clarisant"} and #{ref :lattice_proxy_synod, "Lattice Proxy Synod"}. A structural advantage nobody else can replicate.
    **Consequence:** Two-tier communication system emerges — Sithari has broadband, everyone else has improvised relays.
    **Downstream:** Communication inequality becomes a political grievance during the Contested Reach (Beat 7). The demand for Span-quality access motivates Coremark's Span replication experiment — which, combined with aggressive ringglass harvesting, causes the Bloom. The Span can't be sabotaged (intent-responsive), making it the one piece of infrastructure that's inviolable during the Reach — a symbol of both connection and inequality.

    ---

    ### Beat 5: The Shock of Difference
    **Era:** ~2310s–2330s | **Filled by:** #{ref :verathi_exchange, "Verathi Exchange"}, #{encyclopedia_ref :shuttered_habs, "Shuttered habs"}

    Surface communities reach ring habs. The cultural divergence is staggering. Communities that evolved in isolation for #{elapsed :the_glassfall, :the_rekindling} are unrecognizable. Some welcome contact — the resource-starved celebrate. Some refuse — the shuttered habs.

    Verathi answered willingly. The dispute began when Sithari's commission treated the hab as a returning district while Verathi received the visitors as foreign representatives. Reciprocal missions replaced inherited jurisdiction without closing the dock.

    **Effect:** The system discovers it is no longer one civilization.
    **Consequence:** The naive assumption that reconnection = reunion dies. What follows is negotiation between strangers, not homecoming.
    **Downstream:** The Contested Reach (Beat 7) is partly a fight between incompatible systems of governance and value, not just resource competition.

    ---

    ### Beat 6: Trade Resumes
    **Era:** ~2310s–2330s | **Filled by:** #{ref :meridian_crop_failure, "Meridian Crop Failure"}, #{encyclopedia_ref :ratters, "Ratters"}, #{ref :coremark, "Coremark"}, #{ref :vantara, "Vantara"}, #{ref :keel, "The Keel"}

    Salvage begins. Trade networks form. Vantara is founded to handle the boring essential work of logistics. The Keel is established as the primary orbital trade lane.

    Meridian's crop failure made the first restored signal materially useful. Glasswake sent living soil and varied root stock; Meridian returned tuned components. Their improvised environmental manifests became the basis for later living-cargo runs.

    **Effect:** Economic interdependence. Communities that were self-sufficient during the Famine become dependent on trade.
    **Consequence:** Disconnection would now hurt MORE than during the Famine — communities have forgotten how to do without.
    **Downstream:** Vantara's infrastructure (beacons, waystations, rescue) becomes invisible essential service — threatening it during the Reach feels like threatening the water supply (Beat 7). Trade dependency provokes a backlash movement advocating Famine-era self-sufficiency as a virtue. The Keel's economic importance makes it worth fighting over AND worth protecting.

    ---

    ### Beat 7: The Constrained Conflict
    **Era:** 2340–2378 | **Filled by:** The Contested Reach (era), #{ref :shardfall, "Shardfall"}, #{ref :coriolis_breach, "Coriolis breach"}, #{ref :hinge_six_occupation, "Hinge Six Occupation"}

    Disputes over routes, resources, hab sovereignty. But the violence is always limited by the **fear of disconnection:**

    - Nobody fights near civilian communication infrastructure
    - Remote mining rigs are fair game — they're already disconnected
    - Vantara's trade infrastructure is treated as off-limits by unspoken agreement

    Third Arc Defense occupied Hinge Six and filtered traffic during an embargo. The station keepers shut the relay, and carriers boycotted the branch until the occupiers withdrew. Later forces could fight around a relay but did not seize its civilian message room.

    **Span downstream:** Communication inequality (from Beat 4) becomes a Contested Reach grievance. The demand for Span-quality access feeds into the Span replication attempt.

    **Trade downstream:** Communities that became trade-dependent (from Beat 6) are hit hardest when routes are disrupted. The visceral response to trade disruption is disproportionate — it feels existential because it echoes the Famine.

    **Effect:** The system fights but doesn't fragment. The network survives.
    **Consequence:** The constrained violence produces conditions for the Bloom (Coremark overreach, Span replication experiment) but also the cultural infrastructure that makes cooperation possible when the Bloom hits.
    **Downstream:** The comm hub incident produces an Accord provision. Veterans carry relationships that become the Bloom Coalition's connective tissue. The Reach's unwritten rules become the Accord's written ones.

    ---

    ### Beat 8: The Test
    **Era:** 2378–2407 | **Intersection with:** Bloom Containment thread

    The Bloom forces cooperation. The Reconnection thread's contribution: **cooperation works because the communication infrastructure survived the Contested Reach.** The Bloom Coalition can coordinate because nobody broke the network during the Reach. The fear of disconnection, which constrained the conflict, now enables the response.

    **Effect:** Proof that shared structures work — imperfectly, temporarily, but they work.
    **Downstream:** The Accord is possible because the Bloom cooperation demonstrated it.

    ---

    ### Beat 9: The Framework
    **Era:** 2365–present | **Filled by:** #{ref :tempered_accord, "Tempered Accord"}

    Born from exhaustion, pragmatism, and the Bloom cooperation's proof of concept. Not a government — a mediation structure. Free communication is a cultural given baked into it, not a provision that needs defending.

    **Downstream:** The Accord holds because the alternative is the Famine's silence, and everyone knows it. Sithari's structural advantages (Span access, institutional strength) are resented but accepted because the alternative is worse.

    ---

    ### Beat 10: The Unfinished Edge
    **Era:** Present–future | **Unfilled**

    Far-drift habs are being discovered. New communities that didn't participate in any of this — no Famine trauma, no Reconnection joy, no Contested Reach constraints, no Bloom cooperation. They don't share the cultural inheritance that holds the system together.

    **The open question:** What happens when the system contacts a community that doesn't value communication the way the reconnected world does? What happens when "the Famine was terrible" doesn't resonate because they never experienced it?

    ---
  PROSE
  prose <<~PROSE, section: :significance, heading: "Thematic Cores Engaged"
    - **"What do you build when the original blueprints are gone?"** — the entire reconnection is improvised from fragments
    - **"How do strangers learn to share a world?"** — the core tension of the thread
    - **"Can you build something together while you're still fighting?"** — the Contested Reach and Bloom cooperation
    - **"Just because you can reach it, should you?"** — Span replication → Bloom
  PROSE
end

relate :rel_rc_fills_glassfall, :fills_beat, :reconnection, :the_glassfall do prose "The #{ref :the_glassfall, "Glassfall"} fills the Severance beat: the ring shatters and communications collapse." end
relate :rel_rc_fills_sithari, :fills_beat, :reconnection, :sithari do prose "#{ref :sithari, "Sithari"} fills the Divergence beat: a community that stabilized through institutional strength into self-sufficiency-as-identity." end
relate :rel_rc_fills_continuity, :fills_beat, :reconnection, :the_continuity do prose "The #{ref :the_continuity, "Continuity"} fills the Divergence beat: the institutional strength that let Sithari flourish without needing anyone else." end
relate :rel_rc_fills_glasswake, :fills_beat, :reconnection, :glasswake do prose "#{ref :glasswake, "Glasswake"} fills the First Signal beat: the salvage crew that made a dead transmitter talk." end
relate :rel_rc_fills_hab_meridian, :fills_beat, :reconnection, :hab_meridian do prose "#{ref :hab_meridian, "Hab Meridian"} fills the First Signal beat: the hab that answered." end
relate :rel_rc_fills_span_nine, :fills_beat, :reconnection, :span_nine do prose "#{ref :span_nine, "Span Nine"} fills the Span beat: pre-Glassfall hardline that handed Sithari a broadband advantage." end
relate :rel_rc_fills_verathi_exchange, :fills_beat, :reconnection, :verathi_exchange do prose "The #{ref :verathi_exchange, "Verathi Exchange"} fills the willing-contact dispute: reciprocal recognition replaced Sithari's claim of inherited jurisdiction." end
relate :rel_rc_fills_coremark, :fills_beat, :reconnection, :coremark do prose "#{ref :coremark, "Coremark"} fills the Trade-Resumes beat: an early extraction operator in the reconnection boom." end
relate :rel_rc_fills_vantara, :fills_beat, :reconnection, :vantara do prose "#{ref :vantara, "Vantara"} fills the Trade-Resumes beat: founded to handle the logistics of the reopening networks." end
relate :rel_rc_fills_keel, :fills_beat, :reconnection, :keel do prose "#{ref :keel, "the Keel"} fills the Trade-Resumes beat: established as the primary orbital trade lane." end
relate :rel_rc_fills_meridian_crop_failure, :fills_beat, :reconnection, :meridian_crop_failure do prose "The #{ref :meridian_crop_failure, "Meridian Crop Failure"} fills the first trade crisis: living cargo moved from Glasswake while tuned components returned from Meridian." end
relate :rel_rc_fills_shardfall, :fills_beat, :reconnection, :shardfall do prose "#{ref :shardfall, "Shardfall"} fills the Constrained-Conflict beat: a Contested Reach flashpoint bounded by the fear of disconnection." end
relate :rel_rc_fills_coriolis, :fills_beat, :reconnection, :coriolis_breach do prose "The #{ref :coriolis_breach, "Coriolis Breach"} fills the Constrained-Conflict beat: a forced-entry incident that became a sovereignty rallying point." end
relate :rel_rc_fills_hinge_six_occupation, :fills_beat, :reconnection, :hinge_six_occupation do prose "The #{ref :hinge_six_occupation, "Hinge Six Occupation"} established that armed factions could not filter civilian relay traffic without losing the route itself." end
relate :rel_rc_fills_tempered_accord, :fills_beat, :reconnection, :tempered_accord do prose "The #{ref :tempered_accord, "Tempered Accord"} fills the Framework beat: the mediation structure born of Bloom cooperation and Famine memory." end
