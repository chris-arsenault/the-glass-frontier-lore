faction :echo_ledger_conclave do
  name "Echo Ledger Conclave"
  path "player/npcs/factions/echo-ledger-conclave.md"
  tags :archives, :resonance, :"signal-freq", :governance
  prominence :recognized

  prose <<~PROSE
    Archivists. Gatekeepers. The people who catalogue what the ground remembers and decide who gets to hear it.

    The Conclave exists because the #{ref :echo_rivers, "Echo Rivers"} exist, and because someone had to take responsibility for what surfaces in them. They are headquartered in the #{ref :sable_crescent, "Sable Crescent"}, where the rivers are densest, and they have made themselves indispensable to anyone who needs the past authenticated, interpreted, or — occasionally — suppressed.
  PROSE
  prose <<~PROSE, section: :structure, heading: "Structure"
    Mid-tier faction — larger than a guild, smaller than a government. The Conclave operates from #{ref :thornvault, "Thornvault"}, their headquarters in the Sable Crescent: a castle-like complex built on a natural bridge spanning a canyon, positioned to face the glasslight at dusk. The architecture is deliberately imposing — soaring crystal-laced buttresses, open galleries that channel ambient river sound through the halls. The building is a statement: we are serious people doing serious work.

    Satellite offices exist in #{ref :sithari, "Sithari"} (for political and legal access), several ring habs (for hab-specific archive consultation), and at least two #{future "Bloom Zone"} cordon stations (for containment support). The satellites are small — a few archivists with portable playback equipment and a secure connection to Thornvault's central records.

    Leadership is academic. The head of the Conclave holds the title #{future "Chief Ledgrist"} and is selected by internal vote among senior archivists. The position is respected externally and envied internally, which is exactly how the Conclave likes it.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Operations"
    What the Conclave actually does, day to day:

    **Listening.** Teams stationed at Echo River surfacing points throughout the Sable Crescent and beyond, cataloguing what comes through. Shifts are long. Most of what surfaces is noise — fragments, partial transmissions, data sequences. The valuable material is rare and unpredictable. A listener might spend months at a single surfacing point before hearing anything significant.

    **Authentication.** When someone claims an artifact is pre-Glassfall, when a legal dispute hinges on historical precedent, when a faction needs to verify a claim about the Ring Age — they come to the Conclave. The archivists cross-reference Echo River fragments, surviving written records, and their own accumulated knowledge to assess whether a claim holds up. This service is not free, and the Conclave's assessment carries legal weight under the #{ref :tempered_accord, "Tempered Accord"}.

    **Containment support.** The #{ref :displacement_council, "Displacement Council"} employs Conclave archivists for #{future "Bloom Zone"} work. The theory — partially validated — is that understanding the resonance history of an affected region helps predict how containment cordons should be configured. The Conclave provides historical resonance analysis. The Council provides the muscle. Neither fully trusts the other's methods, and the partnership works anyway.

    **Relic validation.** Even #{ref :coremark, "Coremark"}'s black-market buyers need provenance. A Bloom Zone relic of uncertain origin has more value if a Conclave archivist can attest to its resonance signature. The Conclave officially does not authenticate goods of questionable provenance. Individual archivists, on their own time, occasionally do. The Conclave officially does not know about this.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Field Cells"
    The Conclave's operational personnel deploy as **field cells** — small teams seconded from #{ref :thornvault, "Thornvault"} or from a satellite office for the duration of a specific assignment. The cell is the working unit; the chapter or office is the administrative home. Three cell patterns do most of the Conclave's field work.

    ### Retrieval Cells <!-- Operations -->

    Retrieval cells go out to acquire artifacts and recordings before someone else does or before the material degrades past recovery. A typical retrieval cell is four to six archivists with a #{ref :clarisant, "Clarisant"}-credentialed #{ref :tuners, "Tuner"} on contract, traveling by chartered transport with the equipment to assess, package, and extract resonance-sensitive material in the field.

    The work is varied. A retrieval cell may be excavating a pre-Glassfall installation that has been newly uncovered by surface erosion. They may be negotiating with a salvage flotilla that has pulled something interesting from the #{ref :deep_shear, "Deep Shear"}. They may be racing a #{ref :coremark, "Coremark"} convoy unit to a known artifact site whose location has just leaked. They may be quietly buying a recording from a private holder who has decided to sell.

    Retrieval cells carry funds. They are authorized to negotiate, to pay, and, within limits, to commit the Conclave to long-term institutional relationships with the parties they deal with. Senior retrieval cell leads are some of the most experienced field operators in the Conclave and have the kind of operational latitude that the institution otherwise reserves for its own internal politics. The cells are the most visibly active arm of the Conclave outside Thornvault and the #{ref :sable_crescent, "Sable Crescent"}. When an outside party encounters the Conclave in the field, it is almost always a retrieval cell.

    The cells will not engage in violence on their own initiative. They will travel with armed escort in dangerous space, will pay protection where protection is the actual price of doing business, and have, on documented occasions, walked away from artifacts rather than fight for them. The Conclave's institutional position is that an artifact lost is recoverable later and an archivist lost is not.

    ### Authentication Teams <!-- Operations -->

    Authentication teams travel to evaluate artifacts and recordings on site. The work is quieter than retrieval — it is rooms and tables and careful instruments, not extractions and chartered transports — but it is the Conclave's most legally consequential operational activity. An authentication team's findings carry weight under the #{ref :tempered_accord, "Tempered Accord"}, in commercial disputes, and in the #{ref :sithari, "Sithari"} courts.

    A standard authentication team is two senior archivists with specialist credentials — one for the artifact's physical and resonance properties, one for its provenance and historical context — accompanied by a junior archivist on note-taking duty and, depending on the assignment, by a Tuner for in-the-room resonance work. Teams travel to wherever the client requires the work done: a private collector's gallery, a hab's civic chamber, a #{ref :vantara, "Vantara"} trade compound, an #{ref :echo_ledger_conclave, "Echo Ledger Conclave"} satellite office prepared to receive the work.

    The teams operate under formal procedure. Findings are issued in writing, sealed at the team level, and registered with Thornvault. Disputes about findings are appealed back to Thornvault and adjudicated by senior archivists who were not on the original team. The procedure is slow and accountable and has produced a working reputation that the Conclave guards carefully. An authentication team's finding is not the final word in any legal sense, but it is the last word that most parties contesting the question will pay to obtain.

    The teams are well-paid, well-respected, and slightly resented inside the Conclave by archivists doing less prestigious work for less prestigious clients. The resentment is institutional and not personal. Authentication archivists rotate out of the work after a few years to avoid becoming overly identified with the role.

    ### Cordon-Support Archive Crews <!-- Operations -->

    Cordon-support crews are the Conclave's contribution to the ongoing #{ref :bloom_zones, "Bloom Zone"} containment work. They embed with #{ref :displacement_council, "Displacement Council"} cordons, document the affected zones from inside the containment perimeter, and provide the Council with historical resonance analysis on the affected habs' pre-Bloom condition.

    The work is dangerous. Cordon-support crews operate inside or immediately adjacent to active Bloom Zones, with all the resonance hazards and reality-instability that implies. The crews are smaller than retrieval cells — typically two archivists with a heavy support apparatus of Tuners, Council operators, and the technical infrastructure required to do precise resonance work in environments that actively resist precision. Each crew is paired with a Council cordon team that handles physical security, evacuation, and the broader cordon operation.

    The crews' specific work is historical: pulling Echo River fragments that originated in the affected zones before the Bloom, comparing them with current zone telemetry, building the resonance-historical record that informs cordon configuration. The Council's standing position is that the Conclave's historical analysis has materially improved cordon effectiveness. The Conclave's standing position is that the work is professionally rewarding and personally costly. Burnout rates among cordon-support archivists are higher than for any other Conclave field role.

    The cordon-support crews are also, structurally, the inheritance of the #{ref :bloom_coalition, "Bloom Coalition"}'s cross-faction working culture. The Coalition put Conclave personnel inside Council operations during the active emergency, and the practice continued after the Coalition's dissolution. The relationship between the Conclave and the Council is, as a result, deeper than the relationship between the Conclave and most other factions — the two institutions have been doing dangerous work together for #{elapsed :bloom_coalition, approx: true}.
  PROSE
  prose <<~PROSE, section: :tensions, heading: "Tensions"
    The Conclave hoards knowledge. This is not a criticism — it's their self-description. They consider themselves custodians, not distributors. Knowledge shared carelessly is knowledge misused. Knowledge kept carefully is knowledge preserved.

    This philosophy makes them valuable and infuriating in roughly equal measure. The #{ref :tempered_accord, "Tempered Accord"} has attempted to mandate broader access to Conclave archives three times. Three times the Conclave has complied with the letter and ignored the spirit, releasing material so carefully redacted that it was technically public and practically useless.

    Their relationship with #{ref :sithari, "Sithari"} and the #{future "Continuity"} is grudgingly positive. Both factions value knowledge, but for different reasons — the Continuity wants knowledge that serves governance, the Conclave wants knowledge that serves knowledge. They share when the interests align and politely obstruct when they don't. The Conclave recognizes that their institutional independence could be worse. The Continuity recognizes that forcibly opening the archives would cost more politically than it's worth.

    Within the Conclave, the Redaction theorists — archivists who believe the #{ref :elves, "elven"} historical gaps are evidence of deliberate tampering — are a respected fringe. Not mainstream, not suppressed. The kind of position that gets you invited to interesting dinners and passed over for administrative promotion. The eccentric professor, not the ideological dissident.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    The Conclave is secure, solvent, and slightly too pleased with itself. Their expertise is genuinely irreplaceable — nobody else has the institutional knowledge, the listening infrastructure, or the legal standing to do what they do. This makes them confident in ways that sometimes shade into arrogant.

    The Bloom containment work has raised their profile. Before the Silent Bloom, the Conclave was a niche academic institution. Now they're a faction with practical relevance to the system's biggest ongoing crisis. Some senior archivists are uncomfortable with this. Others are enjoying it more than they'd admit.

    #{ref :lira_vashtenri, "Lira Vashtenri"} left the Conclave to join the #{ref :displacement_council, "Displacement Council"}, taking her resonance expertise with her. The Conclave considers this a personal betrayal dressed up as public service. Lira considers it the most useful thing she's ever done. They are both correct.
  PROSE
end

relate :rel_elc_studies_echo_rivers, :studies, :echo_ledger_conclave, :echo_rivers, since: 2310 do
  prose "The Conclave exists to read the #{ref :echo_rivers, "Echo Rivers"} — cataloguing the pre-Glassfall fragments that surface in deep crystal, and the conspicuous gaps where something was scrubbed out."
end
relate :rel_elc_hq_sable_crescent, :headquartered_in, :echo_ledger_conclave, :sable_crescent, since: 2310 do
  prose "Its principal seat is in #{ref :sable_crescent, "Sable Crescent"}, where the largest river surfacing points are."
end
relate :rel_elc_hq_thornvault, :headquartered_in, :echo_ledger_conclave, :thornvault, since: 2310 do
  prose "Its archives proper sit deeper, at #{ref :thornvault, "Thornvault"} — the vault from which its most sensitive elf-related material has twice been stolen, both thefts unsolved."
end
relate :rel_elc_supplies_stillwater, :supplies, :echo_ledger_conclave, :stillwater, since: 2313 do
  prose "It feeds recovered records to #{ref :stillwater, "Stillwater"}, the preservation effort that keeps what the rivers give up from decaying a second time."
end
relate :rel_elc_member_of_bloom_coalition, :member_of, :echo_ledger_conclave, :bloom_coalition, since: 2380, till: 2396 do
  prose "Through the Bloom emergency it sat in the #{ref :bloom_coalition, "Bloom Coalition"}, lending archival and analytical weight until the coalition dissolved."
end

# --- history (moments) ---
moment :echo_ledger_conclave_formed, year: 2310, of: :echo_ledger_conclave do
  prose "The Conclave formed during the Rekindling, when reconnecting settlements compared notes about the #{ref :echo_rivers, "Echo Rivers"} and realized the same fragments were surfacing planet-wide. The early archivists were just listeners — people who sat near surfacing points and wrote down what they heard. The Conclave organized them, standardized their methods, and claimed custodianship over the material. The claim stuck because nobody else wanted the job: cataloguing the conversations of dead strangers attracts a specific patient, obsessive, ambiguity-tolerant personality, and the Conclave has been selecting for it ever since."
  effects { set :echo_ledger_conclave, standing: :active }
end
