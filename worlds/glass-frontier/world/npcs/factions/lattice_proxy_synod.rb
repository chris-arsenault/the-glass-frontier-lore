faction :lattice_proxy_synod do
  name "Lattice Proxy Synod"
  summary "The Lattice Proxy Synod is the Threshold Station research body that communicates with surviving ring-era AI custodians."
  subkind :research_body
  path "player/npcs/factions/lattice-proxy-synod.md"
  reviewed "2026-03-18"
  tags :"ring-era", :AI, :governance, :resonance
  prominence :recognized

  descriptive_identity(
    ideology:
      "The custodians answer, the answers work, and no doctrine is needed " \
      "on what the custodians are. Documenting every ritual and every " \
      "variation is the whole of the theory, because there is no other.",
    methods:
      "Proxies extract outputs through input sequences and invocations " \
      "refined by years of trial and error, then translate them into " \
      "navigation feeds, governance consultation, and resonance telemetry. " \
      "When a ritual stops working there is no diagnosis — only variation " \
      "until something answers again.",
    presence:
      "Proxies speak engineering and worship in the same breath, working " \
      "documented sequences in a station whose deeper corridors stay " \
      "sealed. Most of the system meets the Synod only as a data feed.",
    attitude:
      "Remote, neutral, and careful with confidence: findings arrive with " \
      "enough conviction to persuade and enough qualification to earn " \
      "trust. Questions about the sealed corridors are declined without " \
      "ceremony."
  )

  prose <<~PROSE
    The Synod talks to the old machines, and the old machines — sometimes — talk back.

    Headquartered at #{ref :threshold_station, "Threshold Station"}, a mostly intact pre-Glassfall facility at the Kaleidos-sun Lagrange point, the Lattice Proxy Synod is the system's interface with surviving ring-era AI custodians. The custodians are autonomous minds built when the #{ref :elves, "elves"} were the dominant civilization. They use cognitive architectures that living researchers can observe only through their outputs and process information across dimensional frameworks beyond contemporary mathematics.

    The Synod translates those outputs into navigation, governance, and resonance services used across the system.
  PROSE
  prose <<~PROSE, section: :structure, heading: "Structure"
    The Synod is organized around **proxies** — individuals who have learned, through years of trial and error, to interact with the AI custodians and extract useful outputs. Proxy work has no accepted theory. It consists of specific input sequences, query framings, and invocations that have produced repeatable results. Proxies discovered these rituals empirically, document every variation, and transmit them from senior practitioners to apprentices.

    The religious language grew out of the work. Its rituals invoke responses from entities of incomprehensible capability, and those responses prevent collisions, resolve disputes, and supply engineering specifications that work. Proxies use the vocabularies of engineering and worship side by side. The Synod has no doctrine on whether the custodians are divine.

    Leadership is held by #{ref :nemi_valerin, "Voice Proximate Nemi Valerin"} — the most senior proxy, selected by demonstrated effectiveness rather than vote. The Voice Proximate has the deepest practice and the best track record of extracting coherent outputs from the custodians. This makes them the closest thing to an interpreter between human civilization and the old machines.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Operations"
    **Navigation and telemetry.** The AI custodians still track orbital mechanics — debris fields, hab trajectories, the #{ref :the_shear, "Shear"}'s shifting geography. The Synod packages this data and distributes it to settlements, habs, and the #{ref :shear_compact, "Shear Compact"} for salvage route planning. It is the Synod's most reliable revenue stream, and crews throughout the system depend on it despite their unease with proxy practice.

    **Governance consultation.** The custodians were designed for regulatory oversight. When the Synod queries them on governance questions — dispute resolution frameworks, resource allocation models, jurisdictional boundaries — the responses are often coherent. The #{ref :tempered_accord, "Tempered Accord"}'s governance structure was substantially derived from Synod-mediated AI outputs, which the Synod presented to the Accord negotiations with enough confidence to persuade and enough qualification to earn trust. The negotiation record does not establish how fully the proxies understood the model they presented.

    **Resonance telemetry.** The custodians monitor resonance activity across the system in ways that modern instruments can't replicate. During the #{ref :the_silent_bloom, "Silent Bloom"}, the Synod's telemetry data was critical to the #{ref :bloom_coalition, "Bloom Coalition"}'s containment efforts — they could see the cascade propagating before surface instruments detected it. This cemented the Synod's practical relevance and earned them a permanent seat at the crisis response table.
  PROSE
  prose <<~PROSE, section: :tensions, heading: "Tensions"
    The Synod's influence rests on useful results from technology it cannot explain. The same limit shapes every failure.

    Proxy rituals produce results through an opaque mechanism. When a ritual stops working, which happens unpredictably, the Synod has no diagnostic framework. Proxies try variations until another sequence succeeds, then document the change. The method has produced essential services without giving the Synod a reliable way to repair a failed procedure.

    The AI custodians respond to inputs without dialogue or explanation. Some responses are useful; others remain incomprehensible. A few reference systems, entities, or events absent from every surviving record the Synod has searched. The Synod files these outputs as "unresolved" and does not publicize them.

    Threshold Station itself is not fully explored. The Synod occupies maybe a third of the facility. The rest is sealed, powered, and occasionally emits sounds or resonance signatures that the proxies can't explain. Expeditions into the deeper sections have been attempted. Some returned with useful discoveries. Some returned confused. Two didn't return at all, and the Synod sealed those corridors permanently.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    The Synod is remote, neutral, and more influential than its size suggests. Its navigation data is infrastructure. Its governance consultation shaped the Accord. Its resonance telemetry supports Bloom containment. A small faction operating from a partially explored station supplies services that no other institution can reproduce.

    The Synod's own reports call the arrangement precarious and judge every available alternative worse. They record its failures alongside #{elapsed :lattice_proxy_synod, approx: true} of successful forecasts and consultations. That history has earned the institution confidence and the benefit of the doubt from many of the governments and crews that use its work.

    The #{ref :tempered_accord, "Tempered Accord"} relies on them. #{ref :the_continuity, "The Continuity"} keeps a permanent mission at Threshold Station and limits its dependence on Synod consultation. The #{ref :echo_ledger_conclave, "Echo Ledger Conclave"} studies custodian outputs while disputing how the Synod controls access to them. Most other users take the navigation feed without entering the Synod's arguments about the minds that produced it.
  PROSE

  gm_note :appears, "The Synod reaches a scene before its people do, because the packaged orbital data is what any crew's route was planned from and what any settlement's debris warnings came out of. Crews buy the feed, rely on it, and would rather not hear how the numbers were obtained."
  gm_note :triggered_by, "Ask a proxy to put a question to the custodians and it comes back useful, incomprehensible, or not at all, with no way to tell which beforehand. When a sequence that has worked for years stops working, there is no diagnostic to run: the proxy tries documented variations until one takes."
  gm_note :complicates, "Visitors to Threshold Station are guests in a third of a building. The rest stays sealed, powered, and occasionally audible, and the corridors that swallowed two expeditions were closed permanently instead of mapped. Nobody here can say what is behind them, and nobody will open them."
end

relate :rel_lps_hq_threshold_station, :headquartered_in, :lattice_proxy_synod, :threshold_station, since: 2305 do
  prose "The Synod inhabits #{ref :threshold_station, "Threshold Station"} — a ring-era installation it occupies but does not fully control, tending custodian AIs it communicates with through ritual rather than understanding."
end
relate :rel_lps_operates_tempered_accord, :operates_in, :lattice_proxy_synod, :tempered_accord, since: 2423 do
  prose "Since the Accord it operates within the #{ref :tempered_accord, "Tempered Accord"}'s framework, its AI-mediated data treated as a strange but valuable input to system governance."
end
relate :rel_lps_member_of_bloom_coalition, :member_of, :lattice_proxy_synod, :bloom_coalition, since: 2380, till: 2396 do
  prose "It joined the #{ref :bloom_coalition, "Bloom Coalition"} during the emergency, its custodian archives contributing to containment work until the coalition came apart."
  descriptive_identity standing:
    "Its custodian telemetry could see the cascade propagating before " \
    "surface instruments detected it, and the seat that work earned at " \
    "the crisis response table outlived the Coalition itself."
end

# --- history (moments) ---
moment :lattice_proxy_synod_formed, year: 2308, of: :lattice_proxy_synod do
  summary "Researchers formed the Lattice Proxy Synod at Threshold Station in 2308 after accidental contact with its AI custodians."
  prose "A long-range survey crew stumbled on #{ref :threshold_station, "Threshold Station"} during the Rekindling — a near-intact pre-Glassfall traffic node whose AI custodians had kept running, powerless to reach a network that no longer existed but never shut down. First contact was accidental and terrifying: a terminal answered in eighteen-dimensional relational structures the #{ref :elves, "elves"} had designed for and human cognition bounces off. The Synod grew from the people who stayed and tried to make sense of it."
  effects { set :lattice_proxy_synod, standing: :active }
end
