encyclopedia :keepers_breath do
  name "Keeper's Breath"
  summary "Keeper's Breath is the salvage discipline of breathing in the recorded elven cadence — the slow, evenly weighted rhythm that glasswurm colonies were bred to read as their keepers' presence — so a crew can work beside a sound-sensitive colony that files them under caretaker and sleeps on. Learned from abandonment-site recordings, drilled with a counting partner, and held for a whole shift."
  kind :ability
  subkind :technique
  status :complete
  log "2026-08-31 — Renamed Quiet Breath to Keeper's Breath; the name preserves the colonies' learned recognition of the cadence as a keeper's presence."
  topics :salvage, :training, :"ring-era", :ecology
  prevalence :uncommon
  appears_when all: { place: [:debris_field] }
  function "Lets salvage crews work inside glasswurm hearing by matching the elven breathing cadence the colonies accept as a keeper's — the wurms stay settled, and the cutting can proceed"

  descriptive_identity(
    signs: "The crew's breathing audibly synchronizes into the long, evenly " \
           "weighted elven rhythm — slower than rest, steady as a metronome — " \
           "and their work re-times itself around it: cuts on the exhale, tools " \
           "passed on the pause, the whole shift moving to one cadence.",
    effect: "A colony inside hearing files the cadence as keeper's presence and " \
            "stays settled — feeding hairs out, glass throats open — while the " \
            "crew works; a practiced team holds the breath through a full shift " \
            "of cutting beside the most sound-sensitive fauna the debris fields " \
            "hold.",
    limits: "The cadence collapses under exertion, startle, and speech — so quiet-" \
            "breath work is planned slow, signed by hand, and paced by a tender " \
            "who watches the crew's chests rather than the wurms, because the " \
            "wurms react to the cadence's break and the break shows in the " \
            "breathing first."
  )

  prose <<~PROSE
    Glasswurm colonies hear breath. The ring's maintenance fauna were bred to their keepers — a colony reads the breathing around it, files the #{encyclopedia_ref :elves, "elves'"} slow, evenly weighted cadence as caretaker's presence, and treats every other rhythm as weather to close up against — and the colonies that survived the Glassfall kept the standard. During the Famine, a salvager isolated that cadence in abandonment-site recordings and taught a stalled crew to reproduce it outside a wurm-seeded wreck. The colony opened. Deep-field crews now learn the long rhythm against those recordings, hold it with a counting partner, and certify before live colonies at yard schools.

    Working practice re-times a crew around the cadence. Cuts land on the exhale, tools pass on the pause, speech gives way to hand signs, and the shift is paced by a tender who watches chests rather than wurms. Exertion, startle, and talk break the rhythm, and a colony that hears the change closes quickly enough to trap tools or a cutter inside the wreck. Sickroom trades also use a softened cadence to settle #{encyclopedia_ref :resonance_lichen, "sensitive cultures"}, while deep-field schools teach the breath as general composure training.
  PROSE

  cue "The crew pauses at the wreck's mouth, breathing settles into one slow shared rhythm, and the glass throats along the bulkhead stay open as the cutters move in — filed, for the shift, under caretaker."
  cue "The tender's eyes stay on the crew's chests, a hand sign paces the youngest cutter's rising rhythm back down, and the colony three spans away goes on feeding."
  affordance "The cadence opens the wurm-seeded wrecks — the richest and most defended salvage in the fields — to ordinary crews with drilled breath, and doubles as the deep trades' composure training."
  pressure "Exertion, startle, and speech break the cadence. Quiet-breath crews work slowly under hand signs, with a tender watching their breathing and halting the cut before a glasswurm colony closes."
  variation "Yard schools certify teams against live colonies, examiners included; independent crews learn partner-drilled from the recordings, and the two styles argue about tempo in the field kitchens."
  variation "Sickroom workers use a softer form of the cadence around sensitive cultures and patients, paced for rest rather than a salvage shift."
end
