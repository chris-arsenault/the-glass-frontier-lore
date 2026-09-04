transport :rainline do
  name "Rainline"
  type_of :flitter
  technology :kite
  summary "Rainline is a narrow Prismwell survey kite built to enter the leading edge of Glassfall showers. Its flank sounders, marker lamps, and sample frame find where a forecast stops being true."
  subkind :vessel
  status :complete
  capacity "Seven crew, two observers, a marker rack, and one folded shower-catch frame"
  tags :transport, :navigation, :ringglass, :orbital, :danger, :resonance
  prominence :recognized

  descriptive_identity(
    appearance: "A narrow survey kite of three separate rings joined by flexible spars, with field sounders " \
                "along both flanks, disposable marker lamps under the keel, and a folded catch frame behind the " \
                "cabin. The rebuilt port spar shows in every Glasswake yard: a pale laminated brace crossing " \
                "the darker original frame like a bone set under the skin.",
    aboard: "Level is unreliable — seats, lockers, and instrument faces follow different rings, colored bands " \
            "mark which ring carries each fitting, and a dropped tool can seem to roll uphill when two frames " \
            "correct against each other. Everyone clips in before the first turn, and hard corrections draw a " \
            "low creak from the repaired spar through the cabin.",
    behavior: "It enters below a Glassfall shower's forecast path and climbs until fine grains strike the " \
              "forward cloth, each ring correcting its own motion so the hull yields where debris pushes " \
              "hardest. Marker lamps drop behind it at every useful change, leaving a string later vessels use " \
              "as a temporary lane. The sample frame opens only on the retreat leg, and a full catch gets cut " \
              "loose before it is allowed to slow the withdrawal."
  )

  prose <<~PROSE
    *Rainline* is a narrow Prismwell survey kite built to enter the leading edge of a #{encyclopedia_ref :glassfall_showers, "Glassfall shower"}. Its job is to discover where a forecast stops being true. The ship carries field sounders along both flanks, disposable marker lamps under the keel, and a folded catch frame behind the cabin for taking a physical sample of the dust it has measured.

    The #{ref :prismwell_kite_guild, "Prismwell Kite Guild"} keeps faster craft and larger collectors. *Rainline* is the vessel pilots ask about because its readings have opened routes through several difficult fronts and because its repaired port spar is visible in every Glasswake yard. A pale brace crosses the darker original frame like a bone set under the skin.
  PROSE

  prose <<~PROSE, section: :structure, heading: "A Ship Built Sideways"
    Survey kites usually turn away from a shower while they still have a clear retreat. *Rainline* can continue sideways across the front. Its cabin, drive, and sample lock sit inside three separate rings joined by flexible spars. Each ring corrects its own motion, allowing the hull to yield when debris pushes one section harder than another.

    The arrangement gives the crew a poor sense of level. Seats, lockers, and instrument faces follow different frames. Colored bands show which ring carries each fitting. A loose object can appear to roll uphill when two frames correct in opposite directions. New observers clip in before the first turn and learn to look at the band around a doorway before stepping through it.

    The marker rack carries simple lamps with broad, deliberately weak field signatures. A lamp records local drift and relays it until impact, exhaustion, or recovery. Rainline crews name only the first and last marker in a string. Everything between them is a number spoken once and written twice.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Reading a Shower"
    The ship enters below the forecast path and climbs until fine grains begin striking the forward cloth. One pilot holds the kite, another watches the debris, and two observers compare the field sounders with what the hull is physically taking. A forecast changes when those accounts diverge, even if the instruments still agree with one another.

    Marker lamps go out behind the ship at each useful change: a bend in the stream, a clean interval, the edge of a large fragment's wake. Later vessels use the string as a temporary lane. The lights describe where *Rainline* passed. They do not promise the shower remained there.

    The sample frame opens only on the retreat leg. Catch cloth gathers grains from the portion of the front the ship has already crossed, giving Glasswake sorters a way to compare instrument response with actual material. A valuable catch can pay for the flight. The crew still abandons it if closing the frame would delay withdrawal.
  PROSE

  prose <<~PROSE, section: :history, heading: "The Broken Spar"
    The port spar failed during a collection flight above Miraeth when a rigid catch panel took a fragment broadside. The other rings carried the cabin clear while the damaged frame rotated around them. Grove watchers tracked the falling panel and guided it into an unplanted basin. No one aboard died, and the panel did not cut a clear-veined stand.

    Prismwell rebuilt the spar with a laminated brace made in #{ref :lumenshard, "Lumenshard"}. The repair bends further under load than the original frame and returns a low creak through the cabin during hard corrections. Yard crews have replaced the brace twice with pieces cut to the same pattern. Pilots refuse proposals to make the port and starboard sides match.

    The accident changed guild practice. Survey vessels now fold their catches before crossing a registered grove, and ground watchers receive the ship's retreat line before the first sample opens.
  PROSE

  prose "#{embed :spreading_front}", section: :present_day, heading: "The Spreading Front"

  gm_note :appears, "Anyone new aboard is clipped in before the first turn and told to read the colored band around a doorway before stepping through it, because seats, lockers, and instrument faces belong to three separately correcting rings. " \
                    "Dropped gear can appear to roll uphill."
  gm_note :triggered_by, "An observer who reports what the hull is physically taking against what the field sounders read can change the published forecast, and the divergence counts even when the instruments still agree with one another. " \
                         "The crew expects that call made out loud."
  gm_note :complicates, "The sample frame opens only on the retreat leg, and the crew cuts a full catch loose rather than spend the seconds needed to close it. " \
                        "Anyone aboard who has paid for material, or whose plan needs the sample, discovers this with the front already moving."
end

relate :rel_prismwell_maintains_rainline, :maintains, :prismwell_kite_guild, :rainline do
  prose "Prismwell's Glasswake yards maintain *Rainline* and issue its shower forecasts."
end
relate :rel_rainline_operates_spreading_front, :operates_in, :rainline, :spreading_front do
  prose "*Rainline* enters the Spreading Front to lay temporary marker strings and collect samples."
end
relate :rel_rainline_operates_glasswake, :operates_in, :rainline, :glasswake do
  prose "The survey kite flies from the old collection wells at #{ref :glasswake, "Glasswake"}."
end
relate :rel_rainline_resonates_miraeth, :resonates_with, :rainline, :miraeth do
  prose "Its rebuilt port spar carries living-crystal laminate made after a failed panel fell near Miraeth."
end
