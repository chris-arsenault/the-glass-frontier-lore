encyclopedia :far_attendant do
  name "Farglass Attendant"
  summary "A farglass attendant serves a council farglass pane: keeping its covering hours, witnessing every lifting of the cloth, and standing beside the system's most delicate conversations as their custody, protocol, and memory. A few dozen live panes exist, and the attendants who serve them are counted just as carefully."
  kind :role
  subkind :office
  status :complete
  log "2026-08-31 — Renamed Far Attendant to Farglass Attendant; the title identifies the pane the office serves."
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
    manner: "Quiet in the room and exact in the hour-book; attendants speak to manage the " \
            "pane's protocol and record the conversation's custody, then leave its content " \
            "to the participants."
  )

  cue "Beside the covered pane a gray-cloaked figure waits with the hour-book open, and at the appointed minute lifts the cloth in the same motion as the farglass attendant lifting theirs — the two rooms joining like a door opened from both sides."
  cue "Through the council session the attendant stands beside the glass working lamp codes and writing; afterward they seal the hour-book in view of the delegates from both rooms."
  affordance "The attendants make the panes usable as instruments of state — covering hours kept to the minute at both ends, every lifting witnessed and logged, and the paired hour-books constituting a custody record two governments can check against each other."
  pressure "Every lifting is witnessed and entered in paired books that two governments may audit against each other. The attendants answer for the protocol and custody record while the participants answer for what was said."
  variation "The great council panes run paired attendants on opposing shifts with published hours; the private desk pairs of factor houses and archives retain a single attendant whose hour-book is the relationship's real contract."
  variation "Attendants of long-paired panes develop the working friendship of people who have lifted cloth together for decades across an unbridgeable distance, and the custom of retiring in the same season, arranged by lamp code, is old enough to have a name."

  prose <<~PROSE
    Every live #{encyclopedia_ref :farglass, "farglass"} pair of consequence is served at both ends, and the farglass attendants are the service. The office keeps the covering hours — the published schedule by which a pane's cloth lifts and lowers, held to the minute at both ends so that each room's exposure to the other is consented, bounded, and simultaneous — and witnesses everything the glass does. Each lifting enters the hour-book with its authority, witnesses, and duration; the paired books at the pane's two ends give either side a custody record it can audit against the other. Between covering hours the attendant guards the pane. During them, the attendant works the lamp codes for urgency and turn-taking, manages the slates, and records the session without joining its substance.

    Attendants are sworn to the pane rather than to either room it joins. The oath is administered jointly by lamp code and binds each attendant to the pair; candidates are examined, salaried, and audited by both ends. Attendants of long-paired panes may lift cloth together for decades without sharing a room. Their coordinated retirement is arranged across the glass by lamp code, with both cloths lowered for the final time in the same minute.
  PROSE
end
