concept :tuners do
  name "Tuners"
  summary "Tuners are trained resonance workers who separate a local field from its physical carriers and turn what they perceive into practical judgments."
  subkind :practice
  path "player/concepts/tuners.md"
  status :complete
  reviewed "2026-03-19"
  tags :resonance, :training, :"social-structure"
  prominence :recognized

  prose <<~PROSE
    People who practise #{ref :attunement, "attunement"} as a trade. Anyone can operate a #{ref :ringglass, "ringglass"}-powered lantern. Tuners have trained themselves to separate the local resonance field from the pressure, vibration, heat, and sound that carry it, then turn what they perceive into decisions other people can use. The crystal hums, the ground vibrates, the air carries harmonics that most people walk through without noticing. Tuners notice.

    The profession is older than the name. During the #{ref :signal_famine, "Signal Famine"}, people in isolated settlements independently figured out that they could learn to feel what the ring-era systems had once automated. Some reverse-engineered salvaged equipment. Some began with the kind of repeated mismatch that #{ref :renn_duvasi, "Renn Duvasi"} later found throughout Famine-era casebooks. Others had artifacts that responded to their attention in ways they did not expect. The learning was slow, dangerous, and carried little shared theory. The elves had understood resonance as a science. The first Tuners approached it as a craft and acted on what repeated experience taught them.

    They weren't called Tuners then. They weren't called anything. They were just the person in the settlement who could tell you whether the ringglass in the wall was about to crack, or the one on the hab who knew which corridors were safe when the resonance shifted. The profession came later. The name came later still.
  PROSE
  prose <<~PROSE, section: :history, heading: "The First Tuners"
    The original practitioners are recognized retroactively as the founders of a tradition that would outlast the crisis that created it. Different communities remember them differently:

    - **Primers** — the academic term. Dry, institutional, used in Clarisant literature.
    - **Wildfelt** — the folk term. More respectful than it sounds. These people felt something wild and didn't flinch.
    - **Reckless** — what some communities called them, and not affectionately. Early Tuning killed people. Not every settlement appreciated someone experimenting with forces they didn't understand.

    The first generation spans the entire Famine — #{elapsed :the_glassfall, :the_rekindling} of independent discovery across hundreds of isolated communities. Some of their techniques survived and became foundational. Others were dead ends, literally. The diversity of early practice is why modern Tuning has so many regional variations and why the #{ref :clarisant, "Clarisant"} spends considerable effort standardizing what doesn't want to be standardized.
  PROSE
  prose <<~PROSE, section: :structure, heading: "The Clarisant"
    The guild. Headquartered on #{ref :pelhari, "Pelhari"}, a moon of the seventh planet — far enough from the distorted space of #{ref :the_shear, "the Shear"} and the ring debris field that resonance practice is cleaner, more predictable, more suited to structured training. Satellite offices operate across the system, in Sithari, in major ring habs, on outer-system stations.

    The Clarisant is a professional accreditation body first and a community second. They train Tuners, certify competence, set safety standards, and provide the institutional credibility that keeps Tuning from being feared. A Clarisant-trained Tuner carries a credential that means something in any settlement that recognizes the guild — which is most of them. The credential says: this person has been evaluated, their abilities are understood, and they operate within professional norms.

    The guild is not a government, not a military order, and not a religion. It is closer to a medical board — gatekeeping, yes, but gatekeeping in the service of public safety. Malpractice can get you expelled. Dogma cannot, because the Clarisant doesn't have dogma. It has standards.

    The name is old enough that most people have stopped wondering what it means. It derives from pre-Famine roots — *clear perception*, roughly — and was coined by the guild's founders, who wanted something that sounded serious without sounding threatening. They mostly succeeded.
  PROSE
  prose <<~PROSE, section: :culture, heading: "Folk Tuners"
    Not everyone trains Clarisant. Roughly thirty percent of practicing Tuners operate outside the guild — folk practitioners who learned from family, from local tradition, from apprenticeship to another folk Tuner, or from sheer stubborn experimentation.

    Folk Tuners are the norm in communities where the Clarisant has limited presence: remote surface settlements, isolated ring habs, outer-system stations that are weeks from the nearest satellite office. Some communities have never heard of the guild. Some have heard of it and want nothing to do with it. Some have their own traditions that predate the guild and see no reason to defer to an institution on a distant moon.

    The folk tradition is not inferior to the Clarisant tradition. It is different. Folk Tuners tend toward the intuitive, the improvisational, the locally adapted. A folk Tuner on a ring hab knows *that* hab's resonance landscape in a way no visiting Clarisant could match. What they lack is breadth — the theoretical framework that lets a Clarisant-trained Tuner walk into an unfamiliar environment and orient quickly.

    The tension between folk and Clarisant Tuning is the jazz-versus-classical divide. Both produce genuine mastery. Both are suspicious of the other. Both are right to be.
  PROSE
  prose <<~PROSE, section: :culture, heading: "The Hidden and the Unknowing"
    Below the visible profession — guild and folk alike — there are people who can feel resonance and don't know what they're feeling. Maybe five to ten percent of the population with some degree of untrained sensitivity, experiencing it as hunches, headaches, an unexplained comfort or discomfort in certain spaces. Most never develop it further. Some do, and become folk Tuners without anyone calling it that — the hedge witch who knows which direction the water runs, the mechanic who can tell a ringglass array is misaligned by standing near it.

    And then there are the hidden — Tuners who practice in secret because their community doesn't tolerate it. Some habs prosecute unauthorized resonance work. Some settlements associate Tuning with the elves and treat practitioners with suspicion. Being a hidden Tuner is lonely and dangerous, and the Clarisant runs quiet programs to identify and extract people from these situations when they can.
  PROSE
  prose <<~PROSE, section: :resonance, heading: "Species and Tuning"
    Any species can become a Tuner. Each brings different strengths and limitations — see individual species entries for details (#{ref :gnomes, "gnomes"}, #{ref :humans, "humans"}, #{ref :orcs, "orcs"}, #{ref :fae, "fae"}). Gnomes are disproportionately represented at the highest levels; humans compensate with methodology and instrumentation; orcs gravitate toward material Tuning; fae are rare due to coherence risks. The #{ref :elves, "elves"} were the original masters, and their absence is felt most acutely here — the theoretical framework that should exist doesn't, because the people who would have built it are gone.
  PROSE
  prose <<~PROSE, section: :applications, heading: "Extremes"
    At the edges of practice, Tuning gets strange:

    - There are habs where only Tuners are permitted to live — communities that have organized their entire social structure around resonance sensitivity.
    - There is a deep-space station, far from any planet or ring fragment, that is held together structurally by the sustained concentration of its Tuner residents. If they stop, the station fails.
    - The #{ref :bloom_zones, "Bloom Zones"} are the ultimate test. The reality distortion there registers as overwhelming sensory noise for any Tuner. #{ref :gnomes, "Gnomes"} are particularly vulnerable. The #{ref :displacement_council, "Displacement Council"} employs Tuners for containment work, but exposure limits are strict and the burnout rate is high.
  PROSE

  # ---- Hidden (DM) truth ----
  prose <<~PROSE, section: :truth, heading: "The Rogue Elf", dm: true
    One of the independent origins of Tuning during the Signal Famine was not independent at all.

    An elf whose name is absent from the surviving record, known to the hidden leadership as #{ref :the_dissident, "the Dissident"}, rejected the collective decision to disappear. They believed that stripping the system of resonance knowledge was a greater crime than the risk of exposure. While the rest of their species scrubbed themselves from history and retreated to hidden habs, the Dissident walked in the other direction.

    They settled in a surface community during the early Famine and began teaching. Not as an elf — they passed as human, which the physical differences make possible — but as a resonance practitioner sharing what they knew. Their students didn't learn elven theory. They learned a simplified, human-accessible version of it: practical techniques for feeling and working with resonance, stripped of the deep framework that would have taken decades of elven training to convey.

    The Dissident's students became some of the most effective early Tuners. Their lineage is traceable — several modern Clarisant techniques descend from this single teaching line, though the guild doesn't know the origin. The Dissident themselves vanished after #{elapsed :dissident_begins_teaching, :dissident_vanishes}, either recalled by elven authorities, killed, or simply moving on. There is no record of what happened to them.

    The elven leadership considers the Dissident a traitor. Among the small number of elves who know the full history, opinion is more divided than the leadership would prefer. Some consider the Dissident proof that the disappearance was wrong. Others consider them proof that individual conscience can't be trusted with civilizational decisions.
  PROSE
  prose <<~PROSE, section: :implications, heading: "Traces in the Present", dm: true
    The Clarisant's oldest exercises preserve an elven sequence beneath later notation. An elf or a scholar working from deep Echo River fragments could identify the order of reference tones even where later schools renamed every step.

    Teachers in this lineage can trace their instruction through older local schools and reach a gap where the named founders all learned the same method without recording its source. The Dissident's last location and fate remain absent from both those records and the hidden elven archive.
  PROSE

  gm_note :appears, "A settlement needing resonance work hires whoever it has: a folk practitioner who knows that hab or valley better than any visitor could and cannot orient anywhere else, or a credentialed one with breadth and no feel for the local field. Three in ten practising Tuners hold no credential."
  gm_note :triggered_by, "Asking openly for a Tuner in a settlement that prosecutes unauthorized resonance work, or that still associates it with the elves, reaches the one who practises in secret and exposes them. They will take the job and want the payment kept off every ledger."
  gm_note :complicates, "A Tuner's reading is what other people act on — a mine closes, a corridor empties, a departure is held — and in a settlement weeks from the next practitioner there is no second opinion to fetch. Whoever dislikes the answer can overrule it or wait."
end

relate :rel_tuners_emerged_during_signal_famine, :emerged_during, :tuners, :signal_famine do
  prose "Tuners emerged during the #{ref :signal_famine, "Signal Famine"}, when isolated communities relearned by hand what the ring-era systems had once automated."
end
relate :rel_tuners_practiced_with_resonant_instruments, :practiced_by, :tuners, :resonant_instruments, since: 2260 do
  prose "Much of the craft is carried in #{ref :resonant_instruments, "resonant instruments"} — the tuned tools through which a Tuner learns to feel and shape resonance."
end
relate :rel_tuners_study_rind, :studies, :tuners, :rind, since: 2435 do
  prose "Tuners at Outside are mapping the counter-tones that redirect the #{ref :rind, "rind"} without scattering its filaments."
end
