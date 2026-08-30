encyclopedia :still_diver do
  name "Still Diver"
  summary "A still diver performs suited recovery beyond the point where stillhulls stop at a Bloom boundary. Layered stillwater plate, a breath rating, and a counted line let the diver retrieve people, bodies, and instruments while the line crew tracks the dive from the cordon stake."
  kind :role
  subkind :profession
  status :complete
  topics :"fluid-reality", :danger, :salvage
  prevalence :rare
  appears_when all: { place: [:bloom_adjacent] }

  descriptive_identity(
    attire: "The still suit — plates of layered stillwater cell over damped underlayers, " \
            "the same architecture as a hull worn as clothing — with the diver's breath " \
            "rating stenciled on the chest where the line crew reads it upside down.",
    tools: "The counted line, paid out and touched constantly; the slate on the wrist, " \
           "since speech goes strange early; and the recovery frame the diver pushes " \
           "ahead — for the living, the dead, and the instruments, in the priority " \
           "order the service drills.",
    manner: "Methodical and blunt about the work's terms; divers repeat breath counts and " \
            "recovery order before crossing the stake. Their memorial custom is a full " \
            "crew count spoken at the line, answered by those who returned."
  )

  cue "At the cordon line a suited figure checks the counted line's payout twice, taps the breath rating on their own chest for the line crew's benefit, and walks into ground that the light crosses wrongly."
  cue "The line crew's caller counts aloud the whole time the diver is past the stake, and the count's steadiness is the only news anyone outside gets."
  affordance "A still diver retrieves what the boundary took while it can still be retrieved — the living inside their window, the dead for their families, the instruments whose readings justify every future cordon decision — from ground even a rated hull can only skirt."
  pressure "The line crew calls the remaining breaths and transmits pull codes while the diver chooses among living casualties, bodies, and instruments beyond the stake. Every change to the drilled recovery order is entered in the service record afterward."
  variation "Cordon services keep salaried dive pairs at the standing boundaries; the roving recovery teams that answer new events train together for years and are lent between cordons like farglass panes."
  variation "At a line-stake memorial the full crew roster is spoken aloud and answered by those who returned; retired divers travel to other crews' counts and answer for former partners."

  prose <<~PROSE
    #{encyclopedia_ref :stillhull, "Stillhulls"} work a Bloom boundary's edge; still divers cross the stake on foot. They enter collapsed cordon posts, vessels caught by an expansion, and instrument sites whose final readings the Displacement Council has ordered recovered. The suit carries plates of layered stillwater cell and a breath rating stenciled where the line crew can read it. The counted line pays out behind the diver and transmits the crew's pull codes. When speech changes past the stake, the diver answers on a wrist slate or through the line while the caller counts the remaining breaths aloud.

    Recovery order puts the living first inside their window, the dead second for their families and the registries, and instruments third. A diver may change that order beyond the stake and must account for the change afterward. Suits carry fewer breaths than a hull, and crews drill the turn number until both diver and caller act on it. The few dozen working divers know one another by crew and cordon. At memorial counts they answer the full roster aloud, leaving silence only for the names that did not return.
  PROSE
end
