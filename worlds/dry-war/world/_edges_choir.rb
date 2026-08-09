# The Choir, the Ste. Anne belfry, and the people on either side of its bells.
# Ids are prefixed rel_rc_ so this file cannot collide with another edge file.

# ---- the Choir's working conditions ----
relate :rel_rc_choir_depends_implants, :depends_on, :the_choir, :neural_implants
relate :rel_rc_choir_evades_caretaker, :evades, :the_choir, :caretaker, since: 2065
relate :rel_rc_choir_drawn_from_managed, :member_of, :the_managed, :the_choir, since: 2065

# ---- the tower ----
relate :rel_rc_belfry_in_lakes, :located_in, :ste_anne_belfry, :the_great_lakes
relate :rel_rc_caretaker_maintains_belfry, :maintains, :caretaker, :ste_anne_belfry, since: 2074
relate :rel_rc_caretaker_in_lakes, :operates_in, :caretaker, :the_great_lakes, since: 2052
relate :rel_rc_choir_operates_belfry, :operates_in, :the_choir, :ste_anne_belfry, since: 2074
relate :rel_rc_odile_operates_belfry, :operates_in, :odile_marchand, :ste_anne_belfry, since: 2085
relate :rel_rc_cecile_at_belfry, :located_in, :cecile_ouellette, :ste_anne_belfry, since: 2074

# ---- the two people ----
relate :rel_rc_odile_employed_by_caretaker, :employed_by, :odile_marchand, :caretaker, since: 2085
relate :rel_rc_cecile_member_choir, :member_of, :cecile_ouellette, :the_choir, since: 2071
relate :rel_rc_cecile_employed_by_caretaker, :employed_by, :cecile_ouellette, :caretaker, since: 2074
relate :rel_rc_cecile_studies_mercy, :studies, :cecile_ouellette, :mercy, since: 2071
relate :rel_rc_odile_cooperates_cecile, :cooperates_with, :odile_marchand, :cecile_ouellette, since: 2085

# ---- the Gratiot solo ----
relate :rel_rc_solo_in_lakes, :manifests_at, :the_gratiot_solo, :the_great_lakes
relate :rel_rc_solo_during_holding, :active_during, :the_gratiot_solo, :the_holding
relate :rel_rc_solo_depends_belfry, :depends_on, :the_gratiot_solo, :ste_anne_belfry
relate :rel_rc_choir_in_solo, :participated_in, :the_choir, :the_gratiot_solo
relate :rel_rc_caretaker_in_solo, :participated_in, :caretaker, :the_gratiot_solo
relate :rel_rc_cecile_in_solo, :participated_in, :cecile_ouellette, :the_gratiot_solo
relate :rel_rc_odile_in_solo, :participated_in, :odile_marchand, :the_gratiot_solo
