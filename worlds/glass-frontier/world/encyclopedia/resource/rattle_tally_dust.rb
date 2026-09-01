encyclopedia :rattle_tally_dust do
  name "Tally Dust"
  kind :resource
  subkind :data
  status :complete
  log "2026-08-31 — Renamed Rattle Tally Dust to Tally; the freight medium's original bookkeeping office supplies a concise shifted meaning instead of a three-part material description."
  log "2026-08-31 — Renamed Tally to Tally Dust. The bare title collided with the named ship Tally; freight culture already uses tally for attestations, bowls, route records, and that ship, while dust identifies this medium within the family."
  topics :trade, :"ring-era", :archives, :mystery
  prevalence :uncommon
  appears_when any: { place: [:dock, :market] }
  summary "Tally dust is a fine metallic medium, harvested from the holds of two ring-era freight installations, that settles into legible figures: the last registered weight of any container opened above it. On the standing ring it was the cargo system's own bookkeeping medium; scattered, it is a scarce instrument that dockside trade prizes and dockside fraud studies."
  function "Weight attestation — a pan of dust under an opened container settles into the container's last registered weight, in elven figures, readable by anyone with the conversion card"
  grades "Graded by settling speed and figure sharpness — Bay Thirty-One dust settles crisp in a breath and grades highest; Exchange C dust runs slower and softer; mixed or exhausted dust settles smudged and is sold down as curiosity"
  availability "Harvested under registry license from the two source holds, sold by the sealed pan through the dock assay houses; a working pan serves for years before its figures soften"

  descriptive_identity(
    appearance: "A fine gray-bright metallic dust, kept in shallow sealed pans; at " \
                "rest it lies featureless, and under an opened container it stirs — " \
                "with a dry rattle and settles into raised elven " \
                "figures like frost forming numerals.",
    working: "The pan goes under the container, the lid comes off the container " \
             "above it, the dust rattles and settles into the last registered " \
             "weight; the reader checks the figures against the conversion card " \
             "and the manifest, and a mismatch is a finding.",
    risks: "The dust reports the last weight registered by the system it once " \
           "served — a figure that predates every postfall repack — so its " \
           "verdicts need dockside interpretation, and the trade's running " \
           "education is learning which mismatches mean fraud and which mean " \
           "history."
  )

  prose <<~PROSE
    The ring's freight system kept its own books, and part of the ledger was dust. The #{encyclopedia_ref :elves, "elves"} seeded their cargo installations with a registering medium — a fine metallic dust, laid in hold floors and weigh frames, that took each container's registered weight into itself and could render the figure back on demand, the working surface of an inventory system that spanned the ring and reconciled itself continuously. Had the ring held, the dust would have stayed what it was built to be: infrastructure, invisible as good bookkeeping. The Glassfall reduced the system to two surviving reservoirs — the holds of #{ref :bay_thirty_one, "Bay Thirty-One"} and #{ref :exchange_c, "Exchange C"} — and turned their floors into mines. Harvested under registry license and sold by the sealed pan, the dust keeps performing its single office out of context: set a pan beneath a container, open the container, and the dust rattles and settles into raised elven figures — the container's last registered weight, rendered like frost forming numerals.

    Dockside trade has built a modest institution on the trick. Assay houses grade pans by settling speed and figure sharpness, conversion cards turn elven figures into working units, and the tally pan is the settlement of choice for disputes about tampering in transit: a container's dust figure and manifest figure agreeing closes an argument. The instrument's subtlety is time. The dust reports the last weight registered by the system it served, so its figure predates every postfall repack, and the trade's craft is telling the mismatches apart — fraud reads one way, a container honestly repacked twelve owners ago reads another, and a figure in a weight class matching a cargo the manifest never listed is a third thing that the registries pay attention to. The pans wear out slowly, their figures softening over years toward smudge, and worn pans retire into the curiosity trade — where collectors, buying an exhausted pan, still set it under an opened box first, on the chance the old bookkeeping has one figure left.
  PROSE

  cue "The lid comes off, the pan under it gives its dry rattle, and the dust settles into raised elven figures that the tallier reads against the conversion card while both parties watch the settling."
  cue "The manifest says forty-one, the dust says a figure that converts to fifty-three, and the argument on the dock changes subject from whether to open the container to when it was last honestly packed."
  affordance "A good pan turns any dockside dispute about weight and tampering into a reading — figures both parties watch form, checked against manifest and card, with the assay houses' grading behind the pan itself."
  pressure "The dust answers with the system's last registered figure, so every reading needs interpretation — fraud, honest repacking, and older histories all wear the same numerals, and the trade's expertise is exactly the telling apart."
  variation "Bay Thirty-One dust settles crisp in a breath and serves the arbitration tables; Exchange C's slower, softer dust does workaday dock checks; exhausted pans retire into the curiosity trade with one figure left in them, or the hope of one."
  variation "The registries keep license pans of the highest grade for hearings, and their talliers train on containers of known history — a curriculum of arranged mismatches that the dock schools borrow."
end
