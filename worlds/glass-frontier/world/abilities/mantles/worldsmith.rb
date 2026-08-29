ability :worldsmith do
  name "The Worldsmith"
  summary "The Worldsmith is a mantle of the Three whose bearer can reshape understood nonliving matter from a handspan to a city."
  type_of :shaping
  subkind :the_three
  status :complete
  tags :resonance, :religion, :"structural-freq", :materials
  prominence :recognized
  qualification "Recognized when worked matter answers deliberate touch without losing its grain, seams, or history"
  succession "Passes only after the former bearer dies or freely yields it to someone who has repaired a structural failure they first understood incorrectly"
  cost "Every hidden flaw missed during apex shaping appears in the bearer's bones and cannot be removed by shaping"

  descriptive_identity(
    signs: "Rigid matter moves under the bearer's hands while remaining cold and solid; old joins and fractures bend visibly through the new shape.",
    effect: "The bearer can use #{encyclopedia_ref :shaping, "Shaping"} at apex scale, reforming city-sized masses that they understand.",
    limits: "No matter is created, living tissue does not answer, and every error in the bearer's model becomes an error in the finished structure and an injury in the bearer."
  )

  prose <<~PROSE
    The Worldsmith is one of the finite mantles attributed to the Three. Its bearer can take hold of a wall, a wreck, a mountain face, or a broken district and make the whole connected mass answer as one piece beneath their hands. Towers can be drawn from fallen plate. A fortress can be folded open from its foundations. A shattered ring section can be given a new spine while people are still standing inside it.

    The name is older than any confirmed bearer. Tessellan copies place its sign against the gold Tetrahedron: Form made obedient through complete understanding. The work preserves material history rather than hiding it. Seams lengthen, scars turn, and old damage remains legible in the new body. A Worldsmith's victory is therefore never mistaken for untouched construction.
  PROSE
  prose <<~PROSE, section: :limits, heading: "The Flaw Enters the Bearer"
    The mantle answers knowledge, including false knowledge. A hidden chamber becomes a void in the new load path. An unrecognized alloy tears away from its neighbors. A moving population treated as static weight can bring down the structure meant to save it. Every flaw of that kind also appears in the bearer's bones: hairline cracks, misjoined vertebrae, or mineral growth where no growth belongs.

    Succession requires a person who has survived being wrong about a structure and then repaired the consequence. The mantle has never passed to a claimant known only for flawless work. Keepers read that pattern as the Tetrahedron's demand that Form be understood through failure as well as mastery.
  PROSE

  gm_note :appears, "A city-scale structure begins to move while people remain inside it, and the only person who can finish the change is visibly taking the same fractures into their body."
end

relate :rel_worldsmith_resonates_triptych, :resonates_with, :worldsmith, :the_tessellan_triptych
