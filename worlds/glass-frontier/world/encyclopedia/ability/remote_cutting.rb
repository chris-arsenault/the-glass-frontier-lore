encyclopedia :remote_cutting do
  name "Claim Coupling"
  summary "Claim Coupling is a salvage technique that couples material from an unstable claim to a crewed processing vessel while the workers remain at stand-off range."
  kind :ability
  subkind :operational_method
  status :complete
  log "2026-08-31 — Renamed Remote Cutting to Claim Coupling; the name centers the contested material connection that lets a crew work at stand-off range."
  topics :salvage, :resonance, :orbital, :trade, :danger
  prevalence :common
  appears_when all: { place: [:debris_field] }
  function "Couples material from an unstable claim to a crewed processing vessel at stand-off range"

  prose <<~PROSE
    Claim Coupling lets a salvage crew work a claim without bringing its people alongside the target. An unmanned cutter enters the debris mass, fixes itself to a chosen seam, and couples that material to a receiving breach on the crew's #{encyclopedia_ref :claim_rig, "Pell Skiff"}. The crew stays far enough away to survive a collapse, a resonance spike, or the loss of the cutter.

    #{encyclopedia_ref :ratters, "Ratter"} crews developed the method for #{ref :deep_shear, "Deep Shear"} claims that were valuable enough to work and too unstable to board. Crews plan every cut around losing the machine and bringing its operators home.
  PROSE
  prose <<~PROSE, section: :operations, heading: "A Remote Cut"
    A cutter carries an anchor head, a compact resonance array, and little else. Once it reaches the target, the crew sounds the seam in several narrow bands. A #{encyclopedia_ref :tuners, "Tuner"} selects the response that separates the desired material from the surrounding mass, and the cutter holds that tone while the #{encyclopedia_ref :claim_rig, "Pell Skiff"} opens a matching receiver.

    Material arriving at the rig enters a sacrificial outer bay. Successive rooms separate useful stock, waste, reactive dust, and anything that crossed with the return. Heavy shutters stand between every stage. Each shutter has a manual breaker beside it because the failure most crews fear is a control system insisting that a dangerous job is still within limits.

    Ratters call the vessel a claim rig and the unmanned machine a cutter. Larger rigs may carry several cutters, but ordinary work gives each cutter its own clock, receiver, and process line. That separation became mandatory practice after #{ref :pell_four, "Pell Four"}.
  PROSE
  prose <<~PROSE, section: :dangers, heading: "The Cutter Wake"
    A coherent return carries whatever is coupled to the selected seam. Dust and loose hardware are expected. Small #{encyclopedia_ref :farborn, "Farborn"} sometimes arrive alive, clinging to the recovered material or following the return tone into the receiving breach.

    Crews call this a **cutter wake**. The outer bay closes, the inner rooms go quiet, and the crew clears the breach before processing resumes. Most #{encyclopedia_ref :claim_rig, "Pell Skiffs"} carry simple barriers and tuned deck weapons for this purpose. A wake becomes dangerous when an operator leaves several process rooms active: the intruders follow the strongest tone inward, and every open room gives them another route.
  PROSE
  prose <<~PROSE, section: :mechanics, heading: "Limits"
    The coupled seam loses exactly what the receiver gains. A cutter that returns ten tonnes has removed ten tonnes from the claim, and the rig must absorb the same heat, pressure, and resonance load that a local refinery would face.

    Sites worked from one clock can remain phase-related across the coupling. When several cutters repeat one processing cadence, the synchronized field may persist after material arrives and the arrays shut down. The Pell test established the scale of that persistence. Current rigs isolate clocks, stagger returns, and trip their receivers when two seams begin answering as one.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Claim Coupling remains common among licensed Deep-runners and the member crews of the #{ref :pell_freight_assembly, "Pell Freight Assembly"}. The #{ref :displacement_council, "Displacement Council"} also uses modified cutters to move damping mass and instruments across unstable cordon boundaries.

    Council work uses stricter stop conditions and assigns a named operator to every live return. Post-Pell records follow every machine: which clock drove the cut, which distant sites answered, and who held authority to stop the tone.
  PROSE

  cue "An unmanned cutter anchors to a sounded seam while the claim rig opens a matching receiver; recovered material enters a shuttered outer bay before any crewed room opens to it."
  affordance "Claim Coupling lets a crew work an unstable claim from stand-off range, spending an unmanned cutter and a sacrificial process line instead of bringing people alongside the debris mass."
  pressure "The rig receives the cut's heat, pressure, and resonance load along with its material. Shared clocks can also leave several seams phase-coupled, so current rigs isolate clocks, stagger returns, and trip the receivers when two seams answer together."
  cue "The outer bay closes on a cutter wake — small movement in with the return — and the process line goes quiet room by room while the crew clears the breach with barriers and tuned deck weapons."
  variation "Licensed Deep-runners and Assembly crews cut for salvage under claim law; Displacement Council cutters move damping mass and instruments across cordon boundaries under stricter stop conditions and a named operator per live return."
  variation "Ordinary rigs give each cutter its own clock, receiver, and process line; the big multi-cutter rigs run the same separation at fleet scale, and their post-Pell logs record which clock drove every cut."
end
