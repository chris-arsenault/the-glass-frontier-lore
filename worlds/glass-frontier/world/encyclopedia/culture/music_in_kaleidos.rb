encyclopedia :music_in_kaleidos do
  name "Music in Kaleidos"
  summary "Music in Kaleidos is a public language of work, memory, authority, and resonance practiced across settlements, ships, workshops, and ring habitats. Its working forms descend from the intact ring's operating calls, and answering a phrase correctly is a form of standing."
  kind :culture
  subkind :expressive_tradition
  status :complete
  topics :music, :resonance, :governance, :archives, :training
  prevalence :common
  available_globally

  descriptive_identity(
    manner: "People enter music mid-phrase and treat that as ordinary courtesy: a newcomer joins " \
            "the work pulse before joining the conversation, and a player who wants the room " \
            "answers the standing phrase before offering a new one.",
    hospitality: "A guest is offered the pulse — a tapped rhythm, a hummed line — before food in " \
                 "many working households, and taking it up is accepting the welcome."
  )

  prose <<~PROSE
    Music crosses boundaries that ordinary speech does with effort. Crews keep time against machinery, Tuners teach a stable response through held tones, and public players carry an event by repeating the phrase through which a room first understood it. An instrument may be a tool, an archive, or a claim to speak. The distinction depends on who is listening and what changes when the sound stops.

    The working forms are older than any living settlement. The intact ring ran on operating calls — tone sequences that paced crews, marked shift turns, and announced the state of systems across sections too large for a voice — and the work music of the present system descends from that repertoire through #{elapsed :the_glassfall, approx: true} of daily use. A Keelward loading pulse and a Vey duct-crew round are recognizably cousins, and archive players can trace both to call families the ring's registers record. Answering the phrase is therefore literacy of a working kind: the person who can take up the pulse has announced where they trained, and the person who answers it cleanly has standing that a silent observer must earn some other way.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Forms and Authority"
    A single musical order would be simpler than what exists. Some settlements preserve voices in worked crystal and treat playback as testimony. #{ref :fermata_station, "Fermata Station"} makes civic decisions through public improvisation and hears precedent in the standards a player calls. Work crews claim machine tones as common music once enough hands can hold the pulse together, and a claimed tone enters the crew's repertoire with the machine's name attached.

    Pace is discipline. A gutting line, a loading gang, or a splice crew works to a pulse tight enough that the music is the supervision — a hand that drops out of rhythm is visible to the whole line before any foreman speaks. The people maintaining the underlying tone make everyone else's performance possible and hold the least glamorous position in the room, and every working tradition has songs about exactly that.
  PROSE

  cue "A work tone acquires harmony as nearby crews join it, while older listeners identify the place and dispute carried by the phrase."
  cue "A guest is handed a rhythm before a cup — someone taps the household pulse on the table and waits, pleasantly, for it to come back."
  affordance "A player can enter work, ceremony, or public argument by recognizing the shared pulse and answering it in the accepted form, and a traveler who answers cleanly is placed and part-trusted before giving a name."
  pressure "The people maintaining the underlying tone make everyone else's performance possible while receiving the least authority in the room, and every negotiation over standing in a musical settlement runs into that fact eventually."
  variation "Quarry settlements preserve sound in material; ring habitats may use performance as law; crews turn repeated machinery into a common repertoire."
  variation "Call families diverge by region like dialects, and archive players collect variant phrases the way registrars collect name spellings."
end
