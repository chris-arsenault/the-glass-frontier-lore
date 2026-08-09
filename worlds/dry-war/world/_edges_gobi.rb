# What happens to a memory ceramic when it reaches a Gobi settlement: the basin,
# the register house, the intake procedure, the reading, the bench that keeps it,
# and the household register that two admitted pieces cannot agree on.

# ---- the basin and the house ----
relate :rel_juyan_in_gobi, :part_of, :juyan, :the_gobi
relate :rel_juyan_severed_from_root, :severed_from, :juyan, :the_great_root do
  prose "Underground water and nothing standing. The network reaches the well line and cannot hold a thought across the bed."
end
relate :rel_juyan_mentions_breach, :mentions, :juyan, :the_breach
relate :rel_preservationists_operate_juyan, :operates_in, :the_preservationists, :juyan, since: 2062
relate :rel_register_house_in_juyan, :located_in, :juyan_register_house, :juyan, since: 2062
relate :rel_preservationists_maintain_register_house, :maintains, :the_preservationists, :juyan_register_house, since: 2062
relate :rel_register_house_holds_ceramics, :possesses, :juyan_register_house, :memory_ceramics, since: 2062 do
  prose "Ninety thousand admitted pieces standing on edge, sixteen to a coffer, in bays measured in coffer-lengths with none free."
end
relate :rel_register_house_depends_water, :depends_on, :juyan_register_house, :water

# ---- admission ----
relate :rel_register_practiced_by_preservationists, :practiced_by, :entry_into_the_register, :the_preservationists, since: 2062
relate :rel_register_regulates_ceramics, :regulates, :entry_into_the_register, :memory_ceramics, since: 2062
relate :rel_register_at_register_house, :manifests_at, :entry_into_the_register, :juyan_register_house
relate :rel_register_conducted_by_bao, :conducted_by, :entry_into_the_register, :bao_qiuyan
relate :rel_register_embodies_mandate, :embodies, :entry_into_the_register, :the_mandate_question do
  prose "A settlement that can state what it holds, in a bound book whose lines cannot be reordered, arguing that this is what holding a state in trust consists of."
end

# ---- reading a face ----
relate :rel_squeeze_depends_ceramics, :depends_on, :the_squeeze, :memory_ceramics
relate :rel_squeeze_depends_register, :depends_on, :the_squeeze, :entry_into_the_register do
  prose "Nothing is lapped that has no admission number, and the thickness a face costs is entered on the same line."
end
relate :rel_squeeze_depends_water, :depends_on, :the_squeeze, :water do
  prose "Three 合 a face — two for the paper, one for the plate — issued against the house card and boiled off before the door opens."
end
relate :rel_squeeze_practiced_by_preservationists, :practiced_by, :the_squeeze, :the_preservationists, since: 2062
relate :rel_squeeze_at_register_house, :manifests_at, :the_squeeze, :juyan_register_house
relate :rel_squeeze_evades_mesh, :evades, :the_squeeze, :mycelial_neural_mesh do
  prose "No power, no instrument and nothing alive in the room: a lapped face, damp paper and an ink pounce."
end

# ---- the intake bench ----
relate :rel_bao_member_preservationists, :member_of, :bao_qiuyan, :the_preservationists, since: 2082
relate :rel_bao_located_register_house, :located_in, :bao_qiuyan, :juyan_register_house, since: 2082
relate :rel_bao_inhabits_juyan, :inhabits, :bao_qiuyan, :juyan
relate :rel_bao_cooperates_yao, :cooperates_with, :bao_qiuyan, :yao_lin, since: 2082 do
  prose "Eight or nine loads a year across the bench, and the courier's name written in a margin that has no field for it."
end
relate :rel_bao_studies_yumen, :studies, :bao_qiuyan, :yumen_gate, since: 2082 do
  prose "She keeps the enclave side of the Yumen file: every objection filed at the station arrives here as a carbon to be entered, numbered and shelved."
end
relate :rel_bao_petitions_preservationists, :petitions, :bao_qiuyan, :the_preservationists, since: 2087 do
  prose "One petition a year asking the register to close the item her own examination result hangs on. Each is entered and shelved; none has been answered."
end
relate :rel_yao_supplies_register_house, :supplies, :yao_lin, :juyan_register_house, since: 2078
relate :rel_yao_operates_gobi, :operates_in, :yao_lin, :the_gobi, since: 2078
relate :rel_register_practiced_by_yao, :practiced_by, :entry_into_the_register, :yao_lin, since: 2078 do
  prose "The courier's half of it: the sealed load, the consignment note against it, and the counterfoil carried back as the sending house's receipt."
end

# ---- two returns of one ward ----
relate :rel_liangzhou_at_register_house, :manifests_at, :the_liangzhou_double_return, :juyan_register_house
relate :rel_liangzhou_at_juyan, :manifests_at, :the_liangzhou_double_return, :juyan
relate :rel_liangzhou_during_holding, :active_during, :the_liangzhou_double_return, :the_holding
relate :rel_liangzhou_depends_register, :depends_on, :the_liangzhou_double_return, :entry_into_the_register do
  prose "Both returns stand admitted, the conflict is its own numbered item, and the item closes when a third piece arrives."
end
relate :rel_liangzhou_depends_squeeze, :depends_on, :the_liangzhou_double_return, :the_squeeze do
  prose "Neither reading can be taken again. Each sheet was lifted off the face that gave it, and the face went to the plate."
end
relate :rel_liangzhou_mentions_root, :mentions, :the_liangzhou_double_return, :the_great_root
relate :rel_preservationists_participated_liangzhou, :participated_in, :the_preservationists, :the_liangzhou_double_return
relate :rel_gatekeepers_participated_liangzhou, :participated_in, :the_gatekeepers, :the_liangzhou_double_return
relate :rel_yao_participated_liangzhou, :participated_in, :yao_lin, :the_liangzhou_double_return do
  prose "The standing request for a third copy has gone out with her on four crossings."
end
relate :rel_liangzhou_regulates_bao, :regulates, :the_liangzhou_double_return, :bao_qiuyan, since: 2087 do
  prose "Her result carries a provisional note referring to the open item: she sits, is marked, holds the bench, and holds it subject to the item."
end
relate :rel_liangzhou_embodies_mandate, :embodies, :the_liangzhou_double_return, :the_mandate_question
