geographic_location :vastine do
  name "Vastine"
  summary "Vastine is the seventh planet of the Kaleidos system, a water giant whose global ocean lies below its deep atmosphere and inhabited moons."
  type_of :celestial_body
  playable_as :chronicle_location
  context_tags :"realm:outer_system"
  subkind :celestial_body
  status :complete
  tags :cosmology, :"outer-system", :ecology, :trade, :religion
  prominence :recognized
  position frame: :kaleidos_system_chart, radius: 7, angle_deg: 46

  descriptive_identity(
    setting:
      "A water giant whose atmosphere deepens into a global ocean with " \
      "no known solid surface, filling its moons' skies with blue-gray " \
      "bands and white storms. Sounding returns show large slow " \
      "animals moving in the deep between warm current boundaries, " \
      "known only through instruments and recovered fragments.",
    activity:
      "The inhabited moons trade ice, instruments, food cultures, and " \
      "refined atmospheric material among themselves, with Pelhari " \
      "holding the largest port. Communities name recurring band " \
      "patterns, set civic dates by their return, and research flights " \
      "release disposable sounding chains into an ocean their crews " \
      "cannot follow.",
    hazards:
      "When the radiation and storm fields rise, safe transfer windows " \
      "close before a delayed ship can arrive, and a neighboring moon " \
      "becomes harder to reach than Kaleidos. Chains come back cut, " \
      "crushed, or carrying tissue from animals some traditions call " \
      "ancestors and hunting crews call valuable material — both " \
      "claims arriving with the sample."
  )

  prose <<~PROSE
    Vastine is the seventh planet, a water giant whose atmosphere deepens into a global ocean without a known solid surface. Its inhabited moons include #{ref :pelhari, "Pelhari"}, the largest center of learning and trade in the outer system.

    From those moons, Vastine fills the sky with blue-gray bands and white storms. Moon settlements track the bands as weather and calendar. Ships use them only as a visual check because winds carry the visible features away from their predicted longitude.
  PROSE

  prose <<~PROSE, section: :biology, heading: "The Deep Ocean"
    Sounding instruments detect large moving bodies below the cloud-lit layers. The clearest returns show slow animals traveling between warmer current boundaries and rising toward mineral plumes. No recovered sample establishes their full anatomy or depth range.

    Research flights remain above the pressure limit of their return vessels. They release disposable sounding chains and collect water from the upper ocean. A chain can descend farther than a crew can follow and may return cut, crushed, or carrying tissue from an animal never seen directly.
  PROSE

  prose <<~PROSE, section: :culture, heading: "The Faces of Vastine"
    Moon communities name recurring band patterns and organize civic dates around their return. Pelhari distinguishes storm-face, hush-face, and dark-face. Other moons use different divisions and dispute whether apparently similar patterns belong to the same cycle.

    Several traditions treat the deep animals as ancestors, witnesses, or gods. Hunting crews, where local law permits them, describe the same bodies as dangerous fauna and valuable biological material. Both practices rely on uncertain knowledge of creatures encountered through instruments and fragments.
  PROSE

  prose <<~PROSE, section: :trade, heading: "A System of Moons"
    The moons exchange ice, instruments, food cultures, and refined atmospheric material. Pelhari handles the largest port and the outer terminus of Span Nine, but smaller settlements maintain independent routes and civic calendars.

    Travel between moons is routine when Vastine's radiation and storm fields are quiet. During a strong disturbance, a nearby moon can become harder to reach than Kaleidos because safe transfer windows close before a delayed ship can arrive.
  PROSE

  gm_note :appears, "Each of Vastine's moons names its own band faces and sets civic dates by them; #{ref :pelhari, "Pelhari"} counts storm-face, hush-face, and dark-face, and its neighbors divide the cycle differently. " \
                    "A date agreed across two moons has to be pinned to something else or the parties arrive apart."
  gm_note :complicates, "A disturbance in Vastine's radiation and storm fields closes transfer windows before a delayed ship can cross. " \
                        "The next moon over becomes harder to reach than Kaleidos, and help stays visible in the sky the whole time."
  gm_note :triggered_by, "A sounding chain dropped into the deep ocean comes back cut, crushed, or carrying tissue from an animal nobody has seen whole. " \
                         "Whoever it is shown to calls it either a specimen or an ancestor, and both readings arrive with a claim on the sample."
end

relate :rel_vastine_orbits_the_sun, :orbits, :vastine, :the_sun do
  prose "Vastine is the seventh planet from the sun."
end
relate :rel_vastine_inner_of_lithren, :inner_of, :vastine, :lithren do
  prose "Vastine orbits inside Lithren, the outermost planet."
end
relate :rel_vastine_part_of_system, :part_of, :vastine, :kaleidos_system do
  prose "Vastine belongs to the Kaleidos system."
end
