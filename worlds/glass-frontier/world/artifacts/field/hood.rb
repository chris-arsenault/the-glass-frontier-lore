artifact :hood do
  name "Hood"
  summary "A hood is a wearable damping machine that conceals the resonance changes produced by a Tuner's active perception. Deep-runners use its ringglass and stillwater frame where Tuning would draw a blank or disturb a sensitive field."
  subkind :machine
  function "Masks the small resonance changes produced by a Tuner's active perception"
  status :complete
  tags :resonance, :salvage, :danger, :orbital, :training
  prominence :recognized

  descriptive_identity(
    appearance:
      "Three curved arms across the shoulders and behind the head, each " \
      "holding a narrow ringglass strip above a stillwater layer, with " \
      "dark windows on the arms where bubbles show as the medium takes " \
      "signal. A genuine rig carries service weights; the imitations in " \
      "Glasswake carry fresh paint and none.",
    handling:
      "The frame is fitted to one wearer's resting response — another " \
      "operator matches the three strips while the Tuner sits without " \
      "practicing — and once closed it swallows the small changes their " \
      "attention would place into local resonance. The wearer keeps " \
      "ordinary senses, reads the rig only through soft unequal taps in " \
      "the shoulder pads, and a partner holds the line and decides when " \
      "the arms open, one at a time.",
    risks:
      "Taps falling into step mean the frame is following an external " \
      "pattern and must be opened; three dark windows mean it is near " \
      "release. On a borrower the fitted damping can make the signal " \
      "more regular instead of less visible, damaged compartments fail " \
      "by feeling more comfortable, and the hood hides nothing else — " \
      "not a drive, a sweep, or the path a blank has already fixed.",
  )

  prose <<~PROSE
    A hood is a wearable dampening frame used when active Tuning would draw a #{ref :blank, "blank"} or disturb a sensitive field. Three curved arms sit across the shoulders and behind the head. Each holds a narrow strip of ringglass above a layer of stillwater. When closed around a prepared wearer, the strips absorb the small organized changes their attention would otherwise place into local resonance.

    Deep-runners describe the effect as going under cloth. Ordinary sight, sound, balance, and touch remain. Resonance perception collapses into an even pressure without direction or detail. The wearer cannot reach through the rig to check whether the danger has passed.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "Closing the Frame"
    The hood must learn the wearer's resting response before use. The Tuner sits without practicing while another operator adjusts the three strips until their returns match. Once the frame closes, it damps changes around that baseline. A hood prepared for one person gives poor cover to another and can make the second wearer's signal more regular instead of less visible.

    Each arm moves independently. Small mechanical governors keep them from settling into one repeated correction. The wearer hears the movement through the shoulder pads as soft unequal taps. When the taps synchronize, the rig has begun following an external pattern and must be opened.

    Stillwater warms as it takes the signal. Dark windows on the arms show bubbles forming in the medium. One active window is normal. Three dark windows mean the frame is near release and the wearer should already be moving toward cover.
  PROSE

  prose <<~PROSE, section: :operations, heading: "The Blind Interval"
    A crew prepares the retreat before closing a hood. Another person holds the physical line, watches the wearer, and decides when to reopen the frame. A decoy resonator goes out along a different course. The ship stops repeated survey pulses and varies any machine that must remain active.

    The covered Tuner does not test the rig from inside. Reaching for the field presses a stronger signal into the dampers and shortens the useful interval. Training concentrates on ordinary cues: line tension, hand signs, airflow, counted turns, and the movements of the escort.

    Opening happens behind physical cover or after passive observers confirm the predator took the decoy. The operator releases one arm at a time. A sudden return of direction can disorient the wearer, especially after contact with a blank.
  PROSE

  prose <<~PROSE, section: :limits, heading: "What the Hood Cannot Hide"
    A hood covers one person's active perception. It does not mask a kite drive, instrument sweep, transmitted signal, or ringglass tool in the wearer's hands. It also does not erase the path already established by a nearby blank. Closing the frame after contact can make the animal turn toward another active source aboard the same ship.

    Damaged stillwater compartments fail quietly. The hood may feel more comfortable as its coverage collapses. Crews inspect the dark windows, weigh each arm, and compare the mechanical stops before entering the Deep. A cracked strip is replaced as a set because three unmatched pieces can create a clean repeated pulse.

    Cheap imitations often use ordinary damping fluid and powered correction. They reduce instrument noise in a workshop. In the Deep, their shared clock produces exactly the kind of pattern the hood is meant to conceal.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "A Short Supply"
    Reports of one empty bearing across the Pell routes have raised demand for hoods. Licensed frames are being moved from training rooms and research stores into working ships. The limiting part is clean stillwater, which the #{ref :echo_ledger_conclave, "Echo Ledger Conclave"} also needs for records and Bloom cordons.

    Several used rigs now offered in Glasswake carry freshly painted windows and no service weights. Ratter yards have posted a simple refusal: a seller who will not open all three arms for inspection is selling furniture.
  PROSE

  gm_note :appears, "Licensed frames are being pulled out of training rooms and research stores to fill working ships, and clean stillwater is short because the #{ref :echo_ledger_conclave, "Echo Ledger Conclave"} needs the same supply. A crew wanting a hood on short notice is offered someone else's."
  gm_note :triggered_by, "Hoods get lent, because a fitted frame sits idle whenever its own Tuner does not need it. A hood damps changes around the resting response it was fitted to, so on a borrower it can make the signal more regular rather than less visible."
  gm_note :complicates, "A covered Tuner cannot check whether the danger passed, so another crew member holds the line and decides when the arms open. The wearer's one reading is the unequal tapping through the shoulder pads, and taps falling into step mean the frame has begun following something outside."
end

relate :rel_ratters_possess_hood, :possesses, :ratters, :hood do
  prose "Deep-running Ratter crews keep fitted hoods for Tuners working beyond ordinary survey range."
end
relate :rel_clarisant_maintains_hood, :maintains, :clarisant, :hood do
  prose "Clarisant training rooms fit, test, and service frames before a Tuner enters the Deep."
end
relate :rel_hood_depends_stillwater, :depends_on, :hood, :stillwater do
  prose "Small stillwater compartments absorb the wearer's changing resonance response."
end
relate :rel_hood_depends_ringglass, :depends_on, :hood, :ringglass do
  prose "Three matched ringglass strips shape the dampening field around one fitted wearer."
end
