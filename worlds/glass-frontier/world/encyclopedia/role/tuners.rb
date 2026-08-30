encyclopedia :tuners do
  name "Resonant Tuner"
  aka "Tuner", "Tuners", "Resonant Tuners"
  summary "A Resonant Tuner separates a local resonance field from its physical carriers and turns what they perceive into practical judgments."
  kind :role
  subkind :profession
  status :complete
  reviewed "2026-03-19"
  topics :resonance, :training, :"social-structure"
  prevalence :uncommon
  available_globally

  descriptive_identity(
    tools:
      "The credential or the kit. A Clarisant-trained Tuner shows guild " \
      "certification recognized in most settlements; a folk Tuner shows the " \
      "working instruments themselves — made, inherited, or adapted to one " \
      "place. Practitioners read a stranger's training off the kit before " \
      "the introduction finishes.",
    manner:
      "A reading is delivered as a judgment other people act on — which " \
      "corridor, which load, which departure — and a careful Tuner says what " \
      "the reading rests on. Folk practitioners work by local feel, guild " \
      "ones by transferable method, and each hears the gap in the other."
  )

  cue "A Tuner carries either a Clarisant credential or a working kit made, inherited, or adapted for one place."
  cue "A Tuner's reading becomes a judgment about which corridor, load, departure, or repair other people should act on."
  affordance "A Tuner separates a local resonance field from the pressure, vibration, heat, and sound carrying it and turns the result into practical decisions."
  pressure "Where no second practitioner is available, everyone affected must either accept one Tuner's reading, overrule it, or wait."
  variation "Clarisant-trained Tuners use transferable method and recognized credentials but may lack a feel for an unfamiliar local field."
  variation "Folk Tuners learn through family, local tradition, apprenticeship, or experimentation and may know one hab or valley better than any visitor."

  prose <<~PROSE
    People who practise #{encyclopedia_ref :attunement, "attunement"} as a trade. Anyone can operate a #{encyclopedia_ref :ringglass, "ringglass"}-powered lantern. Tuners have trained themselves to separate the local resonance field from the pressure, vibration, heat, and sound that carry it, then turn what they perceive into decisions other people can use. The crystal hums, the ground vibrates, the air carries harmonics that most people walk through without noticing. Tuners notice.

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

    The guild is not a government, military order, or religion. Its authority rests on examinations, recognized credentials, and the settlements that accept them. Unsafe work can cost a Tuner their credential. Disagreement cannot, unless the practitioner claims certainty their method did not earn.

    The name is old enough that most people have stopped wondering what it means. It derives from pre-Famine roots — *clear perception*, roughly — and was coined by the guild's founders, who wanted something that sounded serious without sounding threatening. They mostly succeeded.
  PROSE
  prose <<~PROSE, section: :culture, heading: "Folk Tuners"
    Not everyone trains Clarisant. Roughly thirty percent of practicing Tuners operate outside the guild — folk practitioners who learned from family, from local tradition, from apprenticeship to another folk Tuner, or from sheer stubborn experimentation.

    Folk Tuners are the norm in communities where the Clarisant has limited presence: remote surface settlements, isolated ring habs, outer-system stations that are weeks from the nearest satellite office. Some communities have never heard of the guild. Some have heard of it and want nothing to do with it. Some have their own traditions that predate the guild and see no reason to defer to an institution on a distant moon.

    Folk Tuners tend toward the intuitive, improvised, and locally adapted. A folk Tuner on a ring hab knows *that* hab's resonance landscape in a way no visiting Clarisant could match. Clarisant training gives breadth instead: a shared framework that lets a credentialed Tuner enter an unfamiliar environment and orient quickly. Each tradition can produce mastery, and each distrusts the evidence the other treats as sufficient.
  PROSE
  prose <<~PROSE, section: :culture, heading: "The Hidden and the Unknowing"
    Below the visible profession — guild and folk alike — there are people who can feel resonance and don't know what they're feeling. Maybe five to ten percent of the population has some degree of untrained sensitivity, experienced as hunches, headaches, or an unexplained comfort or discomfort in certain spaces. Most never develop it further. Some become folk Tuners without anyone calling them that — the water keeper who knows which channel will turn, or the mechanic who can tell a ringglass array is misaligned by standing near it.

    And then there are the hidden — Tuners who practice in secret because their community doesn't tolerate it. Some habs prosecute unauthorized resonance work. Some settlements associate Tuning with the elves and treat practitioners with suspicion. Being a hidden Tuner is lonely and dangerous, and the Clarisant runs quiet programs to identify and extract people from these situations when they can.
  PROSE
  prose <<~PROSE, section: :resonance, heading: "Species and Tuning"
    Any species can become a Tuner. #{encyclopedia_ref :gnomes, "Gnomes"} are disproportionately represented at the highest levels; #{encyclopedia_ref :humans, "humans"} rely more heavily on method and instrumentation; #{encyclopedia_ref :orcs, "orcs"} are common in material Tuning; and #{encyclopedia_ref :fae, "fae"} practitioners are rare because sustained work threatens their coherence. The #{encyclopedia_ref :elves, "elves"} were the original masters. Their absence is felt most sharply in the missing theory that later schools have had to rebuild from practice.
  PROSE
  prose <<~PROSE, section: :applications, heading: "Extremes"
    At the edges of practice, Tuning gets strange:

    - There are habs where only Tuners are permitted to live — communities that have organized their entire social structure around resonance sensitivity.
    - There is a deep-space station, far from any planet or ring fragment, that is held together structurally by the sustained concentration of its Tuner residents. If they stop, the station fails.
    - The #{ref :bloom_zones, "Bloom Zones"} are the ultimate test. The reality distortion there registers as overwhelming sensory noise for any Tuner. #{encyclopedia_ref :gnomes, "Gnomes"} are particularly vulnerable. The #{ref :displacement_council, "Displacement Council"} employs Tuners for containment work, but exposure limits are strict and the burnout rate is high.
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
end
