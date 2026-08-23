# The Viewer records simulation ticks as half-open era intervals. The published
# snapshot is the state at tick 240, immediately after the final Frozen Peace
# interval and after relationship changes stamped at that boundary.
timeline do
  unit :tick

  era :the_great_thaw, starts: 0, length: 27, title: "The Great Thaw",
      description: <<~MD
        The great ice sheets retreat, revealing new waters rich with krill and ancient secrets frozen beneath. Bold explorers from the Aurora Stack and the Nightfall Shelf venture forth to claim territory, founding colonies that will shape penguin civilization for generations. Guild halls rise in every settlement, their charters written on sheets of pressed ice. Far beyond the colony waters, orca pods patrol the deep currents — distant shapes glimpsed by scouts, stories traded in hushed tones at the ice-edge. It is an age of optimism, where even the most marginal rookery dreams of becoming a great berg.
      MD

  era :the_faction_wars, length: 42, title: "The Faction Wars",
      description: <<~MD
        The bounty of the Thaw dwindles as colonies multiply beyond what the waters can sustain. Trade routes become battle lines; old alliances fracture along cultural fault lines between the shadow-brokers of the Nightfall Shelf and the mystics of the Aurora Stack. Factions emerge within colonies, each claiming the true path to survival. Heroes rise not from exploration but from war, their names etched in the ice memorials that dot every berg. Along the outer currents, orca raiding parties grow bolder — isolated fishing crews vanish, and border colonies report strange songs echoing from the deep.
      MD

  era :the_clever_ice_age, length: 54, title: "The Clever Ice Age",
      description: <<~MD
        War-weary but unbowed, penguin-kind turns inward to solve problems through cleverness rather than conflict. The great guilds establish schools of magic and workshops of invention, competing to unlock the secrets of fire-core crystals and spectralum lenses. Aurora Stack mystics codify the old ice-memory rituals while Nightfall Shelf engineers devise machines to harvest krill at unprecedented scales. It is an age of wonders, though some whisper that not all discoveries should be made. And from the outer waters come darker whispers still — the orca war-pods are massing, their scouts circling ever closer, testing the defences that penguin-kind has yet to build.
      MD

  era :the_orca_incursion, length: 58, title: "The Orca Incursion",
      description: <<~MD
        The orcas come not as raiders but as conquerors, their war-pods striking with coordination that speaks of dark intelligence. Old feuds between the Aurora Stack and the Nightfall Shelf fade as colonies band together against extinction. The innovations of the previous age become weapons; the heroes of this era are defenders who hold the line at impossible odds. Every culture contributes what it knows best: Shelf shadow-craft and espionage, Stack mystical barriers, and the desperate courage of those with nowhere left to retreat.
      MD

  era :the_frozen_peace, length: 59, title: "The Frozen Peace",
      description: <<~MD
        The orca threat recedes, leaving scars that will take generations to heal. Survivors rebuild not just colonies but the bonds between cultures, forging new traditions that blend Aurora Stack mysticism with Nightfall Shelf shadow-craft. The great festivals return, now tinged with remembrance for the fallen. Guilds that once competed now cooperate, their combined knowledge preserving what was nearly lost. It is an age of quiet determination, where every new chick represents a victory against oblivion.
      MD

  now year: 240
end
