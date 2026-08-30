encyclopedia :bellholder do
  name "Bellholder"
  summary "A bellholder is the one person at a cordon post certified to ring the evacuation bell — the office that holds the judgment of when a boundary's behavior has stopped being weather and started being the day everyone drilled for. The bell rung right empties a district in minutes; rung wrong, it spends a trust no post can quickly rebuild."
  kind :role
  subkind :office
  status :complete
  topics :danger, :governance, :"fluid-reality"
  prevalence :rare
  appears_when any: { place: [:cordon, :bloom_adjacent] }

  descriptive_identity(
    attire: "Cordon service dress with the holder's white cord worn shoulder to hip, and the " \
            "striker — the bell's own, carried on the person at all hours of the watch — " \
            "sheathed where both hands can reach it.",
    tools: "The bell, the striker, the threshold book — the post's accumulated record of " \
           "every boundary behavior that was almost the day — and the succession envelope, " \
           "sealed, naming the second holder.",
    manner: "Calm as professional equipment and studied in it; a bellholder narrates the " \
            "boundary's behavior aloud on the bad watches, evenly, so the post hears the " \
            "judgment forming instead of guessing at it."
  )

  cue "At the cordon post one figure wears a white cord shoulder to hip and carries the striker on their belt, and the whole post's small talk orbits their calm like boats around a mooring."
  cue "The threshold book lies open at the watch desk — generations of entries reading 'held' — and today's entry is already three lines longer than yesterday's."
  affordance "The office concentrates the hardest call at the boundary into one certified, drilled, accountable judgment — and a district that trusts its bellholder evacuates in minutes on one sound, with no committee in the loop."
  pressure "Every watch is a wager between the ring too early that spends the district's trust and the ring too late that spends the district — and the threshold book's long record of 'held' is both the holder's guide and the pressure to add one more."
  variation "Great cordons run paired holders on opposing shifts with the succession envelope sealed between them; a small post's holder trains a second quietly and hopes the envelope stays sealed for a career."
  variation "Holders' drills ring the true bell muffled — the district hears the rhythm and sleeps on — and the unmuffled test rung at each holder's investiture is, by design, a sound the district never quite forgets."

  prose <<~PROSE
    Every Bloom cordon has one bell that means leave now, and one person entitled to ring it. The bellholder is that office: certified by the Displacement Council, invested at the post with the white cord and the striker, and charged with the single judgment the whole apparatus of boundary instruments, stillhull patrols, and threshold books exists to inform — the call that the boundary's behavior has left the range the post can watch and entered the range the district must flee. The bell's authority is absolute and pre-agreed. Rung, it empties the district by drilled routes with no confirmation step and no committee; every soul under a cordon bell has practiced the sound's meaning since childhood, and the evacuation begins with the first stroke, arguments deferred by design until everyone is somewhere safer to have them.

    The office's craft is threshold judgment, and its instrument is the book. A post's threshold book holds generations of near-days — boundary behaviors logged, weighed, and closed with the word held — and a new holder inherits it as both textbook and burden: the accumulated evidence of how bad it can look and still hold, pressing against the one entry that must be written before rather than after. Holders train against the book, drill the muffled bell on schedule, and cultivate on principle the audible calm the posts call bell-voice — the even narration of a deteriorating boundary that lets a watch hear the judgment forming. The #{ref :gray_line, "Gray Line"} and #{ref :outside, "Outside"} hold the trade's teaching posts, and their retired holders' seminars consist, by all accounts, largely of reading old threshold entries aloud and asking the room: this watch, this reading — do you ring?
  PROSE
end
