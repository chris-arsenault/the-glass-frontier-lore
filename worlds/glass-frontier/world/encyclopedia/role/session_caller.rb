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
    manner: "Listens across the hall before entering, recognizes a player by turning the " \
            "theme toward them, and keeps the closing phrase aligned with the annotated " \
            "standard in the caller's book."
  )

  cue "Four beats of silence from the stand quiet the hall — the caller's count — and the standard that opens states tonight's question to everyone who knows the book."
  cue "A player rises and enters against the theme, and the caller turns them into the music with a phrase instead of a gavel, folding the objection into the argument."
  affordance "The caller's book and count make a hall of improvisers into a working assembly — questions framed by standards everyone knows, objections recognized in turn, and the room's resolution read out in a closing chorus with the standing of a recorded vote."
  pressure "The caller states the resolution through the closing chorus and clerks record it in notation. An appeal repeats the question from the same book under a different caller, so both readings remain available for comparison."
  variation "Fermata's callers hold sworn civic office with their sessions logged as public record; the imitator habs run advisory sessions whose calls carry the weight the local wards choose to give them."
  variation "Callers train as seconds for years, learning the book's margins by ear, and the succession session — the night the second calls and the caller plays sideman — is the office's examination and farewell in one."

  prose <<~PROSE
    #{ref :fermata_station, "Fermata Station"} makes civic decisions through public improvisation, with the session caller presiding from the stand. The caller opens with the count and the framing standard — the tune whose civic meaning, held in the annotated book, states the question before the room. A turn toward a player recognizes an argument; a phrase against the theme admits an objection; a return to the standard keeps the session inside its question. When the room's playing converges, the caller begins the closing chorus. Its prevailing theme, resolved counter-figures, and final statement become the decision recorded in notation by the session clerks.

    The office inherits by ear. A caller's second learns the book across years at the sideman's chair — the standards, the margins, and the meanings a tune has accumulated through earlier sessions. Succession happens in public, at the session where the second calls and the caller plays beside them. Precedent lives in the repertoire: an old standard invokes the decisions it framed, and an appeal can perform an earlier score before a different caller reads the room again.
  PROSE
end
