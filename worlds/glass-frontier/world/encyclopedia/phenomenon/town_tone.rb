encyclopedia :town_tone do
  name "Town Tone"
  aka "the tone"
  summary "Town tone is the settled hum every inhabited place develops — the stable signature its machinery, water, footfall, and voices braid into the local band. Carriers name settlements by tone from beyond visual range, and a town whose tone changes has news whether it knows it yet or not."
  kind :phenomenon
  subkind :physical_phenomenon
  status :complete
  topics :resonance, :"social-structure", :navigation
  prevalence :common
  appears_when any: { place: [:urban, :sealed_hab] }
  medium "The structural band of any continuously inhabited place"
  nature "A stable composite signature braided from a settlement's machinery, water, traffic, and living rhythm"
  function "Read for recognition and diagnosis: pilots identify towns by tone, and residents register change in their own tone before naming what changed"

  descriptive_identity(
    signs: "Under every settlement's noise sits its tone — the braided hum a visitor hears for " \
           "a day and a resident hears again only when it changes. Approach instruments draw " \
           "it as a signature stable enough to file, and pilots name towns off the trace at " \
           "range.",
    effects: "The tone is recognition: carriers make landfall on it, homesick songs quote it, " \
             "and a hab's children raised in it sleep badly their first week anywhere else.",
    hazards: "A changed tone identifies movement somewhere in the braid without locating it, " \
             "and towns have torn up sound streets hunting " \
             "a shifted note that turned out to be a new mill two galleries over."
  )

  prose <<~PROSE
    Every inhabited place hums, and the hum settles. A settlement's machinery, water, footfall, market roar, and breathing braid into the structural band as a composite signature — the town tone — and continuous habitation steadies it the way constant weight seats a foundation. The tone is as identifying as a skyline. Route pilots name towns off the approach trace from beyond visual range, carriers' charts file tone signatures beside berth diagrams, and the old test of a homesick hab-worlder is that they can hum their settlement's tone on request and grow quiet doing it.

    Residents live inside their tone and notice changes. A new mill entering the braid, a district emptied by festival, or a great machine easing toward failure moves the tone before a specific report reaches the ward hall. #{encyclopedia_ref :minder, "Minders"} log their machines against it as a baseline, and wardens keep a shifted tone open on the board until survey crews locate the changed strand. The tone gives early warning across the settlement, but its composite signal does not identify which machine, watercourse, or pattern of traffic moved.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Signatures, Homesickness, and the Grown Tone"
    Tones are compared the way naming registers are compared. Sibling settlements founded from one parent hab carry audibly related tones for generations, survey programs collect signatures the way archives collect dialect recordings, and the drift of a tone across decades is a settlement's slow autobiography — Sithari's current tone and its Rekindling-era recordings differ the way a man differs from his boyhood portrait, and the archive keeps both.

    The tone's grip on its people is proverbial. Hab children sleep badly their first week under a foreign tone; travelers describe the first hearing of home's braid from the approach as the arrival, with the docking a formality; and the settled custom of tone-quoting — work songs and lullabies built on the home tone's intervals — gives every settlement a music recognizably its own. New settlements wait for theirs. A founded town's braid takes years to settle, its people describe the interim as living somewhere that hasn't decided anything yet, and the night the tone is first heard steady is, in more than one young settlement's short history, the founding actually celebrated.
  PROSE

  cue "The approach trace steadies into a braided signature, and the pilot names the town off it with the chart still folded."
  cue "Across the tavern, three residents lift their heads in the same moment and one says 'the tone' — and the room begins naming candidates before the warden's board posts anything."
  affordance "The tone is free recognition and free early warning at once: pilots make landfall on it, wardens read change in it ahead of every specific report, and minders baseline their machines against it."
  pressure "A shifted tone starts a survey across machinery, water, and traffic; crews compare local readings with the baseline before opening walls or stopping a district's equipment."
  variation "Sibling settlements founded from one hab carry related tones for generations, and survey collections group them into families the way philologists group dialects."
  variation "Young settlements wait years for their braid to settle, and several celebrate the night the tone first held steady as the true founding, whatever the charter says."
end
