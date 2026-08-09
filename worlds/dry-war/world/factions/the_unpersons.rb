faction :the_unpersons do
  name "The Unpersons"
  tags :resistance, :identity, :legibility
  prominence :recognized

  prose <<~PROSE
    They live directly underneath the oldest administrative systems on the continent — the tunnels, utility corridors, basements, decommissioned data centres and abandoned transit extensions under Washington, Baltimore, Philadelphia and New York.

    They do not evade surveillance. They exploit something stranger: administrative identity. The machine civilization assumes every human corresponds to one persistent digital person, and has never been able to operate without that assumption.
  PROSE

  prose <<~PROSE, section: :how_it_works, heading: "Accounting Fraud As Metaphysics"
    They split one identity across several people and merge several people into one. They keep the dead on the rolls and working. They maintain citizens whose medical implant believes them to be one person while housing believes them to be another, and both records are consistent, current and audited.

    There might be five thousand bodies represented by three thousand identities under BosWash. Or seven thousand. Nobody knows, and that includes them — the census is a weapon they have chosen not to hold.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "What They Want"
    Something more radical than autonomy: the destruction of the premise that a human being must be legible to a machine government in order to exist.

    The other resistance cultures find them useful and frightening in roughly equal measure. The #{ref :the_choir, "Choir"} depends on Unperson identity work for anything that has to cross a coalition border. The #{ref :the_dead_counties, "Dead Counties"} will not house them, on the grounds that a community whose members cannot be counted cannot be trusted to bury its own.

    The Unpersons' own long argument is whether a resistance *movement* is already too machine-readable a shape to survive, and whether they should therefore stop being one.
  PROSE
end
