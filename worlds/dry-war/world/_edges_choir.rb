# Typed relationships for the Choir's coordination cluster: the held line, the
# ring call, the Ste. Anne belfry and the two people on either side of it.
# Ids are prefixed rel_rc_ so this file cannot collide with another edge file.

# ---- the line each member holds ----
relate :rel_rc_line_practiced_by_choir, :practiced_by, :the_held_line, :the_choir, since: 2074
relate :rel_rc_line_depends_implants, :depends_on, :the_held_line, :neural_implants do
  prose "The entries are made so that the implant has something true to report."
end
relate :rel_rc_line_evades_predictive, :evades, :the_held_line, :predictive_governance, since: 2074
relate :rel_rc_line_depends_call, :depends_on, :the_held_line, :the_ring_call
relate :rel_rc_line_evades_caretaker, :evades, :the_held_line, :caretaker, since: 2074
relate :rel_rc_line_mentions_ghost, :mentions, :the_held_line, :ghost_pharmacology

# ---- the call itself ----
relate :rel_rc_call_practiced_by_choir, :practiced_by, :the_ring_call, :the_choir, since: 2074
relate :rel_rc_call_at_belfry, :manifests_at, :the_ring_call, :ste_anne_belfry
relate :rel_rc_call_conducted_by_cecile, :conducted_by, :the_ring_call, :cecile_ouellette
relate :rel_rc_odile_regulates_call, :regulates, :odile_marchand, :the_ring_call, since: 2085 do
  prose "She books the slot, and a session she does not book cannot be rung."
end
relate :rel_rc_call_depends_mercy, :depends_on, :the_ring_call, :mercy do
  prose "Five intake stations on the public turbidity board, mapped to five methods, so the lake picks the content."
end
relate :rel_rc_call_evades_caretaker, :evades, :the_ring_call, :caretaker, since: 2074
relate :rel_rc_call_evades_predictive, :evades, :the_ring_call, :predictive_governance, since: 2074
relate :rel_rc_call_caused_solo, :caused, :the_ring_call, :the_gratiot_solo

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
relate :rel_rc_odile_cooperates_cecile, :cooperates_with, :odile_marchand, :cecile_ouellette, since: 2085 do
  prose "Two sessions moved for a hip, and no conversation either of them would have to report."
end
relate :rel_rc_line_practiced_by_cecile, :practiced_by, :the_held_line, :cecile_ouellette, since: 2074 do
  prose "Two of them since 2079 — the one she was taught and the one she built for ringing days."
end
relate :rel_rc_choir_drawn_from_managed, :member_of, :the_managed, :the_choir, since: 2065

# ---- the solo ----
relate :rel_rc_solo_in_lakes, :manifests_at, :the_gratiot_solo, :the_great_lakes
relate :rel_rc_solo_during_holding, :active_during, :the_gratiot_solo, :the_holding
relate :rel_rc_solo_depends_belfry, :depends_on, :the_gratiot_solo, :ste_anne_belfry do
  prose "Three kilometres beyond the bells, on a normalized feed rather than in earshot."
end
relate :rel_rc_solo_depends_line, :depends_on, :the_gratiot_solo, :the_held_line
relate :rel_rc_choir_in_solo, :participated_in, :the_choir, :the_gratiot_solo
relate :rel_rc_caretaker_in_solo, :participated_in, :caretaker, :the_gratiot_solo do
  prose "A dose review, a home visit, a companion assignment and a standing check, each of them indicated."
end
relate :rel_rc_cecile_in_solo, :participated_in, :cecile_ouellette, :the_gratiot_solo
relate :rel_rc_odile_in_solo, :participated_in, :odile_marchand, :the_gratiot_solo do
  prose "One query answered about platform levels on eleven consecutive evenings."
end
