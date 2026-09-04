ability :great_restorer do
  name "The Great Restorer"
  summary "The Great Restorer is a mantle of the Three that extends Return across scattered witnesses to restore vessels, settlements, populations, and bodies of knowledge as one composite subject."
  type_of :return
  subkind :the_three
  status :complete
  tags :resonance, :religion, :rebuilding, :archives
  prominence :recognized
  qualification "Answers a restorer who can present the surviving witnesses for a complete state and identify the old flaws contained in that return"
  succession "Passes after the bearer completes a restoration whose unavoidable loss they refuse to hide from those restored"
  cost "Every great restoration leaves one named loss unrecovered and carries the corresponding absence permanently into the bearer's body, faculties, or memory"

  descriptive_identity(
    signs: "Fragments return along old breaks, wounds close from surviving tissue, and overwritten records rise beneath later marks while one named absence remains in subject and bearer.",
    effect: "The mantle extends #{encyclopedia_ref :return, "Return"} from one locally witnessed subject to vessels, settlements, populations, and bodies of knowledge assembled from scattered patterns.",
    limits: "A surviving pattern determines the return, including old flaws and harmful contents. Contradictory complete states require one to be chosen and the other to remain lost."
  )

  question "Who is the present or most recently attested Great Restorer, and which disclosed preserved loss established the last succession?", raised: "2026-08-31"

  prose <<~PROSE
    The Great Restorer gathers scattered patterns into one composite return. With enough witnesses, the bearer can call a shattered vessel from its debris, recover an archive from readers and burned substrate, or return a district from its foundations, records, tools, and surviving inhabitants. The mantle makes that assembled state authoritative over the later damage.

    Every return has a source. Fragments carry shape and material; living bodies carry scars, nerve paths, and remembered motion; archives survive through copies, checks, impressions, and people who learned their contents. Restorers lay out those witnesses before large work because their agreement determines the state that comes back. A confident account with no surviving pattern contributes nothing to the working.
  PROSE
  prose <<~PROSE, section: :tensions, heading: "Competing Returns"
    Large subjects often preserve more than one complete state. Two archives may hold incompatible final copies. A population may remember two borders, each carried by roads, records, and homes. A vessel's emergency reconstruction can be newer and less complete than its original body. The mantle can make one state physical. People contest a proposed restoration by producing another surviving witness and showing what the chosen return would remove.

    The chosen state brings back everything that belonged to it. A restored city receives cracked conduits, concealed rooms, unpaid obligations, illnesses, and malicious instructions present on that day. Qualification requires the restorer to name those contents before the working. Tessellan copies call the mantle *Great* for a composite return assembled from many witnesses, not for the worth of the state restored.
  PROSE
  prose <<~PROSE, section: :legacy, heading: "The Preserved Loss"
    In every composite return, one part of the loss remains unrecovered so the restored state can close as one coherent subject. The bearer names it before the working. The absence then enters them as a missing face, a silent hand, an erased interval, a lost skill, or a wound shaped like the street that did not return.

    Succession follows disclosure rather than death or defeat. After completing a restoration, the bearer must give the restored people a full account of what returned, what old flaws came with it, and what loss they chose to preserve. The mantle can pass only through a working whose unavoidable omission the bearer refused to hide.
  PROSE

  gm_note :triggered_by, "When fragments, records, bodies, or witnesses preserve a complete state, the Great Restorer can make that state physical; adding a credible witness can change which version is strongest enough to return."
  gm_note :complicates, "A restoration returns old flaws, hidden rooms, infections, obligations, and hostile instructions that belonged to the chosen state, while every contradictory complete state becomes part of the named loss."
end

relate :rel_great_restorer_resonates_triptych, :resonates_with, :great_restorer, :the_tessellan_triptych
