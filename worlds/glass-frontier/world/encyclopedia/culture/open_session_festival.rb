encyclopedia :open_session_festival do
  name "The Open"
  kind :culture
  subkind :expressive_tradition
  status :complete
  topics :music, :"social-structure", :household
  prevalence :uncommon
  appears_when any: { place: [:urban, :sealed_hab] }
  summary "The Open is an annual night when every session room, gallery, and market floor opens to any player. Appointed answering benches lead each audience's sung, silent, stamped, or spoken response under the rule: the room answers."
  integration "Most settlements with session culture keep the festival on their own date; the answering-bench roles rotate among respected locals, and a town's festival manners are considered as legible a civic reference as its docks"
  formal_register "The festival's forms are called aloud — a player claims a song by naming it to the bench, the bench opens the room's answer, and the closing of a session is the bench's line, 'the room thanks the players,' delivered once and ending the night"
  aesthetic "Answering-bench sashes in the settlement's colors, the chalked session boards outside every open door listing what has been played and what has been promised, and the tradition's one fixed decoration: an empty chair in every session room, kept for whoever has yet to stand up"

  descriptive_identity(
    manner: "The answering bench gives first attempts priority on the chalk " \
            "board, brings the room in under a faltering player, and holds " \
            "silence when the named song calls for it.",
    attire: "Ordinary best, plus settlement-colored sashes for the answering " \
            "bench; players claim the empty chair without a separate mark.",
    hospitality: "Every open door owes a stranger a seat and a listen; a " \
                 "traveling player who names a song from their own country is " \
                 "answered by the bench's best approximation, and the mangled " \
                 "answer, warmly meant, is by long custom the festival's " \
                 "favorite joke."
  )

  prose <<~PROSE
    During the Open, first-timers and established players claim songs from the same chalked board. Every room keeps an empty chair for the next person to stand. Its answering bench consists of sashed locals appointed for the night. They cue a sung response, bring the audience under a faltering singer, hold silence for listening songs, and time stamped choruses or laughter. The bench treats the audience as one part of the performance.

    The festival grows from #{encyclopedia_ref :music_in_kaleidos, "the Answering Phrase"}, practiced year-round. A player names the song to the bench; the bench opens the room's answer. At closing, it says *the room thanks the players* once, and the chalked board stays outside the door until morning. Fermata uses #{encyclopedia_ref :session_caller, "callers"} and runs until the ferries. Cold settlements sing in stove shifts, while dock towns add the songs of crews currently in port. Promise columns on the boards record songs people will learn for the next year's rooms.
  PROSE

  cue "The first-timer stands at the empty chair and names her song to the bench in a voice that nearly fails — and the bench brings the room in under her second verse so smoothly that the nearly-failing becomes the story everyone tells about the year she started."
  cue "At the night's end the sashed bench stands, says the one line — the room thanks the players — and the chalked board outside the door is left up until morning, played songs on one side, promises on the other."
  affordance "The empty chair gives a first-time player a guaranteed place, while the promise board carries new songs into the next year's repertoire."
  variation "Fermata's runs on its callers and ends with the ferries; cold settlements sing in stove shifts; dock towns absorb the port's crews and keep their songs — the law and the empty chair are everywhere the same."
  variation "The benches' embroidered line — a song is half whoever answers it — travels home with visiting players, and settlements new to session culture typically adopt the festival first and grow the year-round rooms up under it."
end
