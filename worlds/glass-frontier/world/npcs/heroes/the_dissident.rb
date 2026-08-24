npc :the_dissident do
  name "The Dissident"
  summary "The Dissident was an elf who remained after the collective disappearance and taught practical Tuning under a human name from 2160 onward."
  subkind :dissident
  status :complete
  tags :resonance, :training, :isolation, :mystery
  prominence :forgotten
  occupation "Famine-era resonance teacher"
  omit_facts :based_in
  species "elf"
  dm!(public_entry: :tuners)

  prose <<~PROSE
    The Dissident was an elf who rejected the collective disappearance after the Glassfall. They judged that leaving isolated communities without resonance knowledge would kill people more certainly than one concealed teacher would expose the hidden habs.

    In 2160 they entered a surface settlement under a human name and began teaching practical Tuning. The lessons covered sensing an active band, separating signal from structural response, and stopping before a coupled field ran away. They withheld the elven notation and instruments that would have revealed the source.
  PROSE

  prose <<~PROSE, section: :history, heading: "The Teaching Line"
    The first students carried the lessons to nearby settlements as repair work. Each school adapted the exercises to local glass and surviving tools. By the time later teachers compared methods, the common sequence appeared to be an unusually successful Famine practice rather than one person's instruction.

    Several techniques now standardized by the #{ref :clarisant, "Clarisant"} retain that sequence: find the quiet edge of a field, introduce one reference tone, and measure the returning interval before applying force. The guild records the oldest versions without an author.
  PROSE

  prose <<~PROSE, section: :aftermath, heading: "Disappearance"
    The Dissident stopped teaching in 2180. Their room had been cleared, the borrowed instruments remained, and no student reported a farewell. Elven records available to the hidden leadership do not state whether an operative recalled them, killed them, or helped them move beyond the search.

    The leadership still classifies the teaching as a breach of concealment. Elves who learned resonance through descendants of that school preserve copies of the prohibited exercises alongside the order condemning them.
  PROSE
end

relate :rel_dissident_taught_tuners, :taught, :the_dissident, :tuners, dm: true do
  prose "The Dissident taught one of the early Famine lineages from which present Tuning descends."
end
relate :rel_dissident_member_of_elves, :member_of, :the_dissident, :elves, since: 2050, dm: true do
  prose "The Dissident belonged to the elven civilization that withdrew from public life after the Glassfall."
end
relate :rel_clarisant_derived_from_dissident, :derived_from, :clarisant, :the_dissident, dm: true do
  prose "The Clarisant's oldest practical exercises descend from the Dissident's concealed teaching line."
end

moment :dissident_begins_teaching, year: 2160, of: :the_dissident, dm: true do
  summary "The Dissident adopted a human identity and began teaching practical elven resonance work in 2160."
  prose "The Dissident settled under a human identity and began teaching a practical subset of elven resonance work."
end
moment :dissident_vanishes, year: 2180, of: :the_dissident, dm: true do
  summary "The Dissident cleared their room and disappeared in 2180, leaving the Tuner teaching line without its source."
  prose "The Dissident cleared their room and disappeared, leaving the teaching line without its source."
end
