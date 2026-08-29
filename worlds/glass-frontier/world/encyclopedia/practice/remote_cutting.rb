encyclopedia :remote_cutting do
  name "Remote Cutting"
  summary "Remote cutting is a salvage technique that couples material from an unstable claim to a crewed processing vessel while the workers remain at stand-off range."
  kind :practice
  subkind :technology
  status :draft
  topics :salvage, :resonance, :orbital, :trade, :danger
  prevalence :common
  appears_when all: { place: [:"realm:orbital"] }
  function "Couples material from an unstable claim to a crewed processing vessel at stand-off range"

  prose <<~PROSE
    Remote cutting lets a salvage crew work a claim without bringing its people alongside the target. An unmanned cutter enters the debris mass, fixes itself to a chosen seam, and couples that material to a receiving breach on the crew's #{encyclopedia_ref :claim_rig, "claim rig"}. The crew stays far enough away to survive a collapse, a resonance spike, or the loss of the cutter.

    #{encyclopedia_ref :ratters, "Ratter"} crews developed the method for #{ref :deep_shear, "Deep Shear"} claims that were valuable enough to work and too unstable to board. Crews plan every cut around losing the machine and bringing its operators home.
  PROSE
  prose <<~PROSE, section: :operations, heading: "A Remote Cut"
    A cutter carries an anchor head, a compact resonance array, and little else. Once it reaches the target, the crew sounds the seam in several narrow bands. A #{encyclopedia_ref :tuners, "Tuner"} selects the response that separates the desired material from the surrounding mass, and the cutter holds that tone while the #{encyclopedia_ref :claim_rig, "claim rig"} opens a matching receiver.

    Material arriving at the rig enters a sacrificial outer bay. Successive rooms separate useful stock, waste, reactive dust, and anything that crossed with the return. Heavy shutters stand between every stage. Each shutter has a manual breaker beside it because the failure most crews fear is a control system insisting that a dangerous job is still within limits.

    Ratters call the vessel a claim rig and the unmanned machine a cutter. Larger rigs may carry several cutters, but ordinary work gives each cutter its own clock, receiver, and process line. That separation became mandatory practice after #{ref :pell_four, "Pell Four"}.
  PROSE
  prose <<~PROSE, section: :dangers, heading: "The Cutter Wake"
    A coherent return carries whatever is coupled to the selected seam. Dust and loose hardware are expected. Small #{encyclopedia_ref :farborn, "Farborn"} sometimes arrive alive, clinging to the recovered material or following the return tone into the receiving breach.

    Crews call this a **cutter wake**. The outer bay closes, the inner rooms go quiet, and the crew clears the breach before processing resumes. Most #{encyclopedia_ref :claim_rig, "claim rigs"} carry simple barriers and tuned deck weapons for this purpose. A wake becomes dangerous when an operator leaves several process rooms active: the intruders follow the strongest tone inward, and every open room gives them another route.
  PROSE
  prose <<~PROSE, section: :mechanics, heading: "Limits"
    The coupled seam loses exactly what the receiver gains. A cutter that returns ten tonnes has removed ten tonnes from the claim, and the rig must absorb the same heat, pressure, and resonance load that a local refinery would face.

    Distance also fails to make two coupled sites independent. If several cutters share one clock and repeat one processing cadence, their targets can remain phase-related after the material arrives. The Pell test showed that a large synchronized field can persist after the arrays shut down. Current rigs isolate clocks, stagger returns, and trip their receivers when two seams begin answering as one.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Remote cutting remains common among licensed Deep-runners and the member crews of the #{ref :pell_freight_assembly, "Pell Freight Assembly"}. The #{ref :displacement_council, "Displacement Council"} also uses modified cutters to move damping mass and instruments across unstable cordon boundaries.

    Council work has stricter stop conditions than salvage work and assigns a named operator to every live return. The machinery is much the same. What changed after Pell is the record kept beside it: which clock drove the cut, which distant sites answered, and who had authority to stop the tone.
  PROSE

  cue "The #{ref :displacement_council, "Displacement Council"} moves damping mass and instruments across cordon boundaries with the same machinery salvage crews use. One named operator owns every live return there and can end the tone over the objection of whoever is paying for the cut."
  affordance "Time pressure puts two cutters on one clock and one repeated processing cadence. The coupled seams can stay phase-related after the material has arrived, and a rig built to current practice trips its own receivers the moment two of them begin answering as one."
  pressure "The receiver gains exactly what the claim loses, heat and pressure and resonance load together, so a rich cut moves a refinery's worth of trouble onto the vessel holding the crew. Every shutter has a hand breaker because the failure crews plan for is a control system reporting the job within limits."

end
