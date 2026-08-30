encyclopedia :session_caller do
  name "Session Caller"
  summary "A session caller opens, steers, and closes the public improvisations through which Fermata Station and its imitators make civic decisions — calling the standards that frame a question, recognizing players into the argument, and reading the room's resolution out of the music. The office is inherited by ear."
  kind :role
  subkind :office
  status :complete
  topics :music, :governance, :"ring-hab", :"social-structure"
  prevalence :uncommon
  appears_when all: { place: [:sealed_hab] }

  descriptive_identity(
    attire: "Performance plain — the caller dresses under the room, by long convention, so " \
            "the office's authority arrives through the horn rather than the coat — with " \
            "the caller's book carried rolled: the annotated standards, each tune's civic " \
            "meanings margin-noted in generations of hands.",
    tools: "The instrument, the book, and the count: a caller's four beats in silence are " \
           "the gavel, and every player in a session settlement knows what entering on " \
           "or against the caller's count declares.",
    manner: "Listens like a judge and plays like an advocate for the room rather than a " \
            "side; a good caller is described as fair in the way referees are, and " \
            "argued about the same way."
  )

  cue "Four beats of silence from the stand quiet the hall — the caller's count — and the standard that opens states tonight's question to everyone who knows the book."
  cue "A player rises and enters against the theme, and the caller turns them into the music with a phrase instead of a gavel, folding the objection into the argument."
  affordance "The caller's book and count make a hall of improvisers into a working assembly — questions framed by standards everyone knows, objections recognized in turn, and the room's resolution read out in a closing chorus with the standing of a recorded vote."
  pressure "The music decides and the caller reads the deciding, so every close is contestable by anyone who heard the room differently — and session law's appeals process is, necessarily, another session, with the same book and a different caller."
  variation "Fermata's callers hold sworn civic office with their sessions logged as public record; the imitator habs run advisory sessions whose calls carry the weight the local wards choose to give them."
  variation "Callers train as seconds for years, learning the book's margins by ear, and the succession session — the night the second calls and the caller plays sideman — is the office's examination and farewell in one."

  prose <<~PROSE
    #{ref :fermata_station, "Fermata Station"} makes civic decisions through public improvisation, and the session caller is the office that keeps the practice a government rather than a concert. The caller opens the session with the count and the framing standard — the tune whose civic meaning, held in the caller's annotated book, states the question before the room — then steers: recognizing players into the argument by turning toward them, folding objections entering against the theme into the music, holding the session inside the question the way a chair holds debate to the motion. The close is the office's weight. When the room's playing converges, the caller calls the closing chorus, and the form it takes — which theme prevailed, how the counter-figures resolved, who carried the final statement — is read as the decision and logged as public record, in notation, by clerks who can hum every ruling of the last century.

    The office inherits by ear. A caller's second learns the book across years at the sideman's chair — the standards, the margins, the meanings a tune has accumulated through every session it ever framed — and the succession happens in public, at the session where the second calls and the caller plays beside them, the hall listening to the handover the way other settlements watch an oath. Precedent lives in the repertoire: to call an old standard is to invoke every decision it ever framed, callers argue in tune choices the way jurists argue in citations, and Fermata's proudest institutional boast is precise — the station's constitutional crises are, without exception, danceable.
  PROSE
end
