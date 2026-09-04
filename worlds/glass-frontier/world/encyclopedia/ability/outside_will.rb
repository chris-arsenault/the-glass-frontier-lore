encyclopedia :outside_will do
  name "Outside Will"
  summary "Outside Will imposes a comprehensible command on minds, machines, or constructed servants and holds them to its exact terms."
  kind :ability
  subkind :resonant_effect
  status :complete
  log "2026-08-31 — Renamed Dominion to Outside Will; the Three Forms term names the power as Will imposed from beyond a subject's own Form rather than by its audible symptom."
  log "2026-08-31 — Kept one broad-tier spell for one immediate command. The former focused and narrow rows added subjects, duration, and standing authority without changing the operation; collective command remains the Red Sovereign mantle's work."
  topics :resonance, :governance, :military, :danger
  prevalence :rare
  available_globally

  tier :broad
  effect "Compel one person, creature, or machine that receives and understands the words to perform one immediate, physically possible action"
  limits "The spell supplies neither knowledge nor skill, cannot establish a standing order, and follows the subject's literal understanding rather than the practitioner's unspoken intent"
  consequence "One recent autobiographical memory becomes inaccessible until the action ends; if the subject resists the command, that memory does not return"

  descriptive_identity(
    signs: "Speech acquires a second tone, machine lights align to the speaker's pulse, and the commanded subject repeats the operative words before acting."
  )

  prose <<~PROSE
    Three Forms teaching calls the spell *Outside Will*: Will imposed from beyond a subject's own Form. One person, creature, or machine receives one command to perform one immediate act. The command must be heard or otherwise received, understood, and physically possible. It can stop a hand in mid-strike, turn one mounted weapon, or make a constructed servant open the place it guards.

    Outside Will provides obedience rather than competence. A subject ordered to fly a vessel cannot do so without the relevant skill. A machine ordered to identify a liar cannot answer unless it has a way to make that judgment. The spell cannot wait as policy or standing instruction: when the immediate act ends, so does the command.
  PROSE
  prose <<~PROSE, section: :limits, heading: "The Price of Authority"
    Casting Outside Will closes one recent autobiographical memory to the practitioner: the last meal, a route walked that morning, the reason a tool was in hand. The memory returns when the compelled act ends unless the subject resisted. Resistance makes the absence permanent even when the command succeeds.

    #{ref :red_sovereign, "The Red Sovereign"} extends Outside Will into standing and collective command, with a cost that follows the betrayals it compels.
  PROSE
end
