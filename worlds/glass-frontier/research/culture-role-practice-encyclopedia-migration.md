# Culture, Role, and Practice Encyclopedia Migration

Date: 2026-08-28

Nine reusable subjects now live only in the Encyclopedia:

- Cultures: `hab_worlder`, `sable_riverfolk`, `shearfolk`, `sitharian_culture`
- Roles: `couriers`, `readers`, `tuners`
- Practices: `attunement`, `remote_cutting`

The migration removed nine duplicate Atlas nodes and 48 incident Atlas relations. It converted 46 surviving prose markers from `ref` to `encyclopedia_ref`, removed the four Atlas values from `cultures.major_cultures`, and retained 32 existing NPC classifications: 26 culture memberships and 6 role memberships. It added no representative Atlas entities or cross-namespace graph edges.

## Removed relations

- `rel_tuners_practiced_with_kinetic_horns`
- `rel_tuners_practiced_with_tuning_compass`
- `rel_stillweight_resonates_remote_cutting`
- `rel_wurm_bit_depends_remote_cutting`
- `rel_attunement_depends_on_resonance`
- `rel_tuners_depend_on_attunement`
- `rel_clarisant_trains_attunement`
- `rel_couriers_manifest_at_tgf`
- `rel_couriers_manifest_at_keelward`
- `rel_couriers_depend_on_keel`
- `rel_cultures_extends_hab_worlder`
- `rel_cultures_extends_sitharian`
- `rel_cultures_extends_shearfolk`
- `rel_cultures_extends_sable_riverfolk`
- `rel_hab_worlder_originated_in_tgf`
- `rel_hab_worlder_manifests_at_tgf`
- `rel_hab_worlder_depends_on_shuttered_habs`
- `rel_naming_extends_sitharian`
- `rel_naming_extends_hab_worlder`
- `rel_sable_riverfolk_inhabit_crescent`
- `rel_sable_riverfolk_inhabit_lowbank`
- `rel_sable_riverfolk_inhabit_ledgerfall`
- `rel_sable_riverfolk_inhabit_thornvault`
- `rel_shearfolk_inhabit_shear`
- `rel_shearfolk_inhabit_deep_shear`
- `rel_shearfolk_inhabit_brake`
- `rel_sitharian_originated_in_sithari`
- `rel_sitharian_manifests_at_sithari`
- `rel_tempered_accord_originated_in_sitharian`
- `rel_ratters_designed_remote_cutting`
- `rel_readers_manifest_at_wash_four`
- `rel_readers_manifest_at_brake`
- `rel_remote_cutting_depends_on_resonance`
- `rel_tuners_emerged_during_signal_famine`
- `rel_tuners_practiced_with_resonant_instruments`
- `rel_tuners_study_rind`
- `rel_tuners_study_drawdown`
- `rel_empty_bearing_resonates_tuners`
- `rel_pell_answer_resonates_remote_cutting`
- `rel_signal_famine_caused_tuners`
- `rel_pell_cut_depends_on_remote_cutting`
- `rel_kd_stage_tuners`
- `rel_clarisant_trains_tuners`
- `rel_dc_maintains_remote_cutting`
- `rel_pell_assembly_maintains_remote_cutting`
- `rel_dissident_taught_tuners`
- `rel_claim_rig_depends_remote_cutting`
- `rel_builders_gone_embodies_tuners`
