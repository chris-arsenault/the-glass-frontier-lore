artifact :third_window do
  name "Third Window"
  summary "Third Window is a fitted Ratter hood maintained by Clarisant and assigned to crews tracking the Empty Bearing. A dark patch in its third inspection window marks the stillwater compartment replaced after the latest retreat."
  subkind :machine
  type_of :hood
  function "Masks the active resonance perception of its fitted Tuner"
  status :complete
  tags :resonance, :salvage, :danger, :orbital, :training
  prominence :recognized

  descriptive_identity(
    appearance: "Three curved arms cross the shoulders and pass behind the head, each carrying a narrow ringglass " \
                "strip above stillwater. The third dark window bears a Clarisant replacement mark.",
    handling: "The frame is fitted to one Tuner's resting response. A partner holds the retreat line and opens the " \
              "arms one at a time when their unequal taps begin falling into step.",
    risks: "On a borrower the fitted damping can make attention more regular instead of less visible. A failed " \
           "stillwater compartment feels comfortable while its coverage collapses."
  )

  prose <<~PROSE
    *Third Window* belongs to a Deep-running Ratter crew and returns to Clarisant after every use. Its matched ringglass strips and stillwater compartments hide the small field changes made by one fitted Tuner's active perception. They do not conceal a drive, an instrument sweep, or a path a hushmaw has already fixed.

    The crew used the hood on a retreat course after #{ref :empty_bearing, "the Empty Bearing"} appeared across the Pell routes. The third compartment came back underweight and was replaced as part of a matched set. The old inspection window remains on the arm so a borrower can see which failure changed the frame.
  PROSE

  gm_note :appears, "Third Window is licensed, fitted, and usually assigned elsewhere; getting it quickly means borrowing a frame tuned to another person's resting response."
  gm_note :triggered_by, "When the three shoulder taps fall into step, the hood is following an external pattern and the partner on the line must open it."
  gm_note :complicates, "The wearer cannot actively check whether the danger passed without producing the perception change the hood was fitted to conceal."
end

relate :rel_clarisant_maintains_hood, :maintains, :clarisant, :third_window do
  prose "Clarisant fits, tests, and services Third Window between Deep runs."
end
