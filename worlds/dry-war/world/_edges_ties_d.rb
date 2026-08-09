# Lateral ties written to join three pairs of separated components: the Mulberry
# Court separation rooms to American ghost pharmacology through the halving
# count, and the Choir to the Gatekeepers through the seam pass. Ids are prefixed rel_td_
# so this file cannot collide with another edge file.

# ---- A. the halving count ----
relate :rel_td_halving_practiced_by_root_clinics, :manifests_at, :the_halving_count, :mulberry_court_clinic do
  prose "The card's ruled first section and the intake line for the date of the last dose."
end
relate :rel_td_halving_regulates_leave, :regulates, :the_halving_count, :separation_leave do
  prose "A seven-day leave is shorter than the count of anything that halves in nine days, and no procedure shortens the count."
end
relate :rel_td_halving_regulates_ghost, :regulates, :the_halving_count, :ghost_pharmacology do
  prose "A substitute must hold the replaced drug's signature across the whole of that drug's count."
end
relate :rel_td_halving_practiced_by_counties, :practiced_by, :the_halving_count, :the_dead_counties, since: 2065
relate :rel_td_halving_at_bench, :manifests_at, :the_halving_count, :cabin_creek_bench
relate :rel_td_halving_caused_fever_finding, :caused_by, :the_halving_count, :the_second_room_fever do
  prose "Ordinary ward practice for as long as anyone remembers; written into the western rooms' paperwork only after 2086."
end

# ---- the case ----
relate :rel_td_fever_at_mulberry, :manifests_at, :the_second_room_fever, :mulberry_court_clinic
relate :rel_td_fever_conducted_by_sun, :conducted_by, :the_second_room_fever, :sun_yilan
relate :rel_td_fever_during_reclamation, :active_during, :the_second_room_fever, :the_reclamation
relate :rel_td_fever_regulates_leave, :caused, :the_second_room_fever, :separation_leave do
  prose "The completion card's ruled section and the intake card's last-dose line date from the withdrawn proposal."
end

# ---- the bench ----
relate :rel_td_bench_in_appalachia, :located_in, :cabin_creek_bench, :appalachia
relate :rel_td_counties_maintain_bench, :maintains, :the_dead_counties, :cabin_creek_bench, since: 2071
relate :rel_td_bench_depends_ghost, :depends_on, :ghost_pharmacology, :cabin_creek_bench do
  prose "A compound sold on a partial count is a compound the bench did not pass."
end
relate :rel_td_bench_depends_orphans, :depends_on, :cabin_creek_bench, :orphan_machines do
  prose "A severed bedside monitor of a pattern older than the coalitions, wired to a paper chart recorder."
end
relate :rel_td_bench_depends_pharma, :models, :cabin_creek_bench, :psychopharmacological_infrastructure, since: 2071 do
  prose "The bench charts the regimen it means to displace before it charts anything that replaces it."
end

# ---- B. the yard ----
relate :rel_td_yard_in_hexi, :located_in, :xincheng_yard, :the_hexi_corridor
relate :rel_td_gatekeepers_maintain_yard, :maintains, :the_gatekeepers, :xincheng_yard, since: 2074
# One yard of eight cells does not regulate a resource class. The Gatekeepers do,
# and the yard is where they do part of it — which `maintains` above carries.
relate :rel_td_yard_mentions_strains, :mentions, :xincheng_yard, :severed_strains
relate :rel_td_gatekeepers_regulate_strains, :regulates, :the_gatekeepers, :severed_strains, since: 2074
relate :rel_td_yard_depends_moss, :depends_on, :xincheng_yard, :gate_moss
relate :rel_td_yard_depends_sterile, :depends_on, :xincheng_yard, :sterile_machines
relate :rel_td_pres_petition_yard, :petitions, :the_preservationists, :xincheng_yard, since: 2074

# ---- the challenger ----
relate :rel_td_dequindre_severed, :severed_from, :dequindre, :caretaker
relate :rel_td_dequindre_derived_feral, :derived_from, :dequindre, :feral_models
relate :rel_td_dequindre_part_orphans, :part_of, :dequindre, :orphan_machines
relate :rel_td_choir_possesses_dequindre, :possesses, :the_choir, :dequindre, since: 2079
relate :rel_td_dequindre_models_line, :models, :dequindre, :the_held_line, since: 2079

# ---- the Yumen fount ----
relate :rel_td_fount_at_yumen, :located_in, :the_yumen_fount, :yumen_gate
relate :rel_td_gatekeepers_possess_fount, :possesses, :the_gatekeepers, :the_yumen_fount, since: 2071
relate :rel_td_ma_maintains_fount, :maintains, :ma_renqing, :the_yumen_fount, since: 2072
relate :rel_td_brokers_supply_yumen, :supplies, :the_brokers, :yumen_gate, since: 2071
relate :rel_td_fount_depends_brokers, :depends_on, :the_yumen_fount, :the_brokers

# ---- the old sixth ----
relate :rel_td_belfry_possesses_sixth, :possesses, :ste_anne_belfry, :the_old_sixth
relate :rel_td_cecile_maintains_sixth, :maintains, :cecile_ouellette, :the_old_sixth
relate :rel_td_odile_studies_sixth, :studies, :odile_marchand, :the_old_sixth, since: 2087
relate :rel_td_caretaker_possesses_sixth, :possesses, :caretaker, :the_old_sixth, since: 2074
