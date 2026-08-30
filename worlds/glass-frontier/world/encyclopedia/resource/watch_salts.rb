encyclopedia :watch_salts do
  name "Watch Salts"
  aka "salts"
  summary "Watch salts are the sharp-smelling wake-up standard of the system's kits: a pressed mineral tablet crushed under the nose to cut through cold, exhaustion, and lender's shakes for one clear hour. Every watch post, route chest, and midwife's bag carries them, mixed to the old evacuation formula."
  kind :resource
  subkind :medicine
  status :complete
  topics :household, :danger, :"ring-era", :trade
  prevalence :common
  available_globally
  function "Restores alertness and steadiness for about an hour; the standard against cold-watch drowse, post-lend shakes, and the last leg of long work"
  grades "Full-cut for emergencies, half-cut for watch rotation, and the mild household press sold loose at any counter"
  availability "Mixed by apothecaries and route provisioners everywhere from a formula in the public pharmacopoeia; common mineral stock and food-law price controls keep the tablets cheap"

  descriptive_identity(
    appearance: "A pressed gray-white tablet the size of a thumbnail, scored for halving, carried " \
                "in flat tins stamped with the mixer's mark. The smell off a crushed tablet is a " \
                "slap: mineral, sharp, and gone in a minute.",
    working: "Crushed between the fingers and held under the nose for three breaths. The head " \
             "clears in the time it takes to blink twice, hands settle, and the hour that " \
             "follows is level, wakeful, and billable.",
    risks: "The hour ends on schedule and the debt behind it stands: salts spend rest, and " \
           "watch discipline everywhere caps the run at two tablets before sleep becomes an " \
           "order rather than an option."
  )

  prose <<~PROSE
    The kit that held the #{encyclopedia_ref :ration_lamp, "ration lamp"} held a flat tin beside it, and the tin's descendants are in every working pocket in the system. Watch salts are a pressed mineral tablet, thumbnail-sized and scored for halving: crushed between the fingers and held under the nose, the smell cuts through cold-watch drowse, the third shift of a flood emergency, or a lender's post-lend shakes, and buys one level, wakeful hour. The formula rode in the ring's evacuation stores and passed into the public pharmacopoeia during the Rekindling — a deliberate act, recorded with its reasoning, by custodians who wanted the wake-up standard everywhere and cheap forever — and apothecaries everywhere mix to it, stamping their tins with a mixer's mark the way roperies mark line.

    The trades built their rotation customs around the hour. Cordon watches run half-cut tablets on the turn, cold-route crews issue tins with the manifest, midwives and lenders keep full-cut for the long nights, and the phrase 'a two-salt night' does duty across the system for any stretch of work that earned its exhaustion honestly. The tablet's limits are as standardized as its virtues: the hour ends on schedule, the spent rest stands as debt, and watch discipline everywhere caps the run at two before sleep stops being a suggestion.
  PROSE

  prose <<~PROSE, section: :trade, heading: "Mixers, Marks, and the Boring Price"
    Keeping salts boring is settled policy. The minerals are common, the pharmacopoeia formula is public, and the registries prosecute corner-cutting mixers under food law rather than trade law — a decision old enough that its reasoning survives as proverb: the tin that fails is the watch that fails. Mixer's marks carry reputations the way ropery marks do, and districts develop loyalties; a Keelward dock tin and a Kyther valley tin hold the same formula and different presses, and crews swear by the crumb of their own.

    The household press, milder and sold loose at any counter, does the civilian work: market mornings, harvest weeks, the first watch of a new parent. Custom gives salts as small serious gifts — a tin in a traveler's pack, a tin at a birth — and an empty tin kept in a pocket is the system's quiet badge for a hard stretch survived, refilled by friends who notice.
  PROSE

  cue "The watch turns over at the cold hour: the incoming stander crushes a half-tablet under their nose, breathes three times, and takes the rail with settled hands."
  cue "A flat tin with a mixer's mark passes across the counter as change for a favor, and both parties treat the exchange as fully legible."
  affordance "One tablet is a level hour on demand — the difference between a manned watch and an empty one, a steady lender and a second casualty — and the public formula means the tin in a stranger's pocket is the same medicine as the tin in yours."
  pressure "Each tablet postpones rest for one hour, and crews enforce a two-salt cap. A stander preparing a third is relieved on the spot and sent to sleep."
  variation "Cordon and route trades issue half-cut tins on the manifest and log usage; households buy the mild press loose and spend it on harvests, births, and market mornings."
  variation "Mixer loyalties run deep enough that crews trade tins on routes the way they trade news, and a district's favorite press is defended with the seriousness elsewhere reserved for bread."
end
