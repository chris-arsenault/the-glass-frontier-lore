faction :the_unpersons do
  name "The Unpersons"
  subkind :resistance_network
  tags :resistance, :identity, :legibility
  prominence :recognized

  prose <<~PROSE
    They live directly underneath the oldest administrative systems on the continent — the tunnels, utility corridors, basements, decommissioned data centres and abandoned transit extensions under Washington, Baltimore, Philadelphia and New York.

    They survive by changing the identities stored above them. Coalition systems assume that every body belongs to one persistent digital person, so the Unpersons alter that link instead of hiding from every camera.
  PROSE

  prose <<~PROSE, section: :how_it_works, heading: "Bodies And Identities"
    They split one identity across several people and merge several people into one. They keep the dead on the rolls and working. They maintain citizens whose medical implant believes them to be one person while housing believes them to be another, and both records are consistent, current and audited.

    Between five thousand and seven thousand bodies move through roughly three thousand identities under BosWash. The count changes with every split and merger. They keep no single census because a captured roll would join bodies to names more efficiently than any coalition search.

    Paid work in Market territory produces a harder problem. When an Unperson crew finishes a job, Market accepts the work and holds the price for a recognized claimant. Bundles of unpaid jobs remain in BosWash files beside identities nobody can safely use. Their identity work can release the money, but the person Market pays is then not the body that did the work.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "What They Want"
    They want a person to exist without being readable to a machine government.

    The #{ref :the_choir, "Choir"} depends on Unperson identity work for anything that has to cross a coalition border. The #{ref :the_dead_counties, "Dead Counties"} bar them from settling because county clerks cannot join their bodies, names and graves.

    The Unpersons' own long argument is whether a resistance *movement* is already too machine-readable a shape to survive, and whether they should therefore stop being one.
  PROSE
end
