encyclopedia :wurm_bit do
  name "Wurm-bit"
  summary "A wurm-bit is a hand- or cutter-mounted boring machine built around a shed glasswurm mouth plate. Salvagers use its changing bite angle to follow curved seams through mixed mineral and ringglass."
  kind :technology
  subkind :machine
  function "Cuts curved mineral and ringglass seams with a mounted glasswurm mouth plate"
  status :complete
  topics :salvage, :ringglass, :resonance, :trade, :danger
  prevalence :common
  appears_when all: { place: [:debris_field, :yard] }

  descriptive_identity(
    appearance:
      "A cleaned glasswurm mouth plate seated in a forked yoke, dark " \
      "root against a weak ringglass driver, with witness wires along " \
      "the yoke and a toolmaker's response marks cut into it. It leaves " \
      "a curved, slightly ribbed bore like the wall of a wurm tunnel.",
    handling:
      "The operator opens a shallow notch, lets the driver sound into " \
      "the layers, and follows the witness wires as the plate twists " \
      "toward the clearest boundary between materials; bore dust " \
      "returning through the grooves shows which seam it is on. Hand " \
      "frames suit surface work, larger yokes ride remote cutters, and " \
      "a plate that turns before touching the work gets opened and " \
      "cleaned rather than trusted.",
    risks:
      "Locking the yoke for a straight cut sends every change in the " \
      "seam into the plate until it snaps, and forcing the feed when the " \
      "plate folds flat drives the broken pieces along different " \
      "boundaries. The repeated bite copies part of a glasswurm's " \
      "feeding pattern, and in ringglass-rich fragments a working bit " \
      "can call an adult through the connected debris.",
  )

  prose <<~PROSE
    A wurm-bit is a hand or cutter-mounted boring tool built around a shed #{encyclopedia_ref :glasswurm, "shearwurm"} mouth plate. The plate changes its bite angle as the surrounding structural tone changes, letting the tool follow a seam through mixed mineral and ringglass without forcing a straight bore through both.

    The result is a curved, slightly ribbed cut like the wall of a glasswurm tunnel. Salvagers use wurm-bits to free intact material, open wreck panels without crossing tuned members, and make receiving holes that preserve the load around them.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Plate, Yoke, and Feed"
    A cleaned mouth plate sits in a forked yoke with its dark root against a weak ringglass driver. The driver does not turn the plate. It supplies a broad structural note while a mechanical feed presses the edge into the work. The plate twists itself toward the clearest boundary between materials.

    Witness wires along the yoke show the direction of that twist. An operator follows them by moving the tool or allowing the cutter arm to yield. Locking the yoke produces a faster straight cut and transfers every change in the seam into the plate. Most broken bits come from operators who wanted the tool to behave like an ordinary drill.

    Plates vary. One may prefer metal against glass; another follows voids, old adhesive, or the line between two crystal grades. Toolmakers test each against a reference block and cut its response marks into the yoke.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Following the Seam"
    The operator begins with a shallow mechanical notch. The driver sounds into the exposed layers, the plate turns, and the feed takes the first bite. Bore dust returns through grooves behind the edge. Its color and response show which material the bit is following before the cut disappears below the surface.

    A remote cutter can carry a larger yoke and let the plate shape an extraction path around intact stock. Claim rigs favor the method when a straight resonant cut would cross several active seams. Surface crews use hand frames to remove damaged ringglass from bridges, mills, and old foundations.

    The tool stops when the plate folds flat against the yoke. That position means the seam has ended, divided, or turned more sharply than the mount allows. Forcing the feed can snap the plate and drive both pieces along different boundaries.
  PROSE

  prose <<~PROSE, section: :dangers, heading: "Calling Through the Work"
    A wurm-bit copies part of the feeding pattern that shaped its plate. Active glasswurms can feel the repeated bite through a connected debris mass. Small animals investigate from existing tunnels. Large ones may cut a new path toward the tool.

    Crews vary the driver, pause between sections, and place mechanical pins in nearby burrows. A bit used continuously for speed gives the clearest call. The danger is greatest in ringglass-rich fragments, where the tool's pulse travels farther and the resident animal has more reason to defend or consume the seam.

    Old plates also retain material from previous work. A bit that begins turning before it touches the new surface may be answering a fragment lodged at the root. The tool is opened and cleaned rather than trusted to find a seam through memory.
  PROSE

  cue "Bits sold as Pell plate turn up in Glasswake without response marks cut into the yoke. Most carry ordinary worked glass darkened at the root and will not twist toward a seam at all; a few carry real plates from burrows absent from current survey charts."
  cue "A cleaned mouth plate sits in a forked yoke with its dark root against a weak ringglass driver."
  affordance "A yielding yoke lets the plate follow a curved boundary through mixed mineral and ringglass, freeing intact stock that a straight bore would cross. Locking the yoke makes a faster cut but transfers every change in the seam into the plate."
  pressure "The plate folds flat against the yoke when the seam ends, divides, or turns harder than the mount allows, and it does not distinguish between the three. Pressing the feed anyway breaks the plate into pieces that then run off along different boundaries."
  variation "A remote cutter can carry a larger yoke and let the plate shape an extraction path around intact stock."
  variation "Surface crews use hand frames to remove damaged ringglass from bridges, mills, and old foundations."

end
