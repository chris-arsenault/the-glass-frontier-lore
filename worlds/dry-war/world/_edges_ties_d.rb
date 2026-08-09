# Lateral ties written to join three pairs of separated components: the Mulberry
# Court separation rooms to American ghost pharmacology through the halving
# count; the Choir to the Gatekeepers through the seam pass; and the Ste. Anne
# ring to the Yumen fee trays through the letter match. Ids are prefixed rel_td_
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
relate :rel_td_yard_depends_schedule, :depends_on, :xincheng_yard, :the_gate_schedule
relate :rel_td_pres_petition_yard, :petitions, :the_preservationists, :xincheng_yard, since: 2074

# ---- the challenger ----
relate :rel_td_dequindre_severed, :severed_from, :dequindre, :caretaker
relate :rel_td_dequindre_derived_feral, :derived_from, :dequindre, :feral_models
relate :rel_td_dequindre_part_orphans, :part_of, :dequindre, :orphan_machines
relate :rel_td_choir_possesses_dequindre, :possesses, :the_choir, :dequindre, since: 2079
relate :rel_td_dequindre_models_line, :models, :dequindre, :the_held_line, since: 2079

# ---- C. the letter match ----
relate :rel_td_letters_practiced_by_gatekeepers, :practiced_by, :the_letter_match, :the_gatekeepers, since: 2071
relate :rel_td_schedule_depends_letters, :depends_on, :the_gate_schedule, :the_letter_match do
  prose "The tray settles an amount. The letters settle whether the line was set at this station."
end
relate :rel_td_letters_depends_sort_book, :depends_on, :the_letter_match, :the_sort_book
relate :rel_td_letters_at_yumen, :manifests_at, :the_letter_match, :yumen_gate
relate :rel_td_letters_at_belfry, :manifests_at, :the_letter_match, :ste_anne_belfry

# ---- the book ----
relate :rel_td_sort_book_at_yumen, :located_in, :the_sort_book, :yumen_gate
relate :rel_td_sort_book_records_schedule, :models, :the_sort_book, :the_gate_schedule, since: 2071 do
  prose "Forty-one sorts, pulled monthly: the figures, the fraction rule, the measure characters and the recurring words."
end
relate :rel_td_ma_maintains_sort_book, :maintains, :ma_renqing, :the_sort_book, since: 2072
relate :rel_td_brokers_supply_yumen, :supplies, :the_brokers, :yumen_gate, since: 2071 do
  prose "Three founts cast to order — 2071, 2079, 2086 — carried up on the Delta run with the rest of the station's hardware."
end
relate :rel_td_sort_book_depends_brokers, :depends_on, :the_sort_book, :the_brokers do
  prose "What a page can prove is bounded by the fount it was pulled from, and the houses that cast the founts keep no record of what they sent."
end

# ---- the finding ----
relate :rel_td_finding_at_belfry, :manifests_at, :the_sixth_bell_finding, :ste_anne_belfry
relate :rel_td_finding_depends_letters, :depends_on, :the_sixth_bell_finding, :the_letter_match
relate :rel_td_finding_conducted_by_cecile, :conducted_by, :the_sixth_bell_finding, :cecile_ouellette do
  prose "Her mother's band's book, kept from before the programme, against the sixth's inscription."
end
relate :rel_td_odile_in_finding, :participated_in, :odile_marchand, :the_sixth_bell_finding do
  prose "She asked for a rubbing rather than a survey, and filed for re-description on cost."
end
relate :rel_td_finding_during_reclamation, :active_during, :the_sixth_bell_finding, :the_reclamation
