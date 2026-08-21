artifact :karet_spool do
  name "Karet Spool"
  subkind :relic
  origin_date 2426
  status :complete
  tags :resonance, :danger, :orbital, :transport, :mystery
  prominence :recognized

  prose <<~PROSE
    The Karet Spool is a freight-winch drum recovered from a service passage after the Karet-3 Bloom Zone opened in 2426. Its braided line preserves a route after the surrounding distance changes. A person seats the drum at the entry, walks the hook through an unstable passage, and fixes it at the far end. Anyone who maintains contact with the line can follow that route even when the corridor no longer leads there.

    The spool does not open a new path. It holds one that somebody has already crossed. The #{ref :displacement_council, "Displacement Council"} uses it for short recoveries inside mapped parts of #{ref :karet_three, "Karet-3"} and keeps it at #{ref :outside, "Outside"} between deployments.
  PROSE

  prose <<~PROSE, section: :history, heading: "Recovery"
    Evacuation crews found the winch bolted to the floor beside an open pressure door. The line passed through that doorway, around a corner, and returned through the same doorway from the opposite side. Both ends remained connected to one drum. Cutting the returning segment caused the loose end to withdraw into the wall without shortening the line still visible on the floor.

    Council technicians removed the deck plate with the drum attached and carried the whole assembly to the cordon. The original winch motor, brake, hook, and line remain together. Replacement motors turn the drum normally and fail to produce the route-holding effect. New line spliced to the free end behaves as ordinary cable.

    The name came from the recovery manifest. Several later reports call it the Karet Line, but the shorter form remains on custody seals and deployment cards.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "Holding a Traversed Route"
    The hook must be fixed to a surface returning a stable structural tone. The drum remains on its recovered deck plate and is seated at the entry point. A line worker then pays out cable while walking a continuous route between them. Once the brake closes, the cable retains that sequence of turns and openings even if Karet-3 changes their physical arrangement.

    Following the line requires contact. A hand, harness loop, or guide ring stays on the cable from one fixed end to the other. A person who lets go sees only the corridor's current geometry. From outside, the line may enter a wall, double back through an open hatch, or vanish across a gap shorter than the body following it. Tension remains ordinary until the route begins to fail.

    The spool holds one route at a time. Releasing the brake abandons it. Moving either fixed end while the brake is closed causes cable to pay out or return without corresponding drum movement. Council crews treat that motion as an immediate withdrawal signal.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Cordon Use"
    A deployment begins with an ordinary surveyed approach. The first line worker carries no rescue load and marks every physical turn independently of the cable. After the hook is seated, a second worker confirms the route while the geometry remains stable. Only then do crews move a casualty, instrument, or sealed sample along it.

    The line cannot carry a person across a route nobody survived. It cannot choose between branches. If a door closes physically across the cable, the door remains an obstruction even when the preserved route continues beyond it. Rescue teams therefore bring cutting tools, pressure shelter, and enough damping mass to stabilize the ordinary hazards along the walk.

    The spool has also recovered instruments from a boundary that moved after placement. The Council refuses commercial offers to use it for salvage. Every deployment consumes part of an artifact that current workshops cannot repair.
  PROSE

  prose <<~PROSE, section: :limits, heading: "A Finite Line"
    The drum carried eighty-one meters of cable when recovered. Fifty-nine remain serviceable. After a difficult route, one or more outer sections lose flexibility and turn clear from the inside. Those sections no longer preserve distance and are cut away before the next deployment. No treatment has restored them.

    Load accelerates the change. The Council keeps the working tension below one quarter of the winch's surviving rated plate and moves heavy equipment on separate physical supports where possible. Sudden pulls can make a clear section advance past a guide ring before anyone sees it fail.

    The cable also weakens when exposed to several competing signal patterns. Radios, repeated alarms, and synchronized instrument pulses are kept off the route. Tests agree that the line records some aspect of the passage's resonance state. They have not established what the cable stores or why use makes it transparent.
  PROSE
end

relate :rel_displacement_council_possesses_karet_spool, :possesses, :displacement_council, :karet_spool, since: 2426 do
  prose "The Displacement Council recovered the Karet Spool and controls every deployment."
end
relate :rel_karet_spool_located_outside, :located_in, :karet_spool, :outside, since: 2426 do
  prose "The spool is stored and inspected at #{ref :outside, "Outside"} beside the Karet-3 cordon."
end
relate :rel_karet_spool_manifests_karet_three, :manifests_at, :karet_spool, :karet_three do
  prose "The route-holding effect first appeared inside #{ref :karet_three, "Karet-3"} after an ordinary freight winch was caught in the zone."
end
relate :rel_karet_spool_derived_bloom_relics, :derived_from, :karet_spool, :bloom_relics do
  prose "The Karet Spool is a documented Bloom relic: an ordinary machine altered into a non-reproducible route tool."
end
relate :rel_karet_spool_resonates_bloom_zones, :resonates_with, :karet_spool, :bloom_zones do
  prose "Its line preserves a traversed route through the changing geometry of a Bloom Zone."
end
