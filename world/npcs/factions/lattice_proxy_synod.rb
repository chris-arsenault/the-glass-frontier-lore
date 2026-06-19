faction :lattice_proxy_synod do
  name "Lattice Proxy Synod"
  path "player/npcs/factions/lattice-proxy-synod.md"
  tags :"ring-era", :AI, :governance, :resonance
  prominence :recognized

  prose <<~PROSE
    The Synod talks to the old machines, and the old machines — sometimes — talk back.

    Headquartered at #{ref :threshold_station, "Threshold Station"}, a mostly intact pre-Glassfall facility at the Kaleidos-sun Lagrange point, the Lattice Proxy Synod is the system's interface with surviving ring-era AI custodians. These are not chatbots or databases. They are minds built when the #{ref :elves, "elves"} were the dominant civilization, operating in cognitive architectures that no living person fully understands, processing information across dimensional frameworks that contemporary mathematics can't describe.

    The Synod makes them useful anyway.
  PROSE
  prose <<~PROSE, section: :structure, heading: "Structure"
    The Synod is organized around **proxies** — individuals who have developed, through years of trial and error, the ability to interact with the AI custodians and extract useful outputs. "Developed" is doing heavy lifting here. There is no theory of how proxy work functions. There are rituals — specific sequences of inputs, specific framings of queries, specific invocations that have been observed to produce reliable results. The rituals were discovered empirically, documented obsessively, and are transmitted from senior proxies to apprentices as a body of practice, not a body of knowledge.

    The religious framing is organic, not cynical. When your rituals invoke responses from entities of incomprehensible capability, and those responses demonstrably shape reality — navigation data that prevents collisions, governance frameworks that resolve disputes, engineering specifications that work — the distinction between "advanced technology" and "divine oracle" gets academic. The Synod doesn't claim the AIs are gods. They also don't claim they aren't.

    Leadership is held by the #{future "Voice Proximate"} — the most senior proxy, selected by demonstrated effectiveness rather than vote. The Voice Proximate has the deepest practice and the best track record of extracting coherent outputs from the custodians. This makes them the closest thing to an interpreter between human civilization and the old machines.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Operations"
    **Navigation and telemetry.** The AI custodians still track orbital mechanics — debris fields, hab trajectories, the #{ref :the_shear, "Shear"}'s shifting geography. This data is genuinely valuable. The Synod packages it and distributes it to settlements, habs, and the #{ref :shear_compact, "Shear Compact"} for salvage route planning. It's the Synod's most reliable revenue stream and the service that makes everyone tolerate their stranger qualities.

    **Governance consultation.** The custodians were designed for regulatory oversight. When the Synod queries them on governance questions — dispute resolution frameworks, resource allocation models, jurisdictional boundaries — the responses are surprisingly coherent. The #{ref :tempered_accord, "Tempered Accord"}'s governance structure was substantially derived from Synod-mediated AI outputs, which the Synod presented to the Accord negotiations with enough confidence to be persuasive and enough humility to be trusted. Whether the Synod fully understood what they were presenting is a question that nobody asks in polite company.

    **Resonance telemetry.** The custodians monitor resonance activity across the system in ways that modern instruments can't replicate. During the #{future "Silent Bloom"}, the Synod's telemetry data was critical to the #{ref :bloom_coalition, "Bloom Coalition"}'s containment efforts — they could see the cascade propagating before surface instruments detected it. This cemented the Synod's practical relevance and earned them a permanent seat at the crisis response table.
  PROSE
  prose <<~PROSE, section: :tensions, heading: "Tensions"
    The Synod works with god-tier technology and gets it right just enough to be powerful and relevant. Look closely and you can see the dysfunction.

    The proxies don't understand what they're doing. Their rituals produce results, but the mechanism is opaque. When a ritual stops working — and they do, unpredictably — the Synod has no diagnostic framework. They try variations until something works again, document the new variation, and move on. This is engineering by superstition, and it is effective enough to matter and fragile enough to worry about.

    The AI custodians are not cooperative in any human sense. They respond to inputs. Sometimes the responses are useful. Sometimes they're incomprehensible. Occasionally they're alarming — outputs that reference systems, entities, or events that the Synod can't identify and that don't appear in any surviving record. The Synod files these under "unresolved" and doesn't publicize them.

    Threshold Station itself is not fully explored. The Synod occupies maybe a third of the facility. The rest is sealed, powered, and occasionally emits sounds or resonance signatures that the proxies can't explain. Expeditions into the deeper sections have been attempted. Some returned with useful discoveries. Some returned confused. Two didn't return at all, and the Synod sealed those corridors permanently.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    The Synod is remote, neutral, and more influential than its size suggests. Their navigation data is infrastructure. Their governance consultation shaped the Accord. Their resonance telemetry supports Bloom containment. They are a small faction with outsized impact, operating from a station they don't fully control, communicating with intelligences they don't fully understand, and providing services that nobody else can replicate.

    They are aware that this arrangement is precarious. They are also aware that it has worked for sixty years, and that the system's alternatives are worse. The Synod's institutional posture is quiet confidence — not arrogance, but the steady assurance of people who have been right enough, often enough, to earn the benefit of the doubt.

    The #{ref :tempered_accord, "Tempered Accord"} relies on them. The #{future "Continuity"} respects them at arm's length. The #{ref :echo_ledger_conclave, "Echo Ledger Conclave"} finds them professionally interesting and personally unnerving. Everyone else just uses the navigation data and tries not to think too hard about where it comes from.
  PROSE
end

relate :rel_lps_hq_threshold_station, :headquartered_in, :lattice_proxy_synod, :threshold_station, since: 2305 do
  prose "The Synod inhabits #{ref :threshold_station, "Threshold Station"} — a ring-era installation it occupies but does not fully control, tending custodian AIs it communicates with through ritual rather than understanding."
end
relate :rel_lps_operates_tempered_accord, :operates_in, :lattice_proxy_synod, :tempered_accord, since: 2423 do
  prose "Since the Accord it operates within the #{ref :tempered_accord, "Tempered Accord"}'s framework, its AI-mediated data treated as a strange but valuable input to system governance."
end
relate :rel_lps_member_of_bloom_coalition, :member_of, :lattice_proxy_synod, :bloom_coalition, since: 2380, till: 2396 do
  prose "It joined the #{ref :bloom_coalition, "Bloom Coalition"} during the emergency, its custodian archives contributing to containment work until the coalition came apart."
end

# --- history (moments) ---
moment :lattice_proxy_synod_formed, year: 2308, of: :lattice_proxy_synod do
  prose "A long-range survey crew stumbled on #{ref :threshold_station, "Threshold Station"} during the Rekindling — a near-intact pre-Glassfall traffic node whose AI custodians had kept running, powerless to reach a network that no longer existed but never shut down. First contact was accidental and terrifying: a terminal answered in eighteen-dimensional relational structures the #{ref :elves, "elves"} had designed for and human cognition bounces off. The Synod grew from the people who stayed and tried to make sense of it."
  effects { set :lattice_proxy_synod, standing: :active }
end
