installation :threshold_station do
  name "Threshold Station"
  summary "Threshold Station is a pre-Glassfall spindle at the inner balance point between Kaleidos and the sun, housing the Lattice Proxy Synod and one end of Span Nine."
  playable_as :chronicle_location
  context_tags :orbital, :sealed_hab
  subkind :settlement
  path "player/locations/settlements/threshold-station.md"
  tags :orbital, :"ring-era", :AI, :governance, :resonance
  prominence :recognized
  position frame: :kaleidos_system_chart, relative_to: :kaleidos,
           radial_offset: -0.12, angle_offset_deg: 0

  descriptive_identity(
    setting:
      "A white, seemingly seamless spindle kilometers long, aligned " \
      "along the sun-line at the balance point between Kaleidos and the " \
      "sun. A spinal corridor runs its accessible length through " \
      "gradients of light — burning unfiltered sun at the sealed end, " \
      "deep stars and the small disc of home at the other — and it is " \
      "quiet in a way hard to describe to anyone who has not walked it.",
    activity:
      "The Synod works its proxy halls in the central band, envoys from " \
      "four powers collect outputs and argue among themselves, the " \
      "terminus crew runs the dock and the Span relay as their families " \
      "have for generations, and Warden patrols walk the seam between " \
      "the active station and the sealed sectors.",
    access:
      "Visiting traffic enters at the Kaleidos-facing end, beside the " \
      "Span Nine terminus. There is no pilgrim trade and no scholar " \
      "class, so anyone without stated business is conspicuous within a " \
      "shift.",
    hazards:
      "A list of hard-sealed sectors — welded bulkheads, life support " \
      "cut, monitoring installed — covers the old command spine, the " \
      "whole sun-facing terminus, and several volumes named for the " \
      "expeditions lost proving them dangerous. Only the Wardens may " \
      "open a seal, and the permits come from the Wardens alone."
  )

  prose <<~PROSE
    A pre-Glassfall station at the inner Lagrange point between #{ref :kaleidos_system, "Kaleidos"} and the system's sun. Threshold is a vast spindle aligned along the sun-line — kilometers long, narrow at the ends, broader through the middle — and has held station at the L1 point since before any living memory begins. The #{ref :lattice_proxy_synod, "Lattice Proxy Synod"} operates from the spindle's central band. #{ref :span_nine, "Span Nine"} terminates at the Kaleidos-facing end. The sun-facing end is sealed and has been for as long as the Synod has occupied the station.

    The name is the Synod's. It refers to what crossing the station means: the threshold of mind, the door between human cognition and the elven AI custodians who still run, in some form, inside the spindle's core.
  PROSE
  prose <<~PROSE, section: :atmosphere, heading: "Shape and Reach"
    The spindle's outer hull is white and seamless from a distance. Closer inspection finds the seams — the station is segmented, with each segment serving a different function, and the seams are tight enough that no surviving record can identify them at long range. The Synod's working sections cluster in the central band: the proxy halls, the resident quarters, the dock complex, the envoys' quarter. The Kaleidos-facing end holds the Span terminus and the Synod's primary entrance for visiting traffic. The sun-facing end is the deep station, sealed by sectors and patrolled by [Threshold Wardens](#threshold-wardens).

    The light is strange. The sun-facing end is bathed in unfiltered Kaleidos-sun light at intensities that would burn an unshielded ship; the Kaleidos-facing end sees the home planet as a small steady disc and the sky as deep stars. Walking the spindle's length passes through gradients of light that the station's interior architecture modulates with old, unexplained efficiency. The proxy halls in the central band hold a soft pale steadiness regardless of which way the station is facing. The Synod considers this a comfort. Visitors are more divided.

    A spinal corridor runs the spindle's accessible length. Auxiliary lifts and side passages branch off at intervals. The corridor is wide enough for cargo and crowded only during shift changes and Synod observances. Most of the time it is quiet in a way that is hard to describe to people who have not walked it.
  PROSE
  prose <<~PROSE, section: :people, heading: "Population"
    The station holds three resident populations besides the Synod's proxies and their apprentices.

    **The terminus crew.** A small permanent staff manages the Span Nine terminus, the dock complex, and the comms relay. The terminus crew is not Synod; some of them are not even particularly religious about Synod matters. They have served the post across generations and have their own subculture, their own dialect, and their own quietly held opinion that the Synod's rituals are interesting but the dock's work is what keeps the station relevant to the rest of the system. The terminus crew lives in the Kaleidos-facing quarter, eats at the terminus mess, and intermarries among itself more than is statistically reasonable.

    **The envoys' quarter.** #{ref :sithari, "Sithari"}, the #{ref :tempered_accord, "Tempered Accord"}, the #{ref :echo_ledger_conclave, "Echo Ledger Conclave"}, and #{ref :the_continuity, "the Continuity"} each maintain small permanent missions on-station. The envoys exist because Synod outputs are valuable enough that no major faction is willing to receive them only by Span relay. A diplomat in the envoys' quarter can be in the proxy halls within an hour. They eat together more than they would like, argue with each other in patterns the Synod finds soothing, and have built up a small dense diplomatic culture entirely their own. The envoys' quarter is the only place on the station where political business is the dominant activity.

    **The Threshold Wardens.** See below.

    There is no scholar class. There is no pilgrim economy. People who come to Threshold come to work or to talk to the Synod, and people who finish their business leave. The station is many things; a destination for the curious is not one of them.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Threshold Wardens"
    The Wardens are the corps responsible for the boundary between the active station and the sealed sectors. They are semi-independent of the Synod: paid by the Synod, sworn to the station rather than to the proxies, and structured to refuse Synod orders that would compromise the seals. The arrangement has held since the second lost expedition. The Synod does not love it. The station does not run without it.

    What the Wardens actually do is straightforward and difficult. They maintain the physical seals on the named dangerous sectors — welded bulkheads, monitored hatches, periodic inspection of the resonance state at the boundary. They patrol the seam between active and sealed Threshold and respond to incursion events, which happen rarely and consequentially. They are the only people on the station permitted to open a sealed sector, and the permits required to do so are obtained from the Wardens themselves through a process that the Synod has tried and failed to streamline three separate times.

    A Warden's working kit is heavy: shielding rig, dampening kit, a Clarisant-credentialed Tuner on every patrol team (the Clarisant's #{ref :pelhari, "Pelhari"} chapter trains a small specialist track for Warden work), and weapons that have not been needed in some years and are maintained anyway. Warden recruits come from the dock crews, from outside, occasionally from the Synod itself. They are trained slowly. The corps is small and old and proud and has a reputation across the system as the most disciplined boundary unit anyone employs.
  PROSE
  prose <<~PROSE, section: :tensions, heading: "Sealed Sectors"
    The boundary is not a wall. It is a list.

    Specific identified-dangerous sectors of the station are hard-sealed: bulkheads welded, life support cut, monitoring installed, traffic prohibited. The rest of the station is accessible to anyone with reason to be there. The list is not short. It includes the original ring-era command spine, three deep equipment vaults whose function was once known and is no longer, the sun-facing terminus complex in its entirety, and several smaller sectors named after the lost expeditions that proved them sealed-worthy.

    **The Telleran Sector**, named for the lost expedition, is the largest single sealed area. The seal is maintained at the original boundary. The Wardens patrol it.

    **The Lower Vault Sector** is smaller and more strictly controlled, sealed at a boundary deeper than the original incursion required.

    The other sectors are sealed by policy rather than by incident. The Synod and the Wardens together maintain the list, which is reviewed annually and grows more often than it shrinks.
  PROSE
  prose <<~PROSE, section: :operations, heading: "What the Synod Actually Does"
    The technical detail of the Synod's proxy work — the rituals, the AI custodians, the navigation outputs, the governance consultations, the resonance telemetry — is in the #{ref :lattice_proxy_synod, "Lattice Proxy Synod"} entry. Threshold is where it happens. The proxy halls are the Synod's deepest working space; the envoys come for outputs; the Wardens keep the unspoken parts of the station from waking up unprepared.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    The station has been at L1 for as long as anyone remembers and shows no sign of moving. The Synod has been in residence for #{elapsed :lattice_proxy_synod, approx: true}. The Wardens have held the seals for almost as long. The terminus has carried Span traffic continuously since rediscovery. The envoys cycle through.

    Threshold is not a peaceful place. It is a calm one. The work is steady; the seals hold; the proxies keep talking to whatever they talk to; the corridors stay quiet in their particular way. The arrangement is older than the people running it. Most weeks, nothing happens that the station's residents would describe as interesting. They prefer it that way, and so does everyone else.
  PROSE

  gm_note :appears, "There is no pilgrim trade and no scholar class here, so a visitor without stated business is conspicuous inside a shift. The terminus crew know each other by family and the envoys know each other by mission; there is nobody to be mistaken for."
  gm_note :triggered_by, "Any request to pass a seal goes to the Wardens, who write the permits, patrol the seam, and are sworn to the station rather than to the proxies. Synod backing does not move them — the Synod has tried three times to simplify the process and failed each time."
  gm_note :complicates, "Four permanent missions share the envoys' quarter, eat together more than they would like, and argue in front of each other by habit, so business a party does anywhere on the station reaches all four before it concludes. Hiring one acquires three interested rivals."
end

relate :rel_threshold_in_orbit_of_kaleidos, :in_orbit_of, :threshold_station, :kaleidos do
  prose "Threshold Station holds an orbit of #{ref :kaleidos, "Kaleidos"}, a ring-era installation that outlived its builders and most of their intentions."
end
relate :rel_threshold_terminus_span_nine, :terminus_of, :threshold_station, :span_nine do
  prose "It anchors the far end of #{ref :span_nine, "Span Nine"}, the one length of pre-Glassfall hardline still carrying signal."
end

# --- history (moments) ---
moment :threshold_telleran_lost, year: 2367, of: :threshold_station do
  summary "The Telleran expedition vanished inside Threshold Station in 2367, and the Synod sealed its sector at the expedition boundary."
  prose "The Telleran expedition did not return in 2367 — the deepest the Synod had pushed into the sealed station. Its records of what was found before the loss are extensive, deliberately incomplete, and unpublished. The Telleran Sector was sealed at the expedition's boundary and has been patrolled ever since."
end
moment :threshold_lower_vault_incident, year: 2381, of: :threshold_station do
  summary "One of three Wardens died during a telemetry recovery inside Threshold Station's Lower Vault in 2381."
  prose "Three Wardens entered the deep station to retrieve the lost expedition's telemetry. Two returned. The third's body was recovered three days later, inside the sector, in a position the Wardens have never publicly explained. The Lower Vault was resealed at a deeper boundary than the incursion had required."
end
