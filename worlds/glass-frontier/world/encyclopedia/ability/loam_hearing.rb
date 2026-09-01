encyclopedia :loam_hearing do
  name "Loam Hearing"
  summary "Loam hearing is an innate tactile sensitivity that reads the maintenance pulses of elven-engineered growing medium through bare fingertips — root damage, rot pockets, and dry veins announced as faint beats against the skin. The elves built the loam to report; some human hands turn out to be receivers."
  kind :ability
  subkind :innate_sensitivity
  status :complete
  log "2026-08-31 — Removed the broad tier. Loam Hearing is an innate sensitivity, not a resonant spell."
  topics :ecology, :"ring-era", :training
  prevalence :uncommon
  appears_when all: { place: [:garden] }

  descriptive_identity(
    signs: "The hearer kneels and lays both bare hands flat in the bed, fingers " \
           "spread and still, with the listening face gardeners learn to leave " \
           "undisturbed; a reading of a long bed moves hand-width by hand-width " \
           "down the row.",
    effect: "The loam's pulses arrive as faint beats against the fingertips, each " \
            "kind distinct — the quick stutter of cut root, the slow soft beat of " \
            "rot, the silence-bordered flutter of a dry vein — and a practiced " \
            "hearer maps a bed's troubles to the hand-width before a spade moves.",
    limits: "The sense reads engineered loam and reads it shallow — an arm's depth " \
            "at best — and it reports the medium's complaints, so the hearer's " \
            "craft is garden diagnosis built on top of it: the loam says where and " \
            "how urgent, and the grower still has to say what and why."
  )

  prose <<~PROSE
    The #{encyclopedia_ref :elves, "elves"} engineered their growing medium to report. Hab garden loam — the dark, faintly warm substrate that fills terrace beds and grow galleries with ring-era plumbing — signals its own condition in fine rhythmic pulses, a maintenance channel their tending instruments once read continuously. The instruments are mostly gone. The channel still transmits. In some people, bare fingertips laid flat and still in the medium pick up the pulses as faint beats against the skin, each complaint with its own signature: the quick stutter of cut root, the slow soft beat of rot, the silence-bordered flutter of a dry vein under healthy surface. The sensitivity appears untaught, runs in families like an ear for pitch, and is usually discovered when a young garden helper stops repeatedly over ground that later proves sick.

    The working practice is diagnosis by hand. A hearer reads a long bed hand-width by hand-width, kneeling and still, and marks the trouble spots for the spade; growers with a hearer in the family open beds surgically where general practice digs exploratory trenches, and the big terrace cooperatives keep a hearer on rounds the way docks keep a #{encyclopedia_ref :gauger, "gauger"}. The trade's refinement is interpretation — the loam says where and how urgent, and the hearer's education is the garden knowledge that turns a beat into a verdict — and its established second market is the casting trades, whose molders' loam descends from the same engineered stock: a hearer run over a packed mold before the pour finds the void or the damp pocket while it is still a correction, and the foundry rate for an afternoon of that is a byword among gardeners for the day the hands earn more than the harvest.
  PROSE

  cue "The hearer kneels at the terrace bed, lays both bare hands flat in the loam with the listening face, and after a still moment marks two spots with pegs — cut root here, quick stutter; something slower and softer there."
  cue "Before the pour, the foundry's visiting hearer walks fingertips across the packed mold loam section by section and stops at one span: a damp pocket, still a correction rather than a casting flaw."
  affordance "A hearer turns bed maintenance from excavation into surgery — troubles mapped to the hand-width before a spade moves — and the same fingers audit molders' loam, sickbed planters, and any engineered medium with a complaint to make."
  pressure "The loam supplies location and urgency while the hearer supplies the diagnosis; gardens keep both parts of the call until the bed is opened or the season confirms it."
  variation "Garden hearers work rounds for terrace cooperatives and family plots; the foundry circuit pays day rates for pre-pour mold readings, and a few hearers work it full time."
  variation "Sensitivity varies hand to hand — most hearers read the three common complaints, and the fine ears that can feel a seedling's roots take on transplant work the cooperatives book a season ahead."
end
