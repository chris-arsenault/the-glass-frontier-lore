encyclopedia :resonant_tuner do
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
    Resonant Tuners practise #{encyclopedia_ref :attunement, "attunement"} as a trade. They separate the local resonance field from the pressure, vibration, heat, and sound that carry it, then turn what they perceive into decisions about corridors, loads, departures, and repairs. Their instruments and trained senses distinguish a crystal's hum, the ground's vibration, and harmonics carried through the air.

    The practice predates its current name. During the #{ref :signal_famine, "Signal Famine"}, isolated settlements developed ways to sense effects that ring-era systems had automated. Practitioners reverse-engineered salvaged equipment, followed repeated mismatches of the kind #{ref :renn_duvasi, "Renn Duvasi"} later found in Famine-era casebooks, and tested artifacts that responded to directed attention. Each settlement built a craft from repeated local results with little theory shared across the system.

    Early records identify practitioners by local work: the person who judged whether wall ringglass would crack, or the guide who marked safe corridors during a resonance shift. Training networks and common credentials later joined those local practices under the name Tuner.
  PROSE
  prose <<~PROSE, section: :history, heading: "The First Tuners"
    The original practitioners are recognized retroactively as the founders of a tradition that would outlast the crisis that created it. Different communities remember them differently:

    - **Primers** — the academic term. Dry, institutional, used in Clarisant literature.
    - **Wildfelt** — the folk term for practitioners who trusted direct sensation under unstable conditions.
    - **Reckless** — the name used in communities where early experiments killed practitioners or bystanders.

    The first generation spans the entire Famine — #{elapsed :the_glassfall, :the_rekindling} of independent discovery across hundreds of isolated communities. Some techniques became foundations of modern practice. Others ended with the practitioners who tested them. Regional traditions preserve that independent development, and the #{ref :clarisant, "Clarisant"} compares them through common examinations and safety standards.
  PROSE
  prose <<~PROSE, section: :structure, heading: "The Clarisant"
    The guild. Headquartered on #{ref :pelhari, "Pelhari"}, a moon of the seventh planet — far enough from the distorted space of #{ref :the_shear, "the Shear"} and the ring debris field that resonance practice is cleaner, more predictable, more suited to structured training. Satellite offices operate across the system, in Sithari, in major ring habs, on outer-system stations.

    The Clarisant trains Tuners, certifies competence, sets safety standards, and maintains a community of practice. Most settlements recognize its credential as evidence that the holder has passed an examination and agreed to its working rules.

    Its authority rests on examinations, recognized credentials, and the settlements that accept them. Unsafe work can cost a Tuner their credential. A disputed interpretation remains within professional practice when the Tuner states the limits of the method and the evidence.

    The name derives from pre-Famine roots meaning *clear perception*, approximately. The guild's founders adopted it for the accreditation body, and the term now appears on its examinations, seals, and credentials.
  PROSE
  prose <<~PROSE, section: :culture, heading: "Folk Tuners"
    Roughly thirty percent of practicing Tuners work outside the Clarisant. Folk practitioners learn through family, local tradition, apprenticeship to another Tuner, or independent experimentation.

    Folk Tuners are the norm in remote surface settlements, isolated ring habs, and outer-system stations weeks from a Clarisant office. Local schools may predate the guild, train against one place's conditions, or reject outside certification in favor of witnessed work.

    Folk Tuners tend toward the intuitive, improvised, and locally adapted. A folk Tuner on a ring hab knows *that* hab's resonance landscape in a way no visiting Clarisant could match. Clarisant training gives breadth instead: a shared framework that lets a credentialed Tuner enter an unfamiliar environment and orient quickly. Each tradition can produce mastery, and each distrusts the evidence the other treats as sufficient.
  PROSE
  prose <<~PROSE, section: :culture, heading: "The Hidden and the Unknowing"
    An estimated five to ten percent of the population has some untrained resonance sensitivity, experienced as hunches, headaches, or a repeated comfort or discomfort in certain spaces. Most leave it untrained. Others develop a local practice through ordinary work: a water keeper who anticipates which channel will turn, or a mechanic who detects a misaligned ringglass array by standing near it.

    Hidden Tuners practice in communities that prosecute unauthorized resonance work or associate the practice with the elves. They conceal instruments, avoid recording readings under their own names, and risk prosecution when someone acts on their judgment. The Clarisant runs quiet programs to identify and relocate practitioners from those settlements.
  PROSE
  prose <<~PROSE, section: :resonance, heading: "Species and Tuning"
    Any species can become a Tuner. #{encyclopedia_ref :gnomes, "Gnomes"} are disproportionately represented at the highest levels; #{encyclopedia_ref :humans, "humans"} rely more heavily on method and instrumentation; #{encyclopedia_ref :orcs, "orcs"} are common in material Tuning; and #{encyclopedia_ref :fae, "fae"} practitioners are rare because sustained work threatens their coherence. The #{encyclopedia_ref :elves, "elves"} were the original masters. Their absence is felt most sharply in the missing theory that later schools have had to rebuild from practice.
  PROSE
  prose <<~PROSE, section: :applications, heading: "Extremes"
    Several documented practices exceed ordinary field reading:

    - There are habs where only Tuners are permitted to live — communities that have organized their entire social structure around resonance sensitivity.
    - There is a deep-space station, far from any planet or ring fragment, that is held together structurally by the sustained concentration of its Tuner residents. If they stop, the station fails.
    - The #{ref :bloom_zones, "Bloom Zones"} are the ultimate test. The reality distortion there registers as overwhelming sensory noise for any Tuner. #{encyclopedia_ref :gnomes, "Gnomes"} are particularly vulnerable. The #{ref :displacement_council, "Displacement Council"} employs Tuners for containment work, but exposure limits are strict and the burnout rate is high.
  PROSE

  # ---- Hidden (DM) truth ----
  prose <<~PROSE, section: :truth, heading: "The Rogue Elf", dm: true
    During the Signal Famine, #{ref :the_dissident, "the Dissident"} founded one teaching line while concealing their elven identity. Their name is absent from the surviving record. They rejected the collective decision to disappear and taught that removing resonance knowledge from the system caused greater harm than exposure.

    The Dissident settled in a surface community during the early Famine, passed as human, and taught as a local resonance practitioner. Their students received practical techniques adapted for human senses rather than the theoretical framework of elven training.

    The Dissident's students became some of the most effective early Tuners. Several modern Clarisant techniques descend from this teaching line, though the guild's records reach only a group of local founders with the same unexplained method. Records of the Dissident end after #{elapsed :dissident_begins_teaching, :dissident_vanishes}; the hidden elven archive records no recall, death, or later settlement.

    The elven leadership considers the Dissident a traitor. Among the small number of elves who know the full history, opinion is more divided than the leadership would prefer. Some consider the Dissident proof that the disappearance was wrong. Others consider them proof that individual conscience can't be trusted with civilizational decisions.
  PROSE
  prose <<~PROSE, section: :implications, heading: "Traces in the Present", dm: true
    The Clarisant's oldest exercises preserve an elven sequence beneath later notation. An elf or a scholar working from deep Echo River fragments could identify the order of reference tones even where later schools renamed every step.

    Teachers in this lineage can trace their instruction through older local schools and reach a gap where the named founders all learned the same method without recording its source. The Dissident's last location and fate remain absent from both those records and the hidden elven archive.
  PROSE
end
