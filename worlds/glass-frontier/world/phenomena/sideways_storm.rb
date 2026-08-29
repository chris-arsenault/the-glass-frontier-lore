phenomenon :sideways_storm do
  name "The Sideways Storm"
  summary "The Sideways Storm is a pressure front on Ashvane that bows every long straight member in one direction and releases them together behind it."
  type_of :resonant_pressure_front
  subkind :physical_phenomenon
  status :complete
  tags :resonance, :"outer-system", :danger, :"kinetic-freq"
  prominence :recognized
  trigger "The charged front reaches a straight structural member longer than the local pressure wavelength"
  effect "Beams, barrels, towers, hull spines, and exposed bones bow toward one fixed sideways direction regardless of their orientation"
  recurrence "The same front circles Ashvane through atmosphere, ground, and connected structures, returning with a stable lateral vector"
  ending "Each member snaps back when the rear of the front passes unless it breaks, is cut short, or is latched into the bowed shape"
  mitigation "Segment long members, release their joints before the front, or bind the stored bend into a controlled throw"
  anchor_behavior "Follows continuous lengths rather than enclosed volume and crosses from ground into any rigid member coupled to it"
  medium "Charged pressure moving through Ashvane's atmosphere, ground, and rigid structures"
  hazard "Simultaneous snapback turns towers, weapons, vehicles, and skeletal supports into stored-force weapons"

  descriptive_identity(
    signs: "A dark pressure line crosses the horizon while every mast, beam, barrel, and other long straight member bows in the same sideways direction.",
    effects: "The front stores a common lateral bend in rigid lengths, then releases the stored motion together as its rear passes.",
    hazards: "Members that snap early throw fragments across the front; those that survive can sweep decks, overturn vessels, and fire misaligned weapons when they return."
  )

  prose <<~PROSE
    The Sideways Storm crosses #{ref :ashvane, "Ashvane"} as a dark line in pressure shimmer. Ahead of it, long straight things begin to bow. Towers lean. Weapon barrels turn away from their sights. Hull spines flex inside their plating. The direction is the same everywhere under the front, even when two structures face opposite ways.

    The storm stores force rather than simply bending matter. When the rear of the front passes, every surviving length returns at once. A tower can sweep a landing field. A line of moored vessels can strike their docks in sequence. A long bone inside a large animal can break before the skin around it has begun to move.
  PROSE
  prose <<~PROSE, section: :applications, heading: "Taking the Throw"
    Ashvane settlements build sacrificial joints into exposed frames and release them before the front arrives. A divided beam bends in short sections and returns without enough reach to kill. Anything left continuous becomes a reservoir of motion.

    Fighters and route crews use that reservoir. A latched spar can throw a vessel clear of damaged ground when released behind the storm. A prepared gun can fire around cover while bowed and return to its original aim afterward. Cutting an enemy brace at the wrong moment makes the rest of its stored bend choose a new path through the structure. The storm is not aimed, but the return can be.
  PROSE

  gm_note :appears, "Every long straight object in the scene begins bowing the same way, giving the group one crossing of the front to cut, latch, aim, or escape the stored return."
end

relate :rel_sideways_storm_manifests_ashvane, :manifests_at, :sideways_storm, :ashvane
