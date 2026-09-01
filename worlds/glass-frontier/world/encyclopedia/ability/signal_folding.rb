encyclopedia :signal_folding do
  name "Signal Folding"
  summary "Signal Folding is a focused spell that compresses one short spoken message into a resonance burst able to cross a damaged relay line and unfold through a trained receiver."
  kind :ability
  subkind :resonant_effect
  status :complete
  log "2026-08-31 — Recast Signal Folding as one focused-tier spell carrying one measured message; the former narrow variant was a stronger version of the same entry rather than a separate spell."
  topics :"signal-freq", :resonance, :danger, :training
  prevalence :uncommon
  appears_when all: { place: [:damaged_signal] }
  tier :focused
  effect "Compress one spoken message of no more than forty measured words into a resonance burst that survives one damaged or tide-flooded relay line"
  limits "A trained folder must work at the line-point and a trained receiver must unfold the burst at the far end; excess words arrive torn, and the spell carries wording more reliably than voice or tone"
  consequence "One fold causes several hours of sharp fatigue and hand tremor; certified services permit no more than two castings in one shift"

  descriptive_identity(
    signs: "The folder speaks the message once, flat and metered, into cupped hands held " \
           "against the line-point — then a single hard pulse goes out, felt in the floor, " \
           "and the folder straightens with the drained look the trade calls paying the " \
           "postage."
  )

  prose <<~PROSE
    When the lines are broken and the tide is high, the words still have to cross, and folding is how they do it. A signal folder speaks one measured message — flat, metered, in the trade's clipped convention — into cupped hands held against the line-point. The spell compresses it into a single dense burst that punches through line damage and band flood. At the receiving end a trained ear unfolds the burst against the same convention, and the message steps out creased: tone flattened, voice largely lost, words intact. The trade's saying gives the priority: the fold keeps the what and pays the who.

    The ability earned its standing in the Famine, when folded bursts were the last coherent traffic on lines otherwise given over to noise, and the relay services have kept it drilled ever since as the layer under the layer — beneath the scheduled traffic, beneath the tide tables, the knowledge that a certified folder at each end of a dead line constitutes a working line for anything that matters enough. The economy is unsentimental. A fold spends its folder like a hard climb, forty measured words is the clean ceiling, and the standard-compression books — whole operational vocabularies pressed into codeword phrases — exist so that the message worth a folder's afternoon says everything it must inside the count.
  PROSE

end
