geographic_location :vastine do
  name "Vastine"
  subkind :celestial_body
  status :complete
  tags :cosmology, :"outer-system", :ecology, :trade, :religion
  prominence :recognized

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
