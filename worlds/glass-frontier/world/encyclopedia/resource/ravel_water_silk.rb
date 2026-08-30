encyclopedia :ravel_water_silk do
  name "Ravel Water-Silk"
  aka "water-silk", "leak silk"
  kind :resource
  subkind :biological_material
  status :complete
  topics :materials, :"ring-hab", :danger, :trade
  prevalence :uncommon
  appears_when any: { place: [:sealed_hab, :orbital] }
  summary "Ravel water-silk is the living leak dressing of the hab trades: a woven mat of cultured fiber that tightens around escaping fluid and changes color when the leak carries a signal charge. Every pressure kit stows a roll, and the silk's verdict on a leak arrives faster than any gauge."
  function "Emergency leak dressing that self-tightens on contact with escaping fluid and color-codes the leak's charge"
  grades "Fresh-roll for the kits, cistern-grade for standing repairs, and the spent gray mats that go to the training rooms"
  availability "Cultured in wet-frame beds at Ravel, Tanel, and Issel; rolls trade through every hab chandlery and cordon store"

  descriptive_identity(
    appearance: "A loose-woven mat the color of raw linen, damp to the touch from its own " \
                "culture, rolled in waxed wrappers. Working silk cinches visibly into the " \
                "leak it covers, and a charged leak blushes the weave from linen to deep " \
                "signal-blue within a breath.",
    working: "Slapped wet-side down over a leak, the weave drinks the escaping fluid and " \
             "tightens as it swells — a live cinch that follows the leak's pressure — " \
             "and holds until the wrights arrive with a permanent answer.",
    risks: "The silk seals what it can reach and reports what the fluid carries: the " \
           "blue blush means the line is charged and the repair is a folder-and-tuner " \
           "job, and crews that patch blue silk with ordinary methods join the " \
           "incident ledgers."
  )

  prose <<~PROSE
    A hab leak is a race between the fluid and the crew, and water-silk is the trades' standing head start. The mats are cultured at Ravel's wet-frames — a living fiber raised in the settlement's mineral plume — and a roll slapped over a leak does two jobs in the same breath: the weave drinks the escaping fluid and cinches, a live tightening that follows the leak's own pressure, and the silk's color announces what the fluid carries. Plain water leaves the weave linen-pale. A line carrying signal charge blushes the silk to deep blue within a breath, and the blush is the material's real gift: the difference between a plumber's job and a #{encyclopedia_ref :signal_folding, "folder"}-and-tuner job, decided at a glance, before anyone has put a hand where a charged line could teach them better.

    The rolls live in every pressure kit, cordon store, and engine room in the ring settlements, wrapped in wax against their own drying, and the trades run the stock rotation with watch-salts seriousness — fresh rolls forward, aging rolls to the standing repairs, spent gray mats to the training rooms where apprentices practice the slap-and-read on rigged leak walls. Ravel's wet-frame beds supply the system, the culture travels under living-cargo rules with lineage and second-habitat records, and the frame keepers' standing complaint is the trade's best advertisement: the mats' one failure mode is being needed faster than they can be grown.
  PROSE

  cue "The kit roll goes over the spraying seam wet-side down, cinches visibly into the leak like a fist closing, and five people watch the weave for the blush."
  cue "In the training room, a rigged wall of practice leaks wears a patchwork of spent gray mats, and an apprentice drills the slap-and-read to a called count."
  affordance "One roll is seal and diagnosis together — a live cinch that holds until the wrights come, and a color verdict on the line's charge delivered faster than any gauge can be fetched."
  pressure "The silk holds and reports, and the report obligates: a blue blush reclassifies the repair on the spot, and the crew that treats blue silk as a plumbing job is arguing with a material that has already been proven right."
  variation "Ravel's plume-fed beds grow the standard; Tanel and Issel culture hardier lines for cold holds, and kit inspectors can name a roll's bed by the weave."
  variation "Spent mats keep a faint tightening reflex, and the training rooms use them for drill walls — while hab children, to every quartermaster's resignation, prize them as the material for a toy that grips a finger."
end
