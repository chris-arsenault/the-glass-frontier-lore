ability :worldsmith do
  name "The Worldsmith"
  summary "The Worldsmith is a mantle of the Three that extends Shaping across a connected structure, vessel, mountain face, or district whose materials and live loads the bearer understands."
  type_of :shaping
  subkind :the_three
  status :complete
  tags :resonance, :religion, :"structural-freq", :materials
  prominence :recognized
  qualification "Answers a shaper who has repaired a structural failure they first understood incorrectly and can identify the mistaken load path"
  succession "Passes at the bearer's death or by a free yielding to a qualified successor"
  cost "Every hidden void, mixed material, or moving load omitted from a great working becomes a flaw in the finished structure and a matching injury in the bearer's bones"

  descriptive_identity(
    signs: "Rigid matter folds under the bearer's hands while remaining cold and solid; grain, old joins, patches, and fractures bend visibly through the new shape.",
    effect: "The mantle extends #{encyclopedia_ref :shaping, "Shaping"} from one person-sized mass to a city-sized connected structure without changing the spell's material laws.",
    limits: "The work preserves mass, composition, and material history. Living tissue resists it, and any error in the bearer's model becomes a physical error in the result."
  )

  question "Who is the present or most recently attested Worldsmith, and what mistaken load path and repaired failure qualified them?", raised: "2026-08-31"

  prose <<~PROSE
    The Worldsmith extends #{encyclopedia_ref :shaping, "Shaping"} across a connected mass. The bearer can take hold of a wreck, mountain face, vessel, or broken district and make it answer as one structure. Towers rise from fallen plate; a shattered ring section receives a new load path while people remain inside it. Shaping's material law remains: matter stays present, living tissue resists, and every change follows the model in the bearer's hands.

    Matter stays cold and solid during the change. Mass, grain, alloy boundaries, repairs, and old damage remain present, so a finished wall may carry curved welds and a former deck may climb through it as a dark band. This continuity distinguishes Worldsmith work from replacement or concealment. Surveyors can follow the earlier structure through the new one, and courts can still identify a disputed repair.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Reading the Load"
    Worldsmith work begins before the bearer touches the material. Joints are exposed, live conduits marked, cavities sounded, and moving loads counted. A bearer may use a #{encyclopedia_ref :load_singing, "singer's"} chalk map on a wreck or walk a hab span beside someone trained in #{encyclopedia_ref :span_listening, "load listening"}. The mantle supplies force and reach; those records, instruments, and working hands supply much of the model that directs it.

    Work on an occupied structure is conducted in stages. The bearer changes one load path, waits for the mass and its occupants to settle, then reads the next. A rushed change can make a perfectly shaped district around an omitted cistern, a moving crowd, or a live machine. People contest a proposed working by contesting the model: they mark an uncounted void, demand another sounding, or refuse to clear the bearing surface until their load appears on the plan.
  PROSE
  prose <<~PROSE, section: :limits, heading: "The Map in the Bones"
    In a great working, each omission enters both structure and bearer. A hidden chamber becomes a void in the new load path. An unrecognized alloy tears away from its neighbors. A moving population treated as static weight can bring down the structure meant to save it. The corresponding error appears in the bearer's body as hairline fractures, a misjoined vertebra, or mineral growth along the line of the bad assumption. Further shaping can brace the injury but cannot remove it.

    Surviving mantle accounts recognize a successor by one qualification: the candidate has misunderstood a real structure, repaired the failure that followed, and can still name the wrong model. The mantle passes when its bearer dies or freely yields it to such a person. Tessellan copies place the mantle beside the gold Tetrahedron; ordinary practitioners remain shapers, and *Worldsmith* is reserved for the designation.
  PROSE

  gm_note :triggered_by, "When the bearer reshapes anything under live load, every unmarked void, mixed material, moving machine, or person becomes part of the result; an omitted load appears as both a structural flaw and a matching injury."
  gm_note :complicates, "Worldsmith work preserves every seam, patch, and fracture in its new geometry, so an old repair, concealed compartment, or disputed act of sabotage remains legible after the structure has changed beyond recognition."
end

relate :rel_worldsmith_resonates_triptych, :resonates_with, :worldsmith, :the_tessellan_triptych
