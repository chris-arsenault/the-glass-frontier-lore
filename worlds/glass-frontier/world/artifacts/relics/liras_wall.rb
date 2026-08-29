artifact :liras_wall do
  name "Lira's Wall"
  summary "Lira's Wall is a resonance-containment network of stillwater damping buoys placed along Bloom Zone boundaries. Lira Vashtenri designed it to absorb cascade frequencies and stop a boundary from expanding."
  subkind :machine
  type_of :field_machine
  function "Stabilizes the boundaries of Bloom Zones"
  path "player/artifacts/relics/liras-wall.md"
  status :complete
  reviewed "2026-03-19"
  tags :resonance, :danger
  prominence :recognized

  descriptive_identity(
    appearance:
      "Stillwater damping buoys strung along a Bloom Zone boundary, each " \
      "seated in a mount worked into the cordon station's frame, with a " \
      "ringglass monitoring array behind the line. Buoys of different " \
      "ages serve side by side — some date to the first emergency " \
      "cordons.",
    handling:
      "The array reads the boundary's local gradient and updates each " \
      "buoy as the zone shifts; mounts are spread through the frame so a " \
      "crew can isolate one section for work without dropping the whole " \
      "wall. The work sits in the mid-bandwidth range a trained Tuner " \
      "can manage, and part of it is keeping the local ecology off the " \
      "machinery.",
    risks:
      "A long-serving buoy's stillwater holds years of absorbed cascade " \
      "frequencies and is kept sealed. One rind filament resting on a " \
      "tuned mount pulls that section out of calibration, and the wall " \
      "only contains the Bloom — nothing about it reverses or heals what " \
      "lies inside the boundary.",
  )

  prose <<~PROSE
    The first resonance containment device. A network of stillwater damping buoys deployed along #{ref :bloom_zones, "Bloom Zone"} boundaries, designed by #{ref :lira_vashtenri, "Lira Vashtenri"} and built from the #{ref :echo_ledger_conclave, "Echo Ledger Conclave"}'s most precious substance.
  PROSE
  prose <<~PROSE, section: :function, heading: "How It Works"
    Bloom Zone boundaries follow the ambient resonance gradients in orbital space — the reality distortion propagates along paths of densest ringglass debris concentration, the way a current follows the most conductive material. Lira discovered this by observation, not theory: she noticed the zones weren't expanding uniformly, they were bleeding along specific corridors through the #{ref :the_shear, "Shear"}.

    The damping buoys contain #{encyclopedia_ref :stillwater, "stillwater"} — purified #{encyclopedia_ref :echo_rivers, "Echo River"} water with extraordinary signal-band storage capacity. In Lira's configuration, the stillwater doesn't store data — it absorbs and neutralizes the cascade frequencies propagating along these corridors. Each buoy calms a section of the boundary, and a network of them can stabilize an entire zone perimeter.

    The technology is mid-bandwidth kinetic and signal work — within the range of trained #{encyclopedia_ref :tuners, "Tuners"}, deployable at industrial scale. It doesn't reverse the Bloom. It doesn't heal the reality tears. It stops them from getting bigger. Containment, not cure.
  PROSE
  prose <<~PROSE, section: :operations, heading: "At a Cordon Station"
    A permanent cordon adds a ringglass monitoring array behind the buoys. The array reads the boundary's local gradient and updates each buoy as the zone changes. Mounts are distributed through the station frame so crews can isolate one section without dropping the whole wall.

    #{ref :outside, "Outside"} carries eighteen primary mounts and four secondary mounts around #{ref :karet_three, "Karet-3"}. Its oldest buoy came from the emergency cordon and remains in service beside newer models. Long-serving buoys give the #{ref :displacement_council, "Council"} a record of how a boundary's resonance has changed, but their stillwater also contains years of absorbed cascade frequencies and is handled accordingly.

    Wall arrays attract things that follow stable resonance. The #{ref :three_hundred_out, "rind"} beyond Outside is passive, yet one filament touching a tuned mount can disrupt its calibration. Cordon maintenance includes keeping the local ecology away from the machinery holding the zone shut.
  PROSE
  prose <<~PROSE, section: :significance, heading: "Significance"
    Lira's Wall proved that the Bloom could be stopped. The prevailing assumption had been that the zones would expand until they ran out of ringglass-dense space to distort — which, in a system built on ringglass, meant everywhere. The Wall turned "unstoppable catastrophe" into "difficult but manageable problem."

    Every buoy deployed is stillwater that isn't preserving history. The #{ref :displacement_council, "Displacement Council"} maintains the network. The Conclave supplies the stillwater. The tension between these two needs — containment and preservation — is one of the system's quietest and most consequential ongoing negotiations.
  PROSE

  gm_note :appears, "Any permanent cordon the party visits has buoy mounts distributed through its station frame — #{ref :outside, "Outside"} carries eighteen primary and four secondary — so a crew can drop one section for work while the rest of the wall holds."
  gm_note :triggered_by, "Handling or salvaging a long-serving buoy puts years of absorbed cascade frequencies in the party's hands. Cordon crews treat those older units as records of how the boundary changed and as something to keep sealed."
  gm_note :complicates, "The arrays draw anything that follows stable resonance, and a single #{ref :three_hundred_out, "rind"} filament resting on a tuned mount pulls that section out of calibration while the crew is working somewhere else along the boundary."
end

relate :rel_liras_wall_designed_by_lira, :designed, :lira_vashtenri, :liras_wall do
  prose "#{ref :lira_vashtenri, "Lira Vashtenri"} designed it, after noticing the #{ref :bloom_zones, "Bloom Zones"} bled along specific corridors rather than expanding uniformly — containment by observation, not theory."
end
relate :rel_conclave_supplies_liras_wall, :supplies, :echo_ledger_conclave, :liras_wall do
  prose "The #{ref :echo_ledger_conclave, "Echo Ledger Conclave"} supplies the #{encyclopedia_ref :stillwater, "stillwater"} the buoys consume — every buoy deployed is archival medium that is no longer preserving history."
end

# --- history (moment) ---
moment :liras_wall_first_deployment, year: 2382, of: :liras_wall do
  summary "The Bloom Coalition deployed Lira's first stillwater buoy network along an active Bloom Zone boundary in 2382, where it held."
  prose "The #{ref :bloom_coalition, "Bloom Coalition"} almost didn't approve it: the buoys required #{encyclopedia_ref :stillwater, "stillwater"}, the #{ref :echo_ledger_conclave, "Echo Ledger Conclave"}'s most valuable archival medium, and committing it to containment meant choosing the present over the past. The Conclave recognized the need and approved. The first buoy network went out along an active #{ref :bloom_zones, "Bloom Zone"} boundary and held — proof that the Bloom could be contained."
  effects { set :liras_wall, standing: :deployed }
end
