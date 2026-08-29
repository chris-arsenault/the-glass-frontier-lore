artifact :blue_core_stillweights do
  name "The Blue-Core Stillweights"
  summary "The Blue-Core Stillweights are the recalled clamps fitted with replacement cores cut from one divided ringglass lot. Counterweight and Blue Step Works retain the traced machines while ground-off examples continue appearing in independent yards."
  subkind :machine
  type_of :stillweight
  function "Holds a contacted object against local movement through a recalled blue-backed structural core"
  status :complete
  tags :resonance, :"structural-freq", :salvage, :danger, :rebuilding
  prominence :recognized

  descriptive_identity(
    appearance: "Squat three-footed clamps with blue-backed ringglass cores and lot plates beside the hand wheel. " \
                "Traced examples retain their plates; untraced machines show fresh grinding around the same screws.",
    handling: "Counterweight opens every core before testing it against an isolated load. The machine is released " \
              "only after ordinary supports carry the held object.",
    risks: "The divided core can answer two structural tones under changing load, leaving each fragment anchored to " \
           "a different mass and the casing forced between them."
  )

  prose <<~PROSE
    The blue-backed cores were cut from one apparently uniform ringglass lot. Later tests found two overlapping structural responses. One stillweight tore itself apart during road work; another pulled a cargo rail sideways before its operator released it.

    #{ref :counterweight, "The Counterweight"} published the lot marks and moved traced machines to #{ref :blue_step_works, "Blue Step Works"} for inspection. The recalled clamps include road-rig equipment and machines used to hold loose stock during remote cuts. Several examples with ground-off plates remain unaccounted for.
  PROSE

  gm_note :appears, "A blue-backed core or a ground-off lot plate ends a secondhand sale and starts a comparison with Counterweight's recall list."
  gm_note :triggered_by, "Opening a traced machine under changing load makes the two responses visible only after each fragment has chosen a different anchor."
  gm_note :complicates, "The missing machines are ordinary working clamps until their load changes, so every yard using one has reason to conceal its plate."
end

relate :rel_counterweight_possesses_stillweight, :possesses, :counterweight, :blue_core_stillweights do
  prose "Counterweight retains the traced Blue-Core Stillweights and publishes their lot marks."
end
relate :rel_stillweight_resonates_counterweight_rig, :resonates_with, :blue_core_stillweights, :counterweight_road_rig do
  prose "The recalled batch includes clamps packed with Counterweight road-rig equipment."
end
