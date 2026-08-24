creature :shellback do
  name "Shellback"
  summary "Shellbacks are slow Shear grazers that attach to debris and feed across resonance-active surfaces. When disturbed, one locks its gripping limbs and draws the surrounding structural response into its layered shell."
  subkind :anomaly
  status :complete
  tags :orbital, :resonance, :ecology, :salvage, :danger, :ringglass
  prominence :recognized

  prose <<~PROSE
    Shellbacks are slow Shear grazers that attach themselves to debris and feed across its resonance-active surface. Most are broad enough to cover a hatch and low enough to pass for fused wreckage until they move. Their layered shells incorporate ringglass, metal dust, and pieces of whatever mass supports them.

    They seldom pursue a vessel or person. The danger begins when work disturbs one. A shellback retracts, fixes every gripping limb, and draws the nearby structural response into its shell. The animal becomes difficult to move while the debris around it carries less of its own load.
  PROSE

  prose <<~PROSE, section: :description, heading: "Shell and Feeding Mat"
    A shellback's visible shell consists of overlapping mineral plates around a shallow central dome. Fine eyes occupy the seams between plates. They close one line at a time as dust crosses the body, producing a ripple that crews sometimes mistake for reflected light.

    Beneath the shell, dozens of short limbs spread into a feeding mat. Small mouths rasp charged deposits from the surface while other openings draw in loose dust and vent material the animal does not retain. The same limbs grip through cracks, bolt holes, and soft corrosion. A settled adult can hold more points on a wreck than a salvage crew can see.

    New shell grows at the plate edges. Older outer pieces loosen and fall away when the animal crosses a gap. Those cast plates contain mixed ringglass aligned by years of feeding. Their grades vary across a single piece and cannot be refined safely until every band has been mapped.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Working Around One"
    Surveyors mark a shellback before cutting the mass it occupies. A light pulse across the shell shows whether the animal is feeding, moving, or fixed. Even waves moving from front to rear indicate grazing. A hard answer from every plate means it has retracted and is carrying structural load.

    Crews wait for a grazing animal to cross the work line or draw it with a strip of charged aggregate laid on firmer debris. The movement may take hours. Hitting the shell, heating it, or driving a tool beneath it produces the opposite result. The limbs tighten and the surrounding material begins to answer through the body.

    If a retracted shellback must be removed, the debris is braced first. A Tuner reduces the local structural tone in small steps while cutters release the outer gripping limbs. The animal usually abandons the final holds and drifts toward the nearest active surface. A crew that cuts the central mat first may release both the animal and the piece of wreck it had been supporting.
  PROSE

  prose <<~PROSE, section: :trade, heading: "Cast Shell"
    Shed shell is a minor but dependable salvage product. Ratter crews collect loose plates from known grazing grounds and sell them by mixed weight. Instrument makers cut small stable sections for housings, dampers, and decorative inlay. Structural shops grind the rest into aggregate only after sounding every face.

    Removing attached plate from a live animal is legal under some claim rules and rejected under most flotilla practice. The cut yields fresher material and leaves the shellback with an open edge that can no longer distribute load. Grazing grounds worked this way become sparse, and the debris there fails more often. The #{ref :shear_compact, "Shear Compact"} treats repeated live cutting as damage to a managed claim, though enforcement depends on a witness finding the vessel afterward.
  PROSE

  prose <<~PROSE, section: :geography, heading: "Grazing Grounds"
    Shellbacks concentrate on old structural members, refinery debris, and ring fragments carrying a steady low-band response. A few dozen can move across one mass over years, smoothing unstable crystal growth and leaving cast plate behind. Their feeding sometimes makes a site safer. Their departure can reveal that the animals had become part of what held it together.

    Small shellbacks appear in remote cutter wakes, usually closed tight around a returned fragment. Process crews isolate the whole piece and wait for it to open. An animal given aggregate and a quiet surface can be walked toward an external hatch without weapons, provided no other machine in the room offers a stronger meal.
  PROSE

  gm_note :appears, "Small ones ride home in a remote cutter return, shut tight around the fragment and indistinguishable from fused wreck until a process crew waits one out. " \
                    "Given aggregate and a quiet surface it can be walked to an external hatch, provided no machine in the room offers a stronger meal."
  gm_note :complicates, "Cutting near a settled adult makes it retract and draw the structural response of the surrounding debris into its shell, and the mass then reads sound while the animal is what holds it. " \
                        "Getting the shellback off afterwards means bracing first and losing the shift."
  gm_note :triggered_by, "Taking plate off a living animal yields fresher material and is legal under some claim rules; most flotilla practice rejects it, and the " \
                         "#{ref :shear_compact, "Shear Compact"} counts repeated live cutting as damage to a managed claim. Enforcement needs a witness who finds the vessel later."
end

relate :rel_shellback_inhabits_shear, :inhabits, :shellback, :the_shear do
  prose "Shellbacks graze on resonance-active debris throughout the #{ref :the_shear, "Shear"}."
end
relate :rel_shellback_embodies_farborn, :embodies, :shellback, :farborn do
  prose "Working bestiaries place shellbacks among the sessile and grazing #{ref :farborn, "Farborn"}."
end
relate :rel_shellback_depends_on_ringglass, :depends_on, :shellback, :ringglass do
  prose "A shellback feeds across active deposits and incorporates mixed #{ref :ringglass, "ringglass"} into its cast plates."
end
relate :rel_ratters_study_shellbacks, :studies, :ratters, :shellback do
  prose "Ratter claim maps record shellback grazing grounds, cast-shell yields, and debris the animals may be helping to hold together."
end
