# The Gatekeepers pay Himalayan carriers to winter gate-moss samples at Thorong.
# This keeps the two regions connected through people, material and a place.
relate :rel_te_gatekeepers_coldhouse, :cooperates_with, :the_gatekeepers, :thorong_cold_house
relate :rel_te_yard_depends_coldhouse, :depends_on, :xincheng_yard, :thorong_cold_house
relate :rel_te_coldhouse_depends_moss, :depends_on, :thorong_cold_house, :gate_moss

# The clinical failure caused by applying one substrate's winter result to another.
relate :rel_te_fire_at_yumen, :manifests_at, :the_yumen_bed_fire, :yumen_gate
relate :rel_te_fire_caused_by_yard, :caused_by, :the_yumen_bed_fire, :xincheng_yard
relate :rel_te_fire_caused_by_strains, :caused_by, :the_yumen_bed_fire, :severed_strains
relate :rel_te_ma_in_fire, :participated_in, :ma_renqing, :the_yumen_bed_fire
relate :rel_te_gatekeepers_in_fire, :participated_in, :the_gatekeepers, :the_yumen_bed_fire
relate :rel_te_fire_mentions_schedule, :mentions, :the_yumen_bed_fire, :the_gate_schedule
relate :rel_te_fire_mentions_preservationists, :mentions, :the_yumen_bed_fire, :the_preservationists
relate :rel_te_fire_during_holding, :active_during, :the_yumen_bed_fire, :the_holding
