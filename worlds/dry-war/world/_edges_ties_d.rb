# Lateral ties written to join three pairs of separated components: the Mulberry
# The Mulberry Court fever, the Cabin Creek bench, and the seam pass between
# the Choir and the Gatekeepers. Ids are prefixed rel_td_
# so this file cannot collide with another edge file.

# ---- the Room Two fevers ----
relate :rel_td_fever_at_mulberry, :manifests_at, :the_second_room_fever, :mulberry_court_clinic
relate :rel_td_fever_conducted_by_sun, :conducted_by, :the_second_room_fever, :sun_yilan
relate :rel_td_fever_during_reclamation, :active_during, :the_second_room_fever, :the_reclamation
relate :rel_td_fever_depends_film, :depends_on, :the_second_room_fever, :separation_film

# ---- the bench ----
relate :rel_td_bench_in_appalachia, :located_in, :cabin_creek_bench, :appalachia
relate :rel_td_counties_maintain_bench, :maintains, :the_dead_counties, :cabin_creek_bench, since: 2071
relate :rel_td_ghost_depends_bench, :depends_on, :ghost_pharmacology, :cabin_creek_bench
relate :rel_td_bench_depends_orphans, :depends_on, :cabin_creek_bench, :orphan_machines

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
relate :rel_td_dequindre_models_choir, :models, :dequindre, :the_choir, since: 2079

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
