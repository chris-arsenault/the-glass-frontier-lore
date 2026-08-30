encyclopedia :still_diver do
  name "Still Diver"
  summary "A still diver goes where the stillhulls stop: suited recovery work past a Bloom boundary's edge, wrapped in stillwater plate and a counted line, bringing out the people and the proof the cordon services cannot leave. The trade counts its members in dozens and its rules in blood."
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
    manner: "Methodical past the point outsiders find comfortable, and blunt about the " \
            "work's terms; divers speak of the boundary as a workplace with bad " \
            "management, and their memorial custom is a full crew count spoken at the " \
            "line stake, answered by whoever came back."
  )

  cue "At the cordon line a suited figure checks the counted line's payout twice, taps the breath rating on their own chest for the line crew's benefit, and walks into ground that the light crosses wrongly."
  cue "The line crew's caller counts aloud the whole time the diver is past the stake, and the count's steadiness is the only news anyone outside gets."
  affordance "A still diver retrieves what the boundary took while it can still be retrieved — the living inside their window, the dead for their families, the instruments whose readings justify every future cordon decision — from ground even a rated hull can only skirt."
  pressure "The suit's breaths are fewer than a hull's and the line is the only vote the outside keeps, so every recovery is triage staged on a count — and the diver's own judgment past the stake is the one instrument the service cannot read from the safe side."
  variation "Cordon services keep salaried dive pairs at the standing boundaries; the roving recovery teams that answer new events train together for years and are lent between cordons like farglass panes."
  variation "The trade's memorial is the line-stake count — the full crew roster spoken aloud, answered by whoever came back — and retired divers travel to stand at other crews' counts, by a custom the trade keeps and leaves unexplained."

  prose <<~PROSE
    The #{encyclopedia_ref :stillhull, "stillhulls"} work the boundary's edge; the still divers work past it. The trade is suited recovery inside ground where the rules have begun to fray — the collapsed cordon post, the vessel the Bloom's expansion caught, the instruments whose final readings the Displacement Council needs badly enough to send people for — and its equipment is the hull's architecture worn as clothing: plates of layered stillwater cell, a breath rating stenciled on the chest, and the counted line that pays out behind, touched constantly, the diver's compass, clock, and vote all in one cord. Speech goes strange early past the stake; the wrist slates and the line's pull codes carry what must be said; and the line crew's caller counts aloud the whole dive, the steady count being all the outside world knows until the line comes back with weight on it.

    The trade's law is priority under the count. The living first, inside their window; the dead second, for their families and the registries; the instruments third, though every diver knows recoveries where the order inverted and can argue the case. The counts are short — a suit's breaths are fewer than a hull's — and the discipline of turning at the number, drilled past instinct, is the whole difference between a recovery service and a slow-moving list of names. The divers themselves, counted in dozens across the system and known to each other the way farglass panes are known, carry the work's weight in the trade's dry idiom: the boundary is a workplace with bad management, the suit is a strong opinion the Bloom sometimes respects, and the count going quiet is a sentence every cordon town has heard once and arranges never to hear twice.
  PROSE
end
