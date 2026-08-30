encyclopedia :bellholder do
  name "Bellholder"
  summary "A bellholder is the cordon officer certified to order a district's immediate evacuation with one stroke of the post bell. Boundary instruments, patrol reports, and the inherited threshold book inform the decision; the bellholder alone carries the striker."
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
    manner: "Deliberately calm; on a bad watch the bellholder narrates the boundary's " \
            "behavior aloud so the post hears the evidence and the judgment forming."
  )

  cue "At the cordon post one figure wears a white cord shoulder to hip and carries the striker on their belt; instrument readers address every change in the boundary directly to them."
  cue "The threshold book lies open at the watch desk — generations of entries reading 'held' — and today's entry is already three lines longer than yesterday's."
  affordance "One stroke from a certified bellholder begins the district's drilled evacuation in minutes, with the decision and its supporting readings entered under one officer's name."
  pressure "The threshold book shows how earlier holders read similar conditions, while the live instruments and patrol reports belong to the present watch; the bellholder must state which evidence governs the call."
  variation "Great cordons run paired holders on opposing shifts with the succession envelope sealed between them; a small post's holder trains a second quietly and hopes the envelope stays sealed for a career."
  variation "Holders' drills ring the true bell muffled — the district hears the rhythm and sleeps on — and the unmuffled test rung at each holder's investiture is, by design, a sound the district never quite forgets."

  prose <<~PROSE
    Every Bloom cordon has one bell that means leave now, and one person entitled to ring it. The bellholder is that office: certified by the Displacement Council, invested at the post with the white cord and the striker, and charged with deciding when the boundary's behavior has left the range the post can watch and entered the range the district must flee. Boundary instruments, stillhull patrols, and the threshold book report to that decision. The first stroke sends the district along its drilled routes; everyone under a cordon bell has practiced the sound's meaning since childhood.

    The office's craft is threshold judgment, and its instrument is the book. A post's threshold book holds generations of near-days — boundary behaviors logged, weighed, and closed with the word held — and a new holder inherits the accumulated evidence of how bad a reading can look while the boundary still holds. Holders train against the book, drill the muffled bell on schedule, and cultivate the audible calm the posts call bell-voice: even narration of a deteriorating boundary that lets a watch hear the judgment forming. The #{ref :gray_line, "Gray Line"} and #{ref :outside, "Outside"} hold the trade's teaching posts, where retired holders read old threshold entries aloud and ask trainees whether each watch had reached the bell.
  PROSE
end
