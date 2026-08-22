installation :whitefoot do
  name "Whitefoot"
  playable_as :chronicle_location
  subkind :station
  tags :surface, :"ring-era", :"signal-freq", :resonance
  prominence :recognized
  status :complete

  prose <<~PROSE
    The surface terminus of #{ref :span_nine, "Span Nine"}, outside Sithari's northern municipal boundary. The old conduit meets a low ringglass platform in an open field and rises from it as a white filament. The common name describes the broad flare of light where the filament enters the platform.
  PROSE

  prose <<~PROSE, section: :structure, heading: "The Surface Yard"
    Whitefoot contains the terminus platform, isolated signal rooms, a customs hall, and the converter banks that reduce Span traffic to bandwidth modern systems can carry. Nothing in the yard controls the conduit. Operators select channels, verify receiving stations, and disconnect local equipment when a response exceeds its limits.

    A buried signal trunk and an electric rail line connect the yard to Sithari's Old Campus. The trip is short enough for daily work and long enough that a Span closure does not place the city above an active terminus.
  PROSE

  prose <<~PROSE, section: :history, heading: "Before the City"
    The platform, Pelhari observatory, and Threshold Station all predate the modern settlements around them. Surviving records do not state why the conduit joined those facilities. Pelhari grew around its relay. Sithari's post-Glassfall administration grew around the nearby campus that had the instruments and records needed to restore Whitefoot.

    Reactivation increased Sithari's reach, but the city did not acquire the terminus by chance or contain it within the capital. Whitefoot remains a separate station under Sitharian maintenance and its own access rules.
  PROSE
end

relate :rel_whitefoot_located_on_kaleidos, :located_in, :whitefoot, :kaleidos do
  prose "Whitefoot stands on Kaleidos's surface north of Sithari."
end

relate :rel_whitefoot_terminus_span_nine, :terminus_of, :whitefoot, :span_nine do
  prose "The surface end of Span Nine grounds at Whitefoot."
end

relate :rel_continuity_maintains_whitefoot, :maintains, :the_continuity, :whitefoot, since: 2305 do
  prose "Sithari's Continuity maintains the local yard, rail, and converter banks without controlling the Span itself."
end

relate :rel_whitefoot_depends_on_sithari, :depends_on, :whitefoot, :sithari do
  prose "Whitefoot depends on Sithari for staff, power distribution, customs, and surface transport."
end
