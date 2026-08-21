# Shell entities — known to the graph/index but not yet written as pages.
# status :shell suppresses file rendering; they exist only as edge endpoints + index rows.
geographic_location :ashenmaw do
  name "Ashenmaw"
  subkind :celestial_body
  status :shell
  prominence :recognized
end
resource :communication_shard do
  name "Communication Shard"
  subkind :data
  status :shell
  dm!
end
geographic_location :crucible do
  name "Crucible"
  subkind :celestial_body
  status :shell
  prominence :recognized
end
resource :crystal_core_lantern do
  name "Crystal-core lantern"
  subkind :device
  status :shell
  prominence :mythic
end
npc :duthrek do
  name "Duthrek"
  subkind :leader
  status :shell
  prominence :recognized
end
geographic_location :kaleidos_orbit do
  name "Kaleidos Orbit"
  subkind :orbit
  status :shell
  prominence :mythic
end
npc :ol_dent do
  name "Ol'dent"
  subkind :specialist
  status :shell
  prominence :forgotten
end
faction :ring_collective do
  name "Ring Collective"
  subkind :government
  status :shell
  prominence :recognized
end
npc :shei_lush do
  name "Shei Lush"
  subkind :leader
  status :shell
  prominence :forgotten
end
era :signal_famine do
  name "Signal Famine"
  subkind :historical_period
  status :shell
end
era :the_accord do
  name "The Accord"
  subkind :historical_period
  status :shell
  prominence :renowned
end
conflict :the_bitter_reach do
  name "The Bitter Reach"
  subkind :war
  status :shell
  prominence :renowned
end
conflict :the_bloom do
  name "The Bloom"
  subkind :war
  status :shell
  prominence :renowned
end
era :the_contested_reach do
  name "The Contested Reach"
  subkind :historical_period
  status :shell
  prominence :renowned
end
npc :the_dissident do
  name "The Dissident"
  subkind :dissident
  status :shell
  dm!
end
geographic_location :the_fracture do
  name "The Fracture"
  subkind :celestial_body
  status :shell
  prominence :renowned
end
concept :the_keel do
  name "the-keel"
  subkind :physical_system
  status :shell
end
installation :the_pale_shard do
  name "The Pale Shard"
  subkind :landmark
  status :shell
  prominence :recognized
end
era :the_rekindling do
  name "The Rekindling"
  subkind :historical_period
  status :shell
  prominence :renowned
end
era :the_ring_age do
  name "The Ring Age"
  subkind :historical_period
  status :shell
  prominence :mythic
end
geographic_location :the_sun do
  name "The Sun"
  subkind :celestial_body
  status :shell
  prominence :mythic
end
geographic_location :vastine do
  name "Vastine"
  subkind :celestial_body
  status :shell
  prominence :recognized
end
npc :venn_talis do
  name "Venn Talis"
  subkind :npc
  status :shell
  prominence :recognized
end
geographic_location :vitrael do
  name "Vitrael"
  subkind :celestial_body
  status :shell
  prominence :recognized
end

# ---- relationships sourced from shell entities (no page; prose held here until
#      the shell is fleshed out into a full entity) ----

# Planetary order of the Kaleidos system (sunward → out)
relate :rel_kaleidos_orbits_the_sun, :orbits, :kaleidos, :the_sun do
  prose "#{ref :kaleidos, "Kaleidos"} holds the system's habitable middle distance from #{ref :the_sun, "the sun"} — the world the ring was built around and everything else is measured against."
end
relate :rel_kaleidos_inner_of_korvath, :inner_of, :kaleidos, :korvath do
  prose "It orbits inside #{ref :korvath, "Korvath"}, the next world out."
end
relate :rel_crucible_orbits_the_sun, :orbits, :crucible, :the_sun do
  prose "#{ref :crucible, "Crucible"} runs the innermost orbit, scorched and close to #{ref :the_sun, "the sun"}."
end
relate :rel_crucible_inner_of_kaleidos, :inner_of, :crucible, :kaleidos do
  prose "It is the world inside #{ref :kaleidos, "Kaleidos"}, first of the system's order."
end
relate :rel_korvath_orbits_the_sun, :orbits, :korvath, :the_sun do
  prose "#{ref :korvath, "Korvath"} orbits beyond Kaleidos, a temperate surface world of old ports, river settlements, and the northern industrial belt where #{ref :coremark, "Coremark"} began."
end
relate :rel_korvath_inner_of_vitrael, :inner_of, :korvath, :vitrael do
  prose "It sits just inside #{ref :vitrael, "Vitrael"}."
end
relate :rel_vitrael_orbits_the_sun, :orbits, :vitrael, :the_sun do
  prose "#{ref :vitrael, "Vitrael"} holds a middle-outer orbit of #{ref :the_sun, "the sun"}."
end
relate :rel_vitrael_inner_of_ashenmaw, :inner_of, :vitrael, :ashenmaw do
  prose "It orbits inside #{ref :ashenmaw, "Ashenmaw"}."
end
relate :rel_ashenmaw_orbits_the_sun, :orbits, :ashenmaw, :the_sun do
  prose "#{ref :ashenmaw, "Ashenmaw"} is an outer world, anchor of the far end of #{ref :keel, "the Keel"}."
end
relate :rel_ashenmaw_inner_of_the_fracture, :inner_of, :ashenmaw, :the_fracture do
  prose "It sits inside #{ref :the_fracture, "the Fracture"}."
end
relate :rel_ashvane_orbits_ashenmaw, :orbits, :ashvane, :ashenmaw do
  prose "#{ref :ashvane, "Ashvane"} orbits #{ref :ashenmaw, "Ashenmaw"}; its Shadewell port receives the Keel while surface towns maintain their own water, food, cooling, and repair systems."
end
relate :rel_the_fracture_orbits_the_sun, :orbits, :the_fracture, :the_sun do
  prose "#{ref :the_fracture, "the Fracture"} runs a far, cold orbit — and the Bloom Zones' worst edge reaches toward it."
end
relate :rel_the_fracture_inner_of_vastine, :inner_of, :the_fracture, :vastine do
  prose "It is the world inside #{ref :vastine, "Vastine"}, the outermost."
end
relate :rel_vastine_orbits_the_sun, :orbits, :vastine, :the_sun do
  prose "#{ref :vastine, "Vastine"} holds the system's outermost orbit, with #{ref :pelhari, "Pelhari"} among its moons."
end

# The Bitter Reach — the second war (shell)
relate :rel_bitter_reach_caused_tempered_accord, :caused, :the_bitter_reach, :tempered_accord do
  prose "Exhaustion with the #{ref :the_bitter_reach, "Bitter Reach"} is what finally produced the #{ref :tempered_accord, "Tempered Accord"} — a framework born not of idealism but of nobody wanting to do that again."
end

# The Signal Famine — the long silence (shell)
relate :rel_signal_famine_caused_tuners, :caused, :signal_famine, :tuners do
  prose "The Famine made the #{ref :tuners, "Tuners"}: cut off from elven science, isolated communities relearned resonance by hand, as a craft rather than a theory."
end
relate :rel_signal_famine_caused_fermata_station, :caused, :signal_famine, :fermata_station do
  prose "It made #{ref :fermata_station, "Fermata Station"} what it is — sixty years sealed alone, long enough for a hab to calcify into something no outside designer would have chosen."
end

# Shell NPCs and their ties
relate :rel_shei_lush_chairs_fermata, :chairs, :shei_lush, :fermata_station, since: 2427 do
  prose "#{ref :shei_lush, "Shei Lush"} chairs #{ref :fermata_station, "Fermata Station"}'s governing ensemble — such as chairing means on a hab run by jazz."
end
relate :rel_ol_dent_maintains_fermata, :maintains, :ol_dent, :fermata_station, since: 2426 do
  prose "#{ref :ol_dent, "Ol'dent"} keeps #{ref :fermata_station, "Fermata Station"} running — the quiet hand on the resonance systems that let the rest of it improvise."
end
relate :rel_dissident_taught_tuners, :taught, :the_dissident, :tuners, dm: true do
  prose "The #{ref :the_dissident, "Dissident"} — the rogue elf who refused to vanish — taught the early #{ref :tuners, "Tuners"} a simplified, human-accessible resonance craft. Several Clarisant lineages descend from that single teaching line, and the guild has no idea."
end
relate :rel_dissident_member_of_elves, :member_of, :the_dissident, :elves, since: 2050, dm: true do
  prose "They were #{ref :elves, "elven"} — one of their own who judged that stripping the system of resonance knowledge was the greater crime, and walked the other way."
end
relate :rel_venn_talis_member_coriolis_breach, :member_of, :venn_talis, :coriolis_breach, since: 2358, till: 2363 do
  prose "#{ref :venn_talis, "Venn Talis"} was at the heart of the #{ref :coriolis_breach, "Coriolis Breach"} — the forced-entry incident that became a rallying point for hab sovereignty."
end

# --- the Dissident's hidden history (dm moments) ---
moment :dissident_begins_teaching, year: 2160, of: :the_dissident, dm: true do
  prose "Rejecting the collective decision to vanish, the #{ref :the_dissident, "Dissident"} settled in a surface community in the early #{ref :signal_famine, "Signal Famine"}, passing as human, and began teaching a simplified, human-accessible resonance craft — seeding one of the founding lineages of #{ref :tuners, "Tuning"}."
end
moment :dissident_vanishes, year: 2180, of: :the_dissident, dm: true do
  prose "After roughly twenty years the Dissident vanished — recalled by elven authorities, killed, or simply moved on. No record survives. The teaching line outlived the teacher, and the #{ref :clarisant, "Clarisant"} still carries techniques with elven fingerprints it cannot read."
end
