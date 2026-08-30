encyclopedia :keel_route_kin do
  name "Keel Route Kin"
  summary "Keel Route Kin are a corridor culture whose members count family through the docking crews that answer the same emergency bell. Kinship follows the bell rota rather than blood, and a crew that has hauled you off a failing hull owes and is owed accordingly."
  kind :culture
  subkind :cultural_identity
  status :complete
  topics :transport, :"social-structure", :household, :danger
  prevalence :uncommon
  appears_when any: { place: [:dock, :road] }

  descriptive_identity(
    manner: "Route Kin introduce themselves by bell — 'Third Bell, Hinge Six rota' places " \
            "a person more exactly than any surname — and reckon obligation in answered " \
            "alarms, a ledger everyone on the rota can recite and does at weddings.",
    hospitality: "A bell-kin arriving at any household on the rota is family in the plain " \
                 "sense: fed, bunked, and put to work, in that order, with the questions " \
                 "saved for the meal."
  )

  prose <<~PROSE
    The #{ref :keel, "Keel"}'s length is strung with emergency bells — the corridor's old distress net, one bell to a section, rung for the hull failures and dockings-gone-wrong that corridor life supplies steadily — and the crews rostered to answer each bell became, over generations, each other's family. Keel Route Kin count kinship by the rota. The crews that answer your bell are your kin; the crews on the bells adjoining are cousins; and a person introduces themselves by bell and rota with the precision other cultures spend on lineage, because the bell states the thing the culture actually needs known: who comes for you, and for whom you go.

    The reckoning underneath is the answered-alarm ledger, kept in memory and recited on occasions. Every answer is remembered — who came, how fast, what it cost — and the ledger binds without balancing: bell-kinship is owed forward, to the next alarm, rather than paid back, and the culture's firmest rule is that the rota answers for strangers with the same speed it answers for kin, since every Route family was once the strange hull the bell rang for. Marriages between rotas merge ledgers in a ceremony that is mostly recitation; children are entered on their household's bell at naming; and retirement from answering, when age takes a crew off the rota, is marked by the bell custom the corridor finds unbearably moving and the Route Kin find sensible — the retiring crew rings their own bell once, softly, and the whole rota answers.
  PROSE

  cue "An introduction runs 'Third Bell, Hinge Six rota' before any name, and the listener's nod places the speaker on a map of obligations both parties can navigate blind."
  cue "A bell sounds down the corridor and four crews drop what they hold mid-sentence — the rota answering — while everyone else clears the route with practiced speed."
  affordance "The bell net is the corridor's rescue service and its kinship system in one — any hull in trouble on the Keel is minutes from crews whose culture counts the answering as family business, stranger and kin alike."
  pressure "Kinship follows the rota, so the ledger of answered alarms is the culture's whole inheritance — and a crew that answered slow carries the recitation of it, gently and forever, at every wedding on the bell."
  variation "Dense sections run rotas of six crews with formal reciters; the long lonely spans between waystations run two-crew bells whose kinship is correspondingly fierce."
  variation "Retirement off the rota is marked by the soft self-rung bell and the whole rota's answer, and corridor travelers who witness one describe it for years."
end
