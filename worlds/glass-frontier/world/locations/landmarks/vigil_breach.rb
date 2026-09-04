installation :vigil_breach do
  name "Vigil Breach"
  summary "Vigil Breach is a ring-era doorway behind the central glaciers of the Kyther Range, opening only at three recorded celestial alignments."
  playable_as :chronicle_location
  context_tags :surface, :cold, :displacement_zone
  subkind :landmark
  culture :rolls
  tags :surface, :"ring-era", :resonance, :danger, :archives
  prominence :recognized
  status :complete

  descriptive_identity(
    setting:
      "Two pale door-leaves meeting in a vertical seam four people high, " \
      "cut into a cliff behind the central Kyther glaciers, with ice over " \
      "their lower half most of the year. No handle, no track, no writing " \
      "— just a narrow waiting shelf below the doors and glacier on every " \
      "side.",
    activity:
      "Watch parties camp on the shelf ahead of each forecast alignment: " \
      "Synod observers tending instruments, Kyther guides reading the " \
      "slope, traders waiting in the lower shelters with heated cases and " \
      "standing offers for anything brought out.",
    access:
      "The doors answer no one; they draw inward only at three recorded " \
      "alignments of Kaleidos, the sun, and Threshold Station, announced " \
      "by a low tone through the cliff. Getting to the shelf takes Kyther " \
      "guides, and the valley councils bar any sale until a surveyor logs " \
      "the object and a guide confirms where it was found.",
    hazards:
      "Every observed opening has ended before a party could climb from " \
      "the permanent shelter, and the inner door begins to open only as " \
      "the outer leaves close — pressing on means being shut in. The old " \
      "watch shelf has split from the cliff, and the marked route to the " \
      "new one crosses snow that fails the sounding-post test."
  )

  prose <<~PROSE
    Vigil Breach is a ring-era doorway cut into a cliff behind the central glaciers of the #{ref :kyther_range, "Kyther Range"}. Two pale leaves meet in a vertical seam four people high. They have no handle, track, writing, or visible control. Glacial ice covers the lower half of the doorway for most of the year.

    The doors open when Kaleidos, the sun, and #{ref :threshold_station, "Threshold Station"} reach one of three recorded alignments. A low signal tone passes through the cliff first. The ice separates along the seam without melting, and the leaves draw inward. Every observed opening has ended before a party could climb from the nearest permanent shelter, so teams wait on a narrow shelf below the doors.
  PROSE

  prose <<~PROSE, section: :structure, heading: "The First Chamber"
    The threshold leads into a sloping chamber lined with dark plates. Its floor is dry even when meltwater runs over the outer doors. A second doorway stands at the lower end. That door begins to open only after the outer leaves start closing, leaving too little time for a roped party to reach it and return.

    Surveyors have removed loose pieces from the slope without cutting the chamber. Some are mountain crystal carrying ringglass dust. Others are thin, worked strips that remain the same temperature in snow, sunlight, and a heated case. The #{ref :lattice_proxy_synod, "Lattice Proxy Synod"} records their signal response; the #{ref :clarisant, "Clarisant"} tests their effect on structural fields. Neither institution has identified their use.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "Present Day"
    The ice shelf used for the last three opening watches has split from the cliff and moved downslope. Kyther guides have marked a new shelf farther west, beyond a band of snow that fails the sounding-post test. The Synod wants instruments placed there before the next alignment. The guides will carry them only after the unstable slab is cut free, even if that means missing the opening.

    Traders remain in the lower shelters with heated cases and offers for anything brought out. The valley councils prohibit sale until a surveyor has logged an object and a guide has confirmed where it was found.
  PROSE

  gm_note :appears, "Nobody arrives at an opening; everybody waits for one, camped on a narrow shelf below the doors alongside Synod observers, guides, and traders holding the same forecast. Once the low tone runs through the cliff, anyone still down at the permanent shelter has missed it."
  gm_note :triggered_by, "Push for the second doorway and the timing decides it: the inner door only begins to open once the outer leaves have started closing. Crossing is a decision to be shut in, and the rope will not stretch to cover both moves."
  gm_note :complicates, "Traders wait in the lower shelters with heated cases and standing offers for anything carried out, but no sale is lawful until a surveyor logs the object and a guide confirms the find spot. A piece sold around that is a piece no shelter in the range will handle again."
end

relate :rel_vigil_breach_located_kyther_range, :located_in, :vigil_breach, :kyther_range do
  prose "The doorway lies behind glacial ice in the central Kyther Range, above the last maintained road."
end
relate :rel_lattice_proxy_synod_studies_vigil_breach, :studies, :lattice_proxy_synod, :vigil_breach do
  prose "Synod observers compare the signal before each opening with Threshold Station's orbital position."
end
relate :rel_lattice_proxy_synod_maintains_vigil_breach, :maintains, :lattice_proxy_synod, :vigil_breach do
  prose "The Synod maintains the opening clock, fixed instruments, and sealed cases at the survey shelters; it cannot service the doors themselves."
end
relate :rel_clarisant_studies_vigil_breach, :studies, :clarisant, :vigil_breach do
  prose "Clarisant Tuners test the doorway, the surrounding cliff, and every worked fragment for structural response."
end
