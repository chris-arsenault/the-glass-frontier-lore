encyclopedia :kesh_challenge_names do
  name "Kesh Challenge Names"
  summary "Kesh Challenge Names are working names earned by completing a kinetic trial without assistance and used to record the bearer's latest such feat. The trials are posted, the completions witnessed, and the name is worn until a harder one replaces it."
  kind :culture
  subkind :expressive_tradition
  status :complete
  topics :"ring-hab", :"social-structure", :"kinetic-freq", :training
  prevalence :uncommon
  appears_when all: { place: [:sealed_hab] }

  descriptive_identity(
    manner: "Kesh introductions lead with the challenge name and offer the household name " \
            "second, if at all. 'Crossed the Weir Deck' identifies the speaker's standing " \
            "before a given name such as Tam appears, and a compliment takes the form of " \
            "a technical question about the trial.",
    attire: "The name travels with a chalk line: bearers of a current name may chalk its " \
            "trial mark on their gear, and a Kesh worker's kit reads like a climbing " \
            "log to anyone who knows the marks."
  )

  prose <<~PROSE
    Kesh sits on a kinetic junction and its gravity shifts by deck and season, which the settlement long ago converted from hazard into sport, examination, and naming system in one institution. A challenge is a posted kinetic trial — a crossing, a climb, a carry, a fall taken and landed — defined precisely, graded by the trial board, and open to anyone; completing one alone and witnessed earns its name, worn in place of any other working name until a harder trial replaces it. The names are the settlement's résumé currency: Crossed the Weir Deck Unroped, Carried the Third Bell Down, Stood the Long Spin. Employers hire by them, crews sort themselves by them, and a name's precise wording is defended with the pedantry of people whose titles are also their proof.

    The trial board keeps the apparatus honest. Challenges post with their conditions — route, load, spin state, the assistance line that must stay untouched — completions require two witnesses off the challenger's crew, and the board's register pairs every current name in Kesh with its date and witnesses. Retired names pass into the recitation rolls. At public grading sessions, new trials enter the register and old ones are recalculated as the settlement's spin drifts. Families submit witness accounts, old measurements, and petitions when a remembered crossing no longer carries its former grade.
  PROSE

  cue "An introduction leads with a feat — 'Crossed the Weir Deck, second watch' — and the given name follows as an afterthought while both parties' eyes go to the chalked trial marks on the newcomer's kit."
  cue "At the trial board's posting wall, a crowd argues the conditions of a newly posted challenge line by line, with the heat other towns save for water rights."
  affordance "A challenge name is a load-rated introduction — the register pairs every current name with date, conditions, and witnesses, so a Kesh hire's kinetic competence arrives pre-verified in the name itself."
  pressure "Kesh's drifting spin changes the grade of old trials, so the board publishes revised conditions beside the names already earned under them."
  variation "Work crews favor the load-and-carry names and hire by them; the young favor the falls and crossings, and the board grades both canons with elaborate neutrality."
  variation "A completed trial may be dedicated — the name earned in another's honor and entered so in the register — and Kesh funerals read the dedications a person accumulated as the measure the settlement actually keeps."
end
