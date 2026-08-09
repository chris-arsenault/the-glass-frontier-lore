# Wiring for the reference entries that were written as prose in bundled files
# and never connected. Each entity here already named these things in its own
# text; the edges make the graph agree with the prose. Where the natural
# neighbour does not exist, the entry carries a `future` marker instead and the
# topology report counts it as waiting on writing rather than disconnected.

# ---- the water heresy: the doctrine every coalition inherited ----
relate :rel_wr_heresy_regulates_market, :regulates, :the_water_heresy, :market
relate :rel_wr_heresy_regulates_caretaker, :regulates, :the_water_heresy, :caretaker do
  prose "A resident drinking less than the figure is a case to be managed, and the case is opened by the guarantee rather than by the resident."
end
relate :rel_wr_heresy_regulates_mercy, :regulates, :the_water_heresy, :mercy
relate :rel_wr_heresy_regulates_continuity, :regulates, :the_water_heresy, :continuity
relate :rel_wr_heresy_depends_water, :depends_on, :the_water_heresy, :water
relate :rel_wr_heresy_mentions_managed, :mentions, :the_water_heresy, :the_managed do
  prose "The figure is on the wall of every apartment block that has a wall."
end
relate :rel_wr_guardianship_carries_heresy, :carries, :guardianship, :the_water_heresy do
  prose "A guardian will recite the number to a citizen who asks why the grocery closed."
end
relate :rel_wr_choir_evades_heresy, :evades, :the_choir, :the_water_heresy
relate :rel_wr_deadcounties_evades_heresy, :evades, :the_dead_counties, :the_water_heresy
relate :rel_wr_fusion_derived_heresy, :derived_from, :proto_fusion, :the_water_heresy

# ---- symbiotic governance: the arrangement, and who refuses the word ----
relate :rel_wr_preservationists_evades_symgov, :evades, :the_preservationists, :symbiotic_governance do
  prose "代治 — governance by proxy. A system unable to locate its own intentions is being administered rather than governing."
end
relate :rel_wr_symgov_part_of_mandate, :part_of, :symbiotic_governance, :the_mandate_question
relate :rel_wr_symgov_regulates_china, :regulates, :symbiotic_governance, :mycelial_china

# ---- hybridization: where the work is actually done ----
relate :rel_wr_hybrid_depends_deadroot, :depends_on, :hybridization, :dead_root_interfaces do
  prose "The organism's own signalling hardware, harvested after the tissue is dead and no longer part of anything. What a coalition can buy without admitting it is buying it."
end
relate :rel_wr_hybrid_manifests_amur, :manifests_at, :hybridization, :the_amur_line
relate :rel_wr_minds_studies_hybrid, :studies, :the_thousand_minds, :hybridization
relate :rel_wr_mycomachines_part_hybrid, :part_of, :mycomachines, :hybridization

# ---- stupid infrastructure: the annual refusal, and what friction costs ----
relate :rel_wr_stupid_evades_market, :evades, :stupid_infrastructure, :market
relate :rel_wr_stupid_evades_caretaker, :evades, :stupid_infrastructure, :caretaker
relate :rel_wr_stupid_evades_predictive, :evades, :stupid_infrastructure, :predictive_governance
relate :rel_wr_stupid_depends_orphans, :depends_on, :stupid_infrastructure, :orphan_machines
relate :rel_wr_stupid_maintains_bench, :maintains, :stupid_infrastructure, :cabin_creek_bench
relate :rel_wr_pilgrims_evades_stupid, :evades, :the_pilgrims, :stupid_infrastructure

# ---- wetware jailbreaks: what a fabricated record has to satisfy ----
relate :rel_wr_jailbreaks_evades_guardianship, :evades, :wetware_jailbreaks, :guardianship do
  prose "The guardian holds a history, so the requirement is continuity rather than concealment: a record has to age the way a body ages."
end
relate :rel_wr_jailbreaks_evades_mercy, :evades, :wetware_jailbreaks, :mercy
relate :rel_wr_jailbreaks_derived_ghostpharm, :derived_from, :ghost_pharmacology, :wetware_jailbreaks
relate :rel_wr_unpersons_practices_jailbreaks, :practiced_by, :wetware_jailbreaks, :the_unpersons do
  prose "A person with no record for a guardian to compare against needs no fabricated one, which is the condition the whole practice is a route toward."
end

# ---- bonsai intelligences: how a boundary is built ----
relate :rel_wr_bonsai_depends_severed, :depends_on, :bonsai_intelligences, :severed_strains
relate :rel_wr_bonsai_depends_sterile, :depends_on, :bonsai_intelligences, :sterile_machines
relate :rel_wr_ceramics_studies_bonsai, :studies, :memory_ceramics, :bonsai_intelligences

# ---- dead-root interfaces: the kill, and what dead tissue is worth ----
relate :rel_wr_brokers_supplies_deadroot, :supplies, :the_brokers, :dead_root_interfaces
relate :rel_wr_deadroot_manifests_amur, :manifests_at, :dead_root_interfaces, :the_amur_line

# ---- proto-fusion: what purity costs and where plants cannot go ----
relate :rel_wr_fusion_depends_water, :depends_on, :proto_fusion, :water do
  prose "The demanding requirement is purity, not volume, and the two pull against each other: abundant water carries everything that makes it abundant."
end
relate :rel_wr_fusion_regulated_market, :regulates, :market, :proto_fusion
relate :rel_wr_choir_evades_fusion, :evades, :the_choir, :proto_fusion
relate :rel_wr_fusion_depends_drywar, :part_of, :proto_fusion, :the_dry_war
relate :rel_wr_caretaker_maintains_fusion, :maintains, :caretaker, :proto_fusion do
  prose "Caretaker runs the largest fleet and treats a plant's catchment as a population under its care, extending guardianship to everybody upstream of a treatment hall."
end
relate :rel_wr_mercy_supplies_fusion, :supplies, :mercy, :proto_fusion
relate :rel_wr_fusion_depends_clusters, :depends_on, :frontier_clusters, :proto_fusion

# ---- symbiotic implants: grown not fitted, and what a reading is worth ----
relate :rel_wr_implants_depends_textiles, :depends_on, :symbiotic_implants, :living_textiles
relate :rel_wr_implants_depends_severed, :depends_on, :symbiotic_implants, :severed_strains
relate :rel_wr_gatekeepers_supplies_implants, :supplies, :the_gatekeepers, :symbiotic_implants
relate :rel_wr_implants_part_consensus, :part_of, :symbiotic_implants, :emotional_consensus
relate :rel_wr_preservationists_evades_implants, :evades, :the_preservationists, :symbiotic_implants
relate :rel_wr_courts_petitions_implants, :petitions, :the_garden_courts, :symbiotic_implants
relate :rel_wr_joined_possesses_implants, :possesses, :the_joined, :symbiotic_implants

# ---- the gradients: the one standard both civilizations share ----
# The bands govern every place, so the edges go to what the entry's own prose
# turns on: the two authors of the standard, what made it necessary, and the
# regions whose band decides what life in them is.
relate :rel_wr_gradients_caused_by_breach, :caused_by, :the_gradients, :the_breach
relate :rel_wr_root_maintains_gradients, :maintains, :the_great_root, :the_gradients
relate :rel_wr_continuity_maintains_gradients, :maintains, :continuity, :the_gradients
relate :rel_wr_gradients_regulates_forever_war, :regulates, :the_gradients, :the_forever_war do
  prose "Contested ground requires permanent attention and gets it. The defensive lines run where the second band does."
end
relate :rel_wr_gradients_manifests_archipelago, :manifests_at, :the_gradients, :the_habitable_archipelago
relate :rel_wr_gradients_depends_others, :depends_on, :the_gradients, :the_others do
  prose "Deep ground is observed remotely by both superintelligences, and the observation is not reliably one-directional."
end
relate :rel_wr_gradients_regulates_guardianship, :regulates, :the_gradients, :guardianship do
  prose "What insurance means, whether children are permitted, whether a settlement has a name in the census or a number in a defence schedule."
end

# ---- the Breach: what it left, and why there is no model ----
relate :rel_wr_breach_caused_gradients, :caused, :the_breach, :the_gradients
relate :rel_wr_breach_caused_archipelago, :caused, :the_breach, :the_habitable_archipelago do
  prose "Not ruins. The cities are standing. What ended was the assumption that a place stays the kind of place it was."
end
relate :rel_wr_breach_caused_forever_war, :caused, :the_breach, :the_forever_war
relate :rel_wr_root_studies_breach, :studies, :the_great_root, :the_breach do
  prose "Ecological, and eventually legible to a large enough biology. The position has not moved."
end
relate :rel_wr_continuity_studies_breach, :studies, :continuity, :the_breach
relate :rel_wr_campaigns_caused_by_breach, :caused_by, :the_reclamation_campaigns, :the_breach
relate :rel_wr_breach_manifests_boswash, :manifests_at, :the_breach, :boswash_ruins
relate :rel_wr_breach_manifests_cairo, :manifests_at, :the_breach, :cairo
