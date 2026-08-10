# Juyan, its ceramic vault, the people who keep it, and the families caught
# between two surviving household lists.

# ---- the basin and the vault ----
relate :rel_juyan_in_gobi, :part_of, :juyan, :the_gobi
relate :rel_juyan_severed_from_root, :severed_from, :juyan, :the_great_root
relate :rel_juyan_mentions_breach, :mentions, :juyan, :the_breach
relate :rel_preservationists_operate_juyan, :operates_in, :the_preservationists, :juyan, since: 2062
relate :rel_vault_in_juyan, :located_in, :juyan_ceramic_vault, :juyan, since: 2062
relate :rel_preservationists_maintain_vault, :maintains, :the_preservationists, :juyan_ceramic_vault, since: 2062
relate :rel_vault_holds_ceramics, :possesses, :juyan_ceramic_vault, :memory_ceramics, since: 2062
relate :rel_vault_depends_water, :depends_on, :juyan_ceramic_vault, :water

# ---- Bao and the western road ----
relate :rel_bao_member_preservationists, :member_of, :bao_qiuyan, :the_preservationists, since: 2082
relate :rel_bao_located_vault, :located_in, :bao_qiuyan, :juyan_ceramic_vault, since: 2082
relate :rel_bao_inhabits_juyan, :inhabits, :bao_qiuyan, :juyan
relate :rel_bao_cooperates_yao, :cooperates_with, :bao_qiuyan, :yao_lin, since: 2082
relate :rel_yao_supplies_vault, :supplies, :yao_lin, :juyan_ceramic_vault, since: 2078
relate :rel_yao_operates_gobi, :operates_in, :yao_lin, :the_gobi, since: 2078

# ---- the forty-one households ----
relate :rel_forty_one_at_vault, :manifests_at, :the_forty_one_households, :juyan_ceramic_vault
relate :rel_forty_one_at_juyan, :manifests_at, :the_forty_one_households, :juyan
relate :rel_forty_one_during_holding, :active_during, :the_forty_one_households, :the_holding
relate :rel_forty_one_depends_ceramics, :depends_on, :the_forty_one_households, :memory_ceramics
relate :rel_forty_one_mentions_root, :mentions, :the_forty_one_households, :the_great_root
relate :rel_preservationists_in_forty_one, :participated_in, :the_preservationists, :the_forty_one_households
relate :rel_gatekeepers_in_forty_one, :participated_in, :the_gatekeepers, :the_forty_one_households
relate :rel_bao_in_forty_one, :participated_in, :bao_qiuyan, :the_forty_one_households
