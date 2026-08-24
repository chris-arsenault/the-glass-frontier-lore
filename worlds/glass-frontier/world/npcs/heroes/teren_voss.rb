npc :teren_voss do
  name "Teren Voss"
  subkind :specialist
  occupation "Retired signal-array engineer"
  specialty "Narrow-band conduit alignment"
  species "human"
  culture "Hab-Worlder"
  tags :resonance, :ringglass, :"signal-freq"
  prominence :marginal
  status :complete

  prose <<~PROSE
    The engineer who led #{ref :coremark, "Coremark"}'s #{ref :second_span_trial, "Second Span trial"}. Voss aligned the trial's relay chain, signed the order that abandoned it, and kept copies of the anomalous readings after Coremark closed the project.

    He now repairs municipal signal gear in #{ref :keelward, "Keelward"}. Researchers still bring him conduit proposals. He will inspect them, mark the coupled loads they have overlooked, and refuse any work intended to make a second Span.
  PROSE

  prose <<~PROSE, section: :history, heading: "The Trial Record"
    Voss argued that the aligned anchor chain remained active after the test equipment shut down. Coremark treated the residual readings as an accounting problem and ordered the site stripped. He sent his copies to the #{ref :shear_compact, "Shear Compact"} after the #{ref :the_silent_bloom, "Silent Bloom"}; those records now provide the clearest route by which the first cascade crossed the mid-drift.
  PROSE

  gm_note :triggered_by, "Show Voss a conduit or array design and he marks the coupled loads it has overlooked. If the plan amounts to another Span, he hands the sheets back and refuses the work regardless of who is paying."
  gm_note :appears, "Voss is who Keelward calls when municipal signal gear fails, which puts the man holding the #{ref :second_span_trial, "Second Span trial"} telemetry at an ordinary repair bench. Investigators tracing the first cascade across the mid-drift end up there."
end

relate :rel_teren_voss_located_in_keelward, :located_in, :teren_voss, :keelward do
  prose "Voss lives above a signal-repair shop in #{ref :keelward, "Keelward"}."
end

relate :rel_teren_voss_employed_by_coremark, :employed_by, :teren_voss, :coremark, till: 2357 do
  prose "Coremark employed him through the Second Span trial and dismissed him after he refused to certify the stripped site as inert."
end

relate :rel_teren_voss_cooperates_shear_compact, :cooperates_with, :teren_voss, :shear_compact, since: 2378 do
  prose "He gave the Compact his private copies of the trial telemetry after the Silent Bloom."
end
