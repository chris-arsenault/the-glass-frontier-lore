encyclopedia :white_signal_practice do
  name "Pipe, Glass, Cloth"
  summary "Pipe, Glass, Cloth tests damaged messages by repeating each doubtful word through three different carrying materials. Relay posts accept the word when all three deliveries agree and mark a gap when they do not."
  kind :ability
  subkind :verification_method
  status :complete
  log "2026-08-31 — Renamed Verification to Pipe, Glass, Cloth; the three bench materials name the practice in the order every operator works them."
  topics :"signal-freq", :archives, :training
  prevalence :uncommon
  appears_when all: { place: [:damaged_signal] }
  function "Verifies damaged message content — each doubtful word repeated through three carrying materials in sequence, accepted as stable only when all three deliver it identically"

  descriptive_identity(
    signs: "The verification bench with its three stations — the pipe run, " \
           "the glass rod, the cloth frame — and the operator working a " \
           "doubtful word through each in turn, logging the three deliveries " \
           "side by side before the verdict column.",
    effect: "A stable word survives every carrier while material-specific " \
            "corruption changes at the next station. Three crossings through " \
            "different materials " \
            "sort signal from artifact with a reliability the dead-band " \
            "courts accept as evidence.",
    limits: "The bench tests one word at a time and returns accepted text with " \
            "marked gaps. Similar drift across its three materials can create " \
            "false agreement, so known texts are used for regular checks."
  )

  prose <<~PROSE
    Broken signal bands can clip, grow, or smear a word while leaving it plausible. White signal benches compare how that word crosses three different carriers: a pipe run for knocking-talk, a glass rod for the band fragment, and #{encyclopedia_ref :white_signal_cloth, "Fold"} for the crease. The operator repeats the doubtful word through each station and records the three deliveries side by side. Matching columns enter the verified text; a disagreement becomes a marked gap.

    The practice takes its name from the white cloth used at the third station of the early benches. Relay posts train operators on all three carriers, and courts, registries, and counting houses accept the resulting text and gaps as verified evidence. Each bench runs known texts on a calendar to ensure that its materials still distort signal differently. A field kit uses pipe and cloth for provisional two-crossing triage; archive recovery floors add two more carriers when damaged material demands a higher threshold.
  PROSE

  cue "The doubtful word goes through pipe, glass, and cloth in turn — three deliveries logged side by side — and comes up different at the glass: struck, gap marked, the road's contribution removed from the record."
  cue "The court accepts the bench's verified text — accepted words and marked gaps — and excludes every disputed word from the record."
  affordance "A staffed bench turns damaged traffic into court-accepted text with stable words and explicit gaps."
  pressure "Similar drift across the bench materials produces false agreement, so posts test each station against known text and audit the check calendar with their books."
  variation "Relay posts run the standard three-station bench; the archives' recovery floors run five-station variants for the worst material; and field kits pair pipe and cloth for two-crossing triage that marks its own verdicts provisional."
  variation "Bench materials vary by what a post can keep physically distinct; coast benches commonly use water-line, glass, and cloth."
end
