encyclopedia :quiet_breath do
  name "Quiet Breath"
  summary "Quiet breath is the salvage discipline of breathing in the recorded elven cadence — the slow, evenly weighted rhythm that glasswurm colonies were bred to read as their keepers' presence — so a crew can work beside a sound-sensitive colony that files them under caretaker and sleeps on. Learned from abandonment-site recordings, drilled with a counting partner, and held for a whole shift."
  kind :ability
  subkind :technique
  status :complete
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
    Glasswurm colonies hear breath. The ring's maintenance fauna were bred to their keepers — a colony reads the breathing around it, files the #{encyclopedia_ref :elves, "elves'"} slow, evenly weighted cadence as caretaker's presence, and treats every other rhythm as weather to close up against — and the colonies that survived the Glassfall kept the standard. Quiet breath is the salvage trades' answer, and its origin is the debris fields' favorite true story: crews stalled outside rich wurm-seeded wrecks until a Famine-generation salvager, working from breathing audible in the abandonment-site recordings, taught a team to breathe like the keepers the colony was waiting for. The colony opened. The technique has been drilled into the deep-field trades since — the long rhythm learned against recordings, held with a counting partner, certified by the yard schools with the wurms themselves as examiners.

    Working practice re-times a crew around the cadence. Cuts land on the exhale, tools pass on the pause, speech gives way to hand signs, and the shift is paced by a tender who watches chests rather than wurms — exertion, startle, and talk all break the rhythm, the break shows in the breathing first, and a colony that hears its keepers turn back into strangers closes with a speed that has cost the trade hulls. The discipline's reach has grown past its origin the way good techniques do: sickroom trades borrow the cadence to settle #{encyclopedia_ref :breach_lichen, "sensitive cultures"}, the deep-field schools teach it as general composure training, and salvage crews joke, with the flat pride of people whose livelihood is strange, that the elves' most useful surviving instruction is how they breathed while they worked.
  PROSE

  cue "The crew pauses at the wreck's mouth, breathing settles into one slow shared rhythm, and the glass throats along the bulkhead stay open as the cutters move in — filed, for the shift, under caretaker."
  cue "The tender's eyes stay on the crew's chests, a hand sign paces the youngest cutter's rising rhythm back down, and the colony three spans away goes on feeding."
  affordance "The cadence opens the wurm-seeded wrecks — the richest and most defended salvage in the fields — to ordinary crews with drilled breath, and doubles as the deep trades' composure training."
  pressure "The rhythm collapses under exactly the things salvage produces — exertion, startle, the urge to shout — so quiet-breath work trades speed for steadiness, and a crew's certification is really a bet on its worst moment."
  variation "Yard schools certify teams against live colonies, examiners included; independent crews learn partner-drilled from the recordings, and the two styles argue about tempo in the field kitchens."
  variation "The sickroom borrowing — the cadence used to settle sensitive cultures and hard patients — has its own softened form, and nurses trained in it are asked, at parties, to do the breath."
end
