encyclopedia :far_attendant do
  name "Far Attendant"
  summary "A far attendant serves a council farglass pane: keeping its covering hours, witnessing every lifting of the cloth, and standing beside the system's most delicate conversations as their custody, protocol, and memory. A few dozen live panes exist, and the attendants who serve them are counted just as carefully."
  kind :role
  subkind :office
  status :complete
  topics :governance, :"ring-era", :diplomacy, :archives
  prevalence :rare
  appears_when any: { place: [:archive, :sealed_hab] }

  descriptive_identity(
    attire: "The attendant's gray half-cloak — cut to the same cloth as the pane's cover, " \
            "by a symbolism the office finds useful — worn over plain dress, with the " \
            "hour-book chained at the hip like a doorward's tags.",
    tools: "The cloth, the hour-book, and the lamp codes: the attendant lifts and lowers " \
           "the cover, logs every lifting with its witnesses and duration, and works the " \
           "lamp signals that manage the conversation the silent glass cannot carry.",
    manner: "Present the way good furniture is present; attendants train to be forgettable " \
            "in the room and exact in the book, and the office's private irony is that " \
            "its members see more high politics than anyone who is allowed to discuss it."
  )

  cue "Beside the covered pane a gray-cloaked figure waits with the hour-book open, and at the appointed minute lifts the cloth in the same motion as the far attendant lifting theirs — the two rooms joining like a door opened from both sides."
  cue "Through the whole council session the attendant stands beside the glass working lamp codes and writing, and afterward can be watched deliberately recalling none of it in front of the delegates."
  affordance "The attendants make the panes usable as instruments of state — covering hours kept to the minute at both ends, every lifting witnessed and logged, and the paired hour-books constituting a custody record two governments can check against each other."
  pressure "The office stands beside conversations it must witness and never join, hold, or repeat — and the paired-book custody that makes the panes trustworthy makes the attendants the two people every intelligence service in the system has thought carefully about."
  variation "The great council panes run paired attendants on opposing shifts with published hours; the private desk pairs of factor houses and archives retain a single attendant whose hour-book is the relationship's real contract."
  variation "Attendants of long-paired panes develop the working friendship of people who have lifted cloth together for decades across an unbridgeable distance, and the custom of retiring in the same season, arranged by lamp code, is old enough to have a name."

  prose <<~PROSE
    Every live #{encyclopedia_ref :farglass, "farglass"} pair of consequence is served at both ends, and the far attendants are the service. The office keeps the covering hours — the published schedule by which a pane's cloth lifts and lowers, held to the minute at both ends so that each room's exposure to the other is consented, bounded, and simultaneous — and witnesses everything the glass does: every lifting logged in the hour-book with its authority, witnesses, and duration, the paired books at the pane's two ends constituting a custody record that either side can audit against the other. Between the covering hours the attendant is the pane's doorward; during them, its protocol — working the lamp codes that carry urgency and turn-taking across glass that transmits sight alone, managing the slates, and standing beside conversations that redraw routes and treaties while training, professionally, to retain nothing but the log.

    The office's culture is discretion built into architecture. Attendants are sworn to the pane rather than to either room it joins — the oath, administered jointly by lamp code in the office's founding ceremony, binds the attendant to the pair — and the trade's small, careful population is examined, salaried, and watched with the attention the panes' importance earns. What the scrutiny cannot reach, the office's own customs manage: attendants of long-paired panes, who have lifted cloth together across unbridgeable distance for decades, are the system's strangest close colleagues, and their tradition of coordinated retirement — arranged across the glass by lamp code, the two cloths lowered a final time in the same minute — is the office's whole character in one gesture.
  PROSE
end
