ability :great_restorer do
  name "The Great Restorer"
  summary "The Great Restorer is a mantle of the Three that can return a city, vessel, population, or archive to its last surviving complete state."
  type_of :restoration
  subkind :the_three
  status :complete
  tags :resonance, :religion, :rebuilding, :archives
  prominence :recognized
  qualification "Answers someone who can distinguish recovery from improvement and name what the surviving pattern actually contains"
  succession "Passes after the bearer completes a restoration whose unavoidable loss they refuse to hide from those restored"
  cost "Every apex restoration leaves one chosen loss unrecovered and carries its absence permanently into the bearer's body or memory"

  descriptive_identity(
    signs: "Damage reverses in the order it occurred while one named wound, absence, or omission remains unchanged in both subject and bearer.",
    effect: "The bearer can use #{encyclopedia_ref :restoration, "Restoration"} on city-scale structures, populations, vessels, and bodies of knowledge.",
    limits: "A surviving pattern must define the restored state, old flaws return with it, and contradictory complete states cannot both be recovered."
  )

  prose <<~PROSE
    The Great Restorer can call a shattered vessel from its debris, recover an archive from its readers and burned substrate, or return a ruined district from the patterns carried by foundations, records, tools, and surviving inhabitants. The mantle finds the last complete state still present in those witnesses and makes that state physically authoritative.

    Keepers place its mark across both lawful panels. The Tetrahedron remembers what held; the Triangulum drives separated parts back into relation. Restoration reaches toward the One Truth by making scattered accounts agree. It does not reach toward perfection. A city restored to its last complete day also receives the cracked conduits, concealed cells, unpaid obligations, and illnesses it carried on that day.
  PROSE
  prose <<~PROSE, section: :limits, heading: "The Preserved Loss"
    Great restorations contain contradictions. Two archives preserve incompatible final copies. A population remembers two different borders. A vessel's emergency reconstruction may be more recent and less complete than its original body. The mantle can establish one coherent return. It cannot make both histories physically true.

    The bearer must name one part of the loss that will remain. That absence passes into them: a missing face, a silent hand, an erased interval, a wound shaped like an unrestored street. Succession follows honesty about that choice. A bearer who conceals what they left behind may keep the power, but the mantle will not pass through their account.
  PROSE

  gm_note :appears, "The Great Restorer can recover the settlement, ship, or archive everyone came to save, provided the group chooses which contradictory piece of it will remain lost."
end

relate :rel_great_restorer_resonates_triptych, :resonates_with, :great_restorer, :the_tessellan_triptych
