phenomenon :sideways_storm do
  name "Sideways Storm"
  aka "The Sideways Storm"
  summary "Sideways Storm is Ashvane's recurrent lateral pressure front, bowing every rigid length above its current wavelength toward one fixed bearing and releasing the stored motion behind it."
  type_of :loadfront
  subkind :physical_phenomenon
  status :complete
  tags :resonance, :"outer-system", :danger, :"kinetic-freq"
  prominence :recognized
  trigger "The charged front reaches a continuous rigid member longer than the pressure wavelength measured at that point on Ashvane"
  effect "Every qualifying length bows toward the storm's fixed lateral bearing and stores the bend until the rear of the front passes"
  recurrence "One front circles Ashvane through atmosphere, ground, and coupled structures, returning with the same lateral bearing while its local wavelength varies"
  ending "A member snaps back as the rear edge passes unless it has broken, been shortened below the wavelength, or been latched in the bowed position"
  mitigation "Build long frames in releasable sections, open their joints before arrival, or latch the stored bend into a controlled return"
  anchor_behavior "Follows continuous rigid length rather than enclosed volume, crossing from ground into every coupled member long enough to take the load"
  medium "Charged pressure moving through Ashvane's atmosphere, ground, structural frames, vehicles, and living bone"
  content "A common lateral load stored in every continuous rigid length above the front's local wavelength"
  hazard "The shared snapback can sweep landing fields, strike docks with their own vessels, misfire weapons, and break load-bearing frames or bones"

  descriptive_identity(
    signs: "A dark pressure line crosses the horizon; survey boards post its lateral arrow and cutoff length while exposed frames begin bowing toward that bearing.",
    effects: "Every continuous rigid member longer than the local wavelength stores the same sideways bend and releases it when the rear edge passes.",
    hazards: "Early breaks throw fragments across the front, while surviving towers, vessels, tools, and bones return through whatever occupies their original line."
  )

  prose <<~PROSE
    Ashvane survey boards call the returning front Sideways Storm and draw its bearing as a horizontal arrow. The front crosses #{ref :ashvane, "Ashvane"} as a dark line in pressure shimmer. Ahead of it, towers lean, weapon barrels turn away from their sights, radiator frames bow over the towns, and hull spines flex inside their plating. Opposing structures bend toward the same bearing.

    The front stores its lateral load in continuous length. When the rear edge passes, every surviving member returns. A tower can sweep a landing field. A line of moored vessels can strike their docks in sequence. A long bone inside a large animal can break before the surrounding body has begun to move.
  PROSE
  prose <<~PROSE, section: :mechanics, heading: "The Cutoff Length"
    The lateral bearing remains stable from one circuit to the next. The cutoff length does not. Ground composition, fracture activity, and coupled ringglass change the local pressure wavelength, so town surveys publish both measurements. A beam safe in one district may take the full bend after being moved across a ridge.

    A short test rail at each survey post shows the load directly. Its nested lengths release in sequence as the front passes, establishing the current cutoff before the main frames begin to move. Builders and port crews read that sequence beside the arrival forecast.
  PROSE
  prose <<~PROSE, section: :structure, heading: "Built to Release"
    Ashvane settlements divide radiator combs, quarry gantries, dock frames, and long roof lines with releasable joints. Crews open the joints before the front arrives. The separated lengths still bend, but their return has too little reach to cross a work yard or tear the whole frame from its bed.

    Route crews sometimes latch one prepared spar through the crossing. Releasing it behind the storm can throw a vessel clear of damaged ground. Fighters use the same stored return to fire a bowed gun around cover or to redirect a brace through an enemy structure, but the survey arrow governs every such use: the front supplies one bearing, not the user's preferred one.
  PROSE

  gm_note :appears, "Every continuous rigid object longer than the posted cutoff begins bowing toward the survey arrow, giving the scene one crossing of the front to release joints, latch a useful return, or clear its sweep."
end

relate :rel_sideways_storm_manifests_ashvane, :manifests_at, :sideways_storm, :ashvane
