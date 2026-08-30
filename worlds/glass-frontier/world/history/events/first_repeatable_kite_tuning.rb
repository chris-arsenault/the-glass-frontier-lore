incident :first_repeatable_kite_tuning do
  name "The First Repeatable Kite Tuning"
  summary "The First Repeatable Kite Tuning was recorded in 2235 when a freight crew crossed a dry Kaleidos basin with a kinetic array fixed to three cloth spars. Its maintenance record let workshops reproduce the engine within the year."
  subkind :discovery
  type_of :kite_sail
  date 2235
  status :complete
  tags :transport, :resonance, :"kinetic-freq", :trade
  prominence :recognized

  descriptive_identity(
    marks: "Three cloth spars around a kinetic ringglass array and the surviving maintenance record copied by " \
           "surface workshops.",
    stakes: "The record made one freight crew's tuning reproducible and turned a local crossing machine into the " \
            "motive engine used throughout Kaleidos."
  )

  prose <<~PROSE
    A freight crew crossed a dry basin on Kaleidos in 2235 with a kinetic array fixed to three cloth spars. The surviving maintenance record includes the first tuning another workshop could reproduce without the original crew or machine present.

    Surface workshops copied the arrangement within the year. Later engines changed their arrays, hulls, and controls, but retained the sail surfaces that carried the first stable structural support.
  PROSE

  gm_note :appears, "Any argument about who owns an early kite design eventually reaches the surviving maintenance record, whose copies differ in the marks attributed to the freight crew."
  gm_note :triggered_by, "Comparing an early copy with a modern engine exposes which changes were repairs, which became standards, and which workshop later claimed as inventions."
  gm_note :complicates, "The record proves repeatability, not the identity of the person who found the tuning, leaving every later ownership claim attached to an anonymous working crew."
end

moment :first_repeatable_kite_tuning_recorded, year: 2235, of: :first_repeatable_kite_tuning do
  summary "A freight crew recorded the first kite tuning another workshop could reproduce."
  prose "A freight crew recorded the first kite tuning another workshop could reproduce in 2235."
end

relate :rel_kite_created_during_signal_famine, :active_during, :first_repeatable_kite_tuning, :signal_famine do
  prose "The first repeatable tuning was recorded while surface crews rebuilt trade during the Signal Famine."
end
