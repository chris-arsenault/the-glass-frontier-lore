installation :outside do
  name "Outside"
  playable_as :chronicle_location, :homeland
  origin_blurb "A permanent cordon station where Karet families and rotating crews maintain the wall around Karet-3."
  subkind :settlement
  population 300
  population_band "About three hundred, half on rotating contracts"
  role "Permanent cordon station for Karet-3"
  setting "Outer Shear, fixed to the Karet-3 cordon perimeter"
  access "Council traffic, supply ships, and resident berths"
  tags :orbital, :resonance, :danger, :governance, :isolation
  prominence :recognized

  prose <<~PROSE
    The permanent cordon station at #{ref :karet_three, "Karet-3"}. Evacuees first called the platform Outside to distinguish it from the home they could still see across the wall. The name outlasted the emergency cordon. Outside smells of processed ringglass and recycled air. Cordon crews know the combination before they see the station markings.

    About three hundred people live aboard. Half are rotating #{ref :displacement_council, "Council"} contractors, array crews, medics, and supply hands. The rest include permanent maintenance staff and the Karet families who built homes on the platform below the docking ring.
  PROSE
  prose <<~PROSE, section: :operations, heading: "The Wall Array"
    Eighteen primary ringglass mounts and four secondary mounts surround the cordon. They read the local resonance gradient and keep the stillwater buoys of #{ref :liras_wall, "Lira's Wall"} calibrated as the boundary changes. The mounts pass through the station's frame, so their condition can be read in the decks as well as on the instruments.

    The south wall hums at the array's structural frequency. On stable days the tone is low and even. When Karet-3 shifts, the pulse intervals change and conversations on the south deck acquire pauses as people listen without meaning to.

    The first buoy on the outer inspection walk predates the station. It belonged to the emergency cordon raised during the evacuation and was retained as a long record of the zone's early frequencies. Its blue-grey casing makes it easy to distinguish from the current models.
  PROSE
  prose <<~PROSE, section: :geography, heading: "The Lower Works"
    The maintenance bay faces the zone through a wide shielded window. New arrivals watch the old habitat's geometry move. Experienced crews choose benches that face inward.

    Below the inhabited decks, a ladder descends through sixty meters of structural frame to the deep mounts. The station's damping field is weak there. Ambient Shear resonance returns as equipment hum, and the Bloom boundary becomes audible as an uneven low tone. Inspection teams work in pairs, limit their time, and write down headaches rather than treating them as ordinary fatigue.

    The boundary walk begins at this lower level and circles the zone-facing hull. It is the station's most exposed routine job. It is also where crews first saw the #{ref :rind, "rind"} holding position beyond the mounts.
  PROSE
  prose <<~PROSE, section: :people, heading: "A Cordon Town"
    Outside runs on two time scales. Contractors arrive for a tour, learn the array, and leave. Permanent residents plan around school terms, supply intervals, and the old Karet shift calendar. The same mess serves both populations, and the same arguments recur over which repairs can wait for the next ship.

    The displaced quarter has its own kitchens, workshops, and memorial wall. Its residents guide survey teams through the hab plans and correct Council records that treat cargo spaces as empty volumes. They have requested supervised entry whenever the boundary appears permeable. The Council has not approved a crossing.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Outside remains a working cordon rather than an emergency camp. Supply ships wait for the single-stroke approach signal at #{ref :far_bell, "Far Bell"}, mounts are rebuilt, children grow up beside a place their parents still call home, and the wall continues to hold.

    The rind has made ordinary maintenance harder without behaving aggressively. Counter-tone teams are trying to draw it away from the array before its filaments touch a mount.
  PROSE
end

relate :rel_outside_located_in_shear, :located_in, :outside, :the_shear, since: 2427 do
  prose "Outside is fixed to a stable debris mass on the outer Shear side of the Karet-3 cordon."
end
relate :rel_outside_depends_on_liras_wall, :depends_on, :outside, :liras_wall do
  prose "Its wall array and stillwater buoys are a permanent local deployment of #{ref :liras_wall, "Lira's Wall"}."
end
