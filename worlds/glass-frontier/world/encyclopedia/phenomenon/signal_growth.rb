encyclopedia :signal_growth do
  name "Signal Growth"
  kind :phenomenon
  subkind :physical_phenomenon
  status :complete
  log "2026-08-31 — Renamed Signal Overgrowth to Signal Growth; signal is the established band vocabulary governing the accretion, while growth matches the relay trade's named forms."
  topics :"signal-freq", :resonance, :danger, :mystery
  prevalence :uncommon
  appears_when any: { place: [:damaged_signal, :"ringglass_rich"] }
  summary "Signal growth is residue deposited in relay glass and fittings by repeated traffic through resonant country. Mature crust re-emits pieces of earlier signals into live messages, adding phrases absent from the sender's copy. Relay crews detect it by reconciliation, scour the line on schedule, and transcribe the removed crust before disposal."
  medium "Long-running relay lines through ringglass country and the damaged-signal margins — repeater glass, line fittings, and any resonant fabric that carries the same traffic for years"
  nature "An accretion feedback: carried signal precipitates residue in resonant material, the residue re-emits fragments of what built it into passing traffic, and an unscoured line's messages arrive grown — old phrases, foreign fragments, and compounded echoes braided into live text"
  hazard "Grown messages read as sent — the additions arrive in the message's own voice and band — and an overgrown line corrupts quietly for seasons before a reconciliation catches it"
  known_forms "Echo growth, yesterday's traffic resurfacing in today's; braid growth, two lines' old traffic crossing where their crusts share glass; and deep growth, the old-line accretions that emit fragments matching no traffic the line's records hold"

  descriptive_identity(
    signs: "Reconciliation first — sender's copy and receiver's copy disagree, " \
           "the difference always an addition; then the line walk, where the " \
           "scour crew reads the repeater glass by lamp and finds the crust " \
           "blooming in the old fittings like frost in a window's corners.",
    effects: "Messages arrive grown — a manifest gains three lines of another " \
             "season's cargo, a letter picks up a stranger's closing phrase — " \
             "the additions carried in the traffic's own voice, legible, and " \
             "wrong.",
    hazards: "The corruption compounds — crust breeds crust, growth thickens " \
             "toward babble — and the failure is quiet: an unscoured line " \
             "stays plausible for seasons, which is why the trade trusts " \
             "reconciliation ledgers over ears."
  )

  prose <<~PROSE
    Signal carried repeatedly through repeater glass, line fittings, and other resonant fabric deposits a pale crust. The crust later emits fragments of the traffic that formed it into new signals on the same band and in the same apparent voice. Maintained lines hold too little residue to produce readable additions. On an unscoured line, a manifest may acquire lines from an older cargo, a letter may take a stranger's closing phrase, or a weather bulletin may include freight code from a shared repeater. Operators detect the additions by reconciling sender and receiver copies.

    Every long line has a scour interval set from its traffic volume and the growth measured at its repeaters. Crews inspect the glass by lamp, scrape the fittings, and record the crust depth against the reconciliation ledger. Stations transcribe removed crust before disposal because it can contain recoverable earlier traffic. Deep growth sometimes yields fragments absent from the surviving line records, including dead formats and one string of elven relay grammar recovered from a line built #{elapsed :the_glassfall, approx: true} after the last known elven signal. Reading rooms preserve these as unverified signal fragments; stations disagree whether their source is undocumented traffic, transfer through shared old fabric, or another mechanism.
  PROSE

  cue "The reconciliation clerk lays sender's copy against receiver's and finds the difference — three added lines, another season's cargo, in the manifest's own hand — and the line goes on the scour list before the meeting ends."
  cue "The scour crew walks the repeaters by lamp, finds the crust blooming in the oldest fitting like frost in a window corner, and the night's scraping goes into the jar for the reading room along with everything it might still say."
  affordance "Reconciliation ledgers and crust measurements set reliable scour schedules; transcribed crust can recover earlier traffic and document when contamination began."
  pressure "Additions arrive in the sender's apparent voice and accumulate gradually, so lines without paired copies can remain plausibly wrong for seasons."
  variation "Echo growth resurfaces a line's own traffic; braid growth crosses old traffic between lines sharing glass; deep growth contains fragments not matched to the surviving records."
  variation "Most line rules require transcription before disposal, and reading-room files of recovered traffic support both historical inquiries and insurance disputes."
end
