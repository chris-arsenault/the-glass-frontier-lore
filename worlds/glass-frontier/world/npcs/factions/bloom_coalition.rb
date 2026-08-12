faction :bloom_coalition do
  name "Bloom Coalition"
  subkind :civic_body
  path "player/npcs/factions/bloom-coalition.md"
  tags :governance, :diplomacy, :resonance, :danger, :rebuilding
  prominence :renowned
  era "2378–2396"
  founded 2380
  mandate "Coordinate cross-faction containment of the Silent Bloom"
  dissolved 2396
  successors %i[displacement_council tempered_accord]
  log "2026-08-08 — Legacy said veterans were alive in 2438; present day is 2435. Stale from before the timeline was extended; the year is a #{'#{year :now}'} marker now."
  log "2026-08-09 — dropped `status \"dissolved\"`. `status` is the authoring state (complete/draft/shell/needs_refinement); the Coalition's in-world standing is set by its dissolution moment, which the validator now enforces."
  log "2026-08-08 — prominence :renowned confirmed. Every faction in the system staffed the Coalition, so the entry cannot avoid naming recognized ones; the reach warnings it used to raise were the check's shape, not this entry's."

  prose <<~PROSE
    The unified operational command that contained the #{future "Silent Bloom"} during the first #{elapsed 2378, 2396} of its expansion. Not a political body and not a treaty organization — the Coalition was an operational structure that drew personnel directly from every faction with a stake in containment and answered to a single chain of command. It existed for one purpose: keep the #{ref :bloom_zones, "Bloom Zones"} from spreading. It did the job. It dissolved on schedule.

    The Coalition is not active in the present day. Its successor for cordon operations is the #{ref :displacement_council, "Displacement Council"}. Its successor for cross-faction emergency coordination is, in spirit if not in name, the #{ref :tempered_accord, "Tempered Accord"}.
  PROSE
  prose <<~PROSE, section: :origin, heading: "Formation"
    The Bloom ignited in 2378 at the #{ref :pyre, "Pyre"} refinery. Within weeks the affected zone had expanded past the boundaries that any single faction could contain. Within months the #{ref :displacement, "Displacement"} was underway — tens of thousands of #{ref :hab_worlder, "Hab-Worlders"} evacuating habs that were structurally failing under uncontrolled resonance amplification.

    The first emergency response was improvised: #{ref :vantara, "Vantara"} was running evacuation logistics, the #{ref :lattice_proxy_synod, "Lattice Proxy Synod"} was providing telemetry, the #{ref :echo_ledger_conclave, "Echo Ledger Conclave"} was doing on-the-fly resonance analysis, and surviving #{ref :coremark, "Coremark"} crews — the ones who had not been at Pyre and who still had operational ships — were running supply into the cordon zones. The improvisation worked. It also produced contradictory orders, duplicated effort, and the kind of casualties that come from uncoordinated parallel operations in a lethal environment.

    By 2380 the participating factions had agreed that the response needed a single operational head. The Coalition's founding charter — five pages, written in two weeks, signed at a meeting in #{ref :sithari, "Sithari"} that nobody recorded the minutes of — established the Coalition as a unified command with personnel seconded from member factions for the duration of containment work. The signatories were Sithari, the Synod, the Conclave, #{ref :vantara, "Vantara"}, the #{ref :tuners, "Tuners"} (then not yet formalized through the #{ref :clarisant, "Clarisant"}, which lent personnel as individuals), the affected #{ref :hab_worlder, "Hab-Worlder"} communities, and, conspicuously, the major surviving ringglass operators including what remained of Coremark.

    The charter contained one structural feature that proved load-bearing: a dissolution clause. The Coalition existed for as long as the containment mission required a unified command. When the standing institutions of the system had absorbed the operational functions, the Coalition would dissolve. The clause was insisted on by Sithari and the Synod. The smaller member factions accepted it on the understanding that without it the Coalition would not have been ratified.
  PROSE
  prose <<~PROSE, section: :structure, heading: "Command"
    The Coalition's operational structure was deliberately flat and deliberately hard-edged.

    A single command council issued orders. The council seated representatives from each member faction, but the operational executive was held by a small standing committee whose authority was, by design, narrower than the council's and faster. The standing committee could issue orders within twelve hours; the council could reverse them within seven days. In practice the council reversed nothing of operational significance during the Coalition's eighteen-year run.

    The executive's operational head — the **Hand of the Coalition**, a title that the holders themselves found embarrassing — was #{future "Vesh Marrow"}. Marrow was a relatively junior cordon operator when the position was created and was selected for it on the strength of three months of competent performance during the early emergency. The Coalition's founders, by their own later admission, had not expected him to be in the role for #{elapsed 2380, 2396}. He was. He ran the operational arm of the Coalition from 2380 until the Council took over cordon work in 2384, and then continued running the Coalition's broader cross-faction coordination until its dissolution in 2396.

    Below the executive, the Coalition operated **field commands** keyed to specific containment zones. Each field command drew personnel from member factions according to need — a Conclave archivist for historical resonance analysis, a Synod proxy for telemetry, a Vantara logistics officer for supply, Tuners for direct cordon work, Hab-Worlder representatives for affected-population liaison, and ringglass specialists from whatever operator was nearest. Field commands rotated personnel on quarterly cycles and answered directly to the executive. Their internal structure was task-driven and disposable.

    The unified command was effective. It was also, by the testimony of nearly everyone who served under it, exhausting. The Coalition burned through senior personnel from every member faction. The retention rate among field-command leads was bad in the first year and worse in the third. The Coalition's response to this was to widen the recruitment pool and accept the burnout as the cost of the mission. The Council inherited better practices later.
  PROSE
  prose <<~PROSE, section: :operations, heading: "The Handover"
    The #{ref :displacement_council, "Displacement Council"} was originally a refugee advocacy body. Through 2382 and 2383 the Council and the Coalition operated in parallel — the Coalition running the cordons, the Council running the resettlement of evacuated Hab-Worlders. The Council's institutional culture (neutral, patient, focused on long-term care for displaced populations) was a mismatch with the Coalition's culture (fast, decisive, willing to absorb casualties), and the early relationship was prickly.

    In 2384 the Council formalized as a standing containment order. The architects of the move — Sithari diplomats, Vesh Marrow himself, the senior Council leadership — had decided that the cordon mission needed a permanent institutional home rather than an indefinite emergency body. The Coalition's field commands handed off cordon operations to the Council across a sixteen-month transition. Personnel moved with the work; the first generation of Council Thresholds was drawn primarily from the Coalition's field-command leads. The Coalition retained the broader cross-faction coordination role — supply, logistics, political mediation among member factions during the long containment — while the Council ran the physical cordons.

    This division of labor held for #{elapsed 2384, 2396}. The Council managed the cordons. The Coalition managed the politics of keeping cooperation alive between factions that had returned, by the late 2380s, to fighting each other on every issue that wasn't directly Bloom-related. The Bitter Reach was beginning. The Coalition's continued existence kept the cordon mission insulated from the deteriorating political environment.
  PROSE
  prose <<~PROSE, section: :tensions, heading: "Dissolution"
    The Coalition dissolved formally in 2396. The dissolution was not bitter. It was not contested. It had been on the calendar, in one form or another, since the charter.

    By 2396 the Council had absorbed the operational functions the Coalition was still nominally coordinating. Supply chains had stabilized. Cordon logistics had become routine. The cross-faction political coordination work, which had been the Coalition's primary remaining function, had decayed into formalities that nobody was paying attention to and that the deteriorating political environment of the late Bitter Reach was rendering pointless anyway. The Coalition's executive recommended dissolution. The council ratified it. The infrastructure was distributed among member factions or absorbed by the Council. The Hand of the Coalition title was retired.

    There were ceremonies. They were small and largely internal. Most of the people who attended had served in the Coalition for at least a decade. Several of them have said, on the record, that the dissolution felt like the end of something important and the beginning of nothing in particular. The institutional follow-up — the #{ref :tempered_accord, "Tempered Accord"}, ratified twenty-seven years later in 2423 — would borrow the Coalition's protocols extensively. At the time of the dissolution, this future was not visible.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Legacy"
    The Coalition's institutional inheritance is split.

    **The Displacement Council** inherited the operational structure, the cordon mission, and a working culture of cross-faction personnel rotation. The Council's current command structure — the Threshold position, the field cordons, the seconded specialist personnel — is recognizably descended from the Coalition's field commands.

    **The Tempered Accord** inherited the cross-faction coordination protocols. The Accord's mediation framework, its dispute resolution procedures, and its principle of dissoluble emergency cooperation all trace to Coalition practice. The Accord's architects studied the Coalition carefully before drafting. Several of them had served in it.

    **The cultural memory** is broader and harder to measure. The Coalition's #{elapsed 2378, 2396} of forced cooperation produced a generation of operators who had worked across faction lines on a mission that mattered. Many of them are still alive in #{year :now} CE — old now, retired or near it, scattered across the system. Where they have continued to be active they have been disproportionately involved in the kind of cross-faction work the Accord makes possible. The Coalition is over. The people are not.

    The Coalition is sometimes invoked rhetorically in present-day politics: as a model when cooperation is needed, as a warning when emergency powers are being expanded. The invocations are mostly empty. The Coalition was a specific institution for a specific crisis, and the conditions that produced it were not replicable on purpose. It worked because the alternative was worse. It dissolved because the alternative was, eventually, better.
  PROSE
end

relate :rel_bloom_coalition_caused_the_bitter_reach, :caused, :bloom_coalition, :the_bitter_reach do
  prose "When the Coalition finally dissolved, the disputes it had frozen came back sharper than before — the #{ref :the_bitter_reach, "Bitter Reach"}, the betrayal of a cooperation people had briefly believed in."
end

# --- lifecycle (queryable `standing`; the detailed account is in the sections above) ---
moment :bloom_coalition_formed, year: 2380, of: :bloom_coalition do
  prose "By 2380 the factions improvising against the Bloom agreed the response needed one head. A five-page charter, signed at an unrecorded meeting in #{ref :sithari, "Sithari"}, stood the Coalition up as a unified command — with a dissolution clause built in from the first day."
  effects { set :bloom_coalition, standing: :active }
end
moment :bloom_coalition_hands_off_cordons, year: 2384, of: :bloom_coalition do
  prose "In 2384 it handed the physical cordons to the new #{ref :displacement_council, "Displacement Council"}, keeping only the cross-faction coordination — the politics of holding cooperation together while the system drifted back toward fighting."
end
moment :bloom_coalition_dissolved, year: 2396, of: :bloom_coalition do
  prose "It dissolved on schedule in 2396 — not bitterly, just spent. The Council had absorbed the work; the coordination role had decayed into formalities. The Hand of the Coalition title was retired, and the protocols waited twenty-seven years for the #{ref :tempered_accord, "Tempered Accord"} to borrow them."
  effects { set :bloom_coalition, standing: :dissolved }
end
