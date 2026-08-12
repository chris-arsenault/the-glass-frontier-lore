resource :implant_decoys do
  name "Implant Decoys"
  subkind :device
  tags :resistance, :medicine, :surveillance, :identity
  prominence :recognized
  function "Keeps a neural implant reporting a plausible patient while its wearer acts outside the reported state"
  interface "Modified firmware, synthetic receptors and peripheral devices alter commands and supply false readings"
  adoption "Built in Dead County workshops for people who must remain legible to a coalition advocate"
  control "The decoy changes the implant's local signals while the distant advocate continues treating the simulated patient"
  operating_limit "False readings must age, vary by season and decline consistently with the wearer's existing history"

  prose <<~PROSE
    Modified firmware, synthetic receptors and small peripheral devices that keep a #{ref :neural_implants, "neural implant"} reporting a plausible patient while its wearer does something else. One device changes a stimulation command before it reaches the brain. Another supplies false blood chemistry or movement. Together they can show SUBJECT CALM / COMPLIANT / RESTING while the wearer drives an armoured truck across Nebraska.

    The most durable decoys give the advocate a complete simulated patient. The advocate adjusts that person's medicine, sleep and work for years while the wearer lives elsewhere inside the same body.
  PROSE

  prose <<~PROSE, section: :limits, heading: "A Plausible History"
    An advocate compares each new reading with the history it already holds, and #{ref :mercy, "Mercy"} sends a clinician when that history changes without explanation. False readings therefore have to age with the body, carry the seasonal drift already in the archive and decline at a believable rate. Perfect health attracts attention faster than mild, consistent illness.

    #{ref :substitute_drugs, "Substitute drugs"} do the same work chemically, preserving the expected blood trace while changing the effect on the brain. A person with no record for comparison has a different freedom and danger; the #{ref :the_unpersons, "Unpersons"} live with both.
  PROSE
end
