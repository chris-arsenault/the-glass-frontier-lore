encyclopedia :graft_wax do
  name "Render"
  aka "wax"
  kind :resource
  subkind :material
  status :complete
  log "2026-08-31 — Renamed Graft Wax to Render; the production word becomes the garden habs' stable name for the cap-bloom sealant across its graft, storehouse, and registry uses."
  topics :ecology, :materials, :trade, :"ring-era"
  prevalence :uncommon
  appears_when all: { place: [:garden] }
  summary "Render is the sealing wax of the garden habs, made from the cap-bloom of elven provisioning cultivars. It seals grafts, jars, and joins breathable-tight, and its second trade — closing documents and doors with a witness seal — grew from the gardens outward."
  function "Seals grafts, preserves stores, and carries witness impressions; sets breathable-tight and lifts clean"
  grades "Green-render for graft work, kettle-white for stores and jars, and the pressed seal-stock the registries buy, graded by how crisply it holds an impression"
  availability "Rendered in every garden hab from cap-bloom harvests; seal-stock trades to registries and courts system-wide"

  descriptive_identity(
    appearance: "A pale wax with a faint green cast and a smell of cut stems, worked warm by " \
                "hand or press. Set, it holds a matte skin that takes and keeps an impression " \
                "down to the whorls of the thumb that made it.",
    working: "Warmed between the palms for graft work, kettled for jars and joins; it sets " \
             "breathable-tight — holding water and letting gas pass — and lifts clean at a " \
             "warmed blade when the join has taken.",
    risks: "The wax softens under sustained warmth, so a sealed store racked over an undiscovered " \
           "heat leak opens jar by jar before the leak is visible elsewhere."
  )

  prose <<~PROSE
    The provisioning cultivars the #{encyclopedia_ref :elves, "elves"} bred for the ring's gardens crown their stems each season with cap-bloom, a waxy collar the plants shed as they set fruit. The gardens have rendered the sheddings since the ring was whole. Render is pale, faintly green, smells of cut stems, and sets breathable-tight. A waxed graft union holds its moisture and passes gas, which is the difference between a join that takes and a join that rots. Garden stewards use green-render by the block in grafting season, warming beads between their palms and working the collar of every union on the bench.

    Kettle-white, the refined grade, does the storehouse work — jar seals, join beds, the weatherproofing collar on anything a garden hab sends traveling — and lifts clean at a warmed blade. The third trade left the gardens generations ago: the wax's matte skin takes an impression down to thumb-whorls and keeps it for decades, and pressed seal-stock became the registries' witness wax. A document closed in render carries its sealer's thumb as testimony, and courts read wax impressions against the registries' thumb ledgers.
  PROSE

  prose <<~PROSE, section: :trade, heading: "Renders, Seals, and the Thumb Ledger"
    Rendering is kettle craft on the pitch-house pattern: cap-bloom gathered at shed, kettled by house recipes, graded by impression — the render master presses a test thumb into each batch's skin and reads the crispness of the whorls. Green-render keeps the growers; kettle-white keeps the stores; and seal-stock, the tight-grained pressing that holds an impression crisp for decades, sells to registries at prices that make the pruning heap a line item in every garden's accounts.

    Seal custom carries the wax's weight. A thumb in wax is a person present at a closing — the registries keep thumb ledgers against their sealed stock, and disputing a wax seal means disputing a recorded thumb, which the courts treat as a serious allegation with a short list of outcomes. Households run the same custom at household scale: the preserves sealed by a grandmother's thumb, kept and dated, and opened, by the custom several regions claim to have invented, at the naming of her namesake.
  PROSE

  cue "At the grafting bench a steward warms a green bead between both palms and works it around the union's collar with the absent skill of long seasons."
  cue "The registry clerk tilts the sealed document to the lamp, reads the thumb-whorls in the wax against the ledger, and files it with the seal outward."
  affordance "One material carries the gardens' grafts, the stores' seals, and the registries' witness custom — breathable-tight for living joins, impression-true for legal ones, and clean-lifting for everything meant to open again."
  pressure "The wax softens under sustained warmth, so sealed stores audit their racking against heat leaks. Registries protect the thumb ledgers that authenticate witness seals as closely as the sealed documents themselves."
  variation "Green-render stays in the gardens and moves by the block at grafting season; seal-stock travels system-wide, and registries specify their suppliers' render houses by name."
  variation "Household seal custom runs deep — preserves closed under a family thumb, dated and kept — and regional tradition opens the grandmother's jar at her namesake's naming, a custom at least four regions insist began with them."
end
