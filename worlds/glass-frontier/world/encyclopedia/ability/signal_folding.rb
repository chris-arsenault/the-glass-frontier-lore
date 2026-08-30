encyclopedia :signal_folding do
  name "Signal Folding"
  summary "Signal Folding is the effect that compresses a spoken message into a dense resonance burst able to cross damaged relay lines — the words folded small, thrown hard, and unfolded by trained ears at the far end. It carried the Famine's last coherent traffic, and the relay trades keep it drilled."
  kind :ability
  subkind :resonant_effect
  status :complete
  topics :"signal-freq", :resonance, :danger, :training
  prevalence :uncommon
  appears_when all: { place: [:damaged_signal] }
  function "Folds spoken messages into resonance bursts that survive broken or drowned relay lines"

  descriptive_identity(
    signs: "The folder speaks the message once, flat and metered, into cupped hands held " \
           "against the line-point — then a single hard pulse goes out, felt in the floor, " \
           "and the folder straightens with the drained look the trade calls paying the " \
           "postage.",
    effect: "The fold compresses a spoken passage into one dense burst that punches through " \
            "line damage and tide flood alike; at the far end a trained receiver unfolds it " \
            "against the same convention, recovering the words creased and flattened in " \
            "tone. The message arrives; the voice largely does.",
    limits: "Folding spends the folder — a burst costs hours of the sharp-edged fatigue the " \
            "trade schedules around — and the fold's economy is brutal: a message over " \
            "forty measured words folds ragged, so the relay trades keep books of standard " \
            "compressions and folders learn terseness as a safety discipline."
  )

  tier :focused,
       effect: "Compress a spoken warning of a few dozen words into a resonance burst that survives damaged relay lines and tide flood",
       cost: "Hours of sharp-edged fatigue the trade calls paying the postage; two folds in a shift is the certified ceiling"
  tier :narrow,
       effect: "Fold a longer passage with its tone partly intact, or thread a burst down a specific line among many",
       cost: "A day's recovery and the tremor that certified folders log honestly, since a shaking fold arrives torn"

  prose <<~PROSE
    When the lines are broken and the tide is high, the words still have to cross, and folding is how they do it. A signal folder speaks the message once — flat, metered, in the trade's clipped convention — into cupped hands held against the line-point, and the ability does the violent arithmetic: the whole spoken passage compressed into a single dense burst that punches through line damage, band flood, and distance that would shred ordinary transmission. At the receiving end a trained ear unfolds the burst against the same convention, and the message steps out creased — tone flattened, voice largely lost, words intact. The trade's saying gives the trade's whole priorities: the fold keeps the what and pays the who.

    The ability earned its standing in the Famine, when folded bursts were the last coherent traffic on lines otherwise given over to noise, and the relay services have kept it drilled ever since as the layer under the layer — beneath the scheduled traffic, beneath the tide tables, the knowledge that a certified folder at each end of a dead line constitutes a working line for anything that matters enough. The economy is unsentimental. A fold spends its folder like a hard climb, forty measured words is the clean ceiling, and the standard-compression books — whole operational vocabularies pressed into codeword phrases — exist so that the message worth a folder's afternoon says everything it must inside the count.
  PROSE

  cue "The operator speaks a metered string into cupped hands against the line-point, the floor thumps once like a struck drum, and the room's gauges jump together and settle."
  cue "The received burst unfolds through the duty ear's moving lips into flat, creased words on a slate, and the room reads over their shoulder before the last line lands."
  affordance "Two certified folders make any dead line a working one for traffic that matters — the cordon warning, the medical call, the words that cannot wait for the ebb — at a cost the trade prices openly in folder-hours."
  pressure "The fold spends the folder and rations the words, so every folded message is triage twice over — what is worth a folder's afternoon, and what fits in forty words — and the compression books exist because emergencies write badly."
  variation "Relay services post certified folders at the route's dead spans and drill the standard compressions seasonally; independent folders work the deep routes freelance, and their personal compression books are guarded like route charts."
  variation "Receiving is its own certification — unfolding a ragged burst is compared to reading a letter that has been through water — and the great receiving ears develop reputations for recovering tone that the folding side privately doubts."
end
