# Schema additions for Aurora Berg. The source bundle's broad kinds are mapped
# to the closest Lorecraft kind while their exact source kind and subtype remain
# on each entry as migration metadata.
schema do
  drafted_by_default :ai_human

  declare_static_attr :source_kind, :source_subtype, :source_culture,
                      :source_status, :source_prominence, :source_tags,
                      :source_created_at, :source_era

  tag :ice_memory, "The recording, reading, or interpretation of impressions in ice"
  tag :aurora_stack, "Aurora Stack people, institutions, places, and customs"
  tag :nightshelf, "Nightshelf people, institutions, places, and customs"
  tag :orca, "Orca people, pods, waters, institutions, and customs"
  tag :trade, "Exchange, markets, supply routes, and negotiated access"
  tag :warmth, "Heat, shelter, fire-cores, huddling, and survival in cold"
  tag :secrecy, "Protected names, concealed knowledge, and controlled disclosure"
  tag :remembrance, "Witness, memorial practice, inherited record, and the dead"
  tag :magic, "Aurora-light, captured fire, pressure-depth, and their practiced effects"
  tag :religion, "Ritual, theology, sacred sites, and religious orders"
  tag :governance, "Law, public authority, councils, and succession"
  tag :conflict, "Wars, raids, feuds, and organized violence"
  tag :exploration, "Travel into unknown ice, water, tunnels, and recovered sites"
  tag :resources, "Krill, minerals, relics, fire-cores, and contested stores"
  tag :corruption, "Places, materials, and practices altered by dangerous influence"
  tag :craft, "Making, repair, instruments, weapons, and technical practice"

  source_facts = proc do
    field :cultural_origin, type: :text, label: "Culture", expected: false
    field :world_status, type: :text, label: "Recorded Status", expected: false
    field :first_recorded, type: :year, label: "First Recorded Tick", expected: false
  end

  extend_kind :ability do
    instance_eval(&source_facts)
    subkind :combat_ability, label: "Combat Ability"
    subkind :magic_ability, label: "Magic Ability"
    subkind :technical_ability, label: "Technical Ability"
  end

  extend_kind :artifact do
    instance_eval(&source_facts)
    subkind :tome
    subkind :weapon
  end

  extend_kind :era do
    instance_eval(&source_facts)
  end

  extend_kind :faction do
    instance_eval(&source_facts)
    subkind :criminal_network, label: "Criminal Network"
    subkind :political_body, label: "Political Body"
  end

  extend_kind :geographic_location do
    instance_eval(&source_facts)
    subkind :anomalous_site, label: "Anomalous Site"
    subkind :colony
    subkind :point_of_interest, label: "Point of Interest"
    subkind :resource_site, label: "Resource Site"
  end

  extend_kind :npc do
    instance_eval(&source_facts)
    subkind :hero
    subkind :mayor
    subkind :merchant
    subkind :orca
    subkind :outlaw
  end

  extend_kind :incident do
    instance_eval(&source_facts)
    subkind :celebration
    subkind :succession_crisis, label: "Succession Crisis"
  end

  extend_kind :conflict do
    instance_eval(&source_facts)
  end

  extend_kind :concept do
    instance_eval(&source_facts)
    subkind :ideology
    subkind :memorial_practice, label: "Memorial Practice"
    subkind :social_practice, label: "Social Practice"
  end

  extend_kind :edict do
    instance_eval(&source_facts)
    subkind :law
  end

  # Shared relations used by the source are narrowed to the kinds present in
  # this world. Relationship instances retain their original bundle triple as
  # `source_id`, even when the canonical verb below has clearer direction.
  extend_relation :active_during,
                  domain: %i[ability artifact faction geographic_location npc concept edict],
                  range: :era,
                  description: "The era during which the subject was active"
  extend_relation :commemorates,
                  domain: %i[geographic_location concept edict],
                  range: %i[npc incident conflict],
                  description: "The person or event kept in public memory"
  extend_relation :created,
                  domain: :npc, range: :artifact,
                  description: "An artifact made by a named person"
  extend_relation :created_during,
                  domain: %i[ability artifact faction geographic_location npc incident conflict concept edict],
                  range: :era,
                  description: "The era in which the subject first entered the record"
  extend_relation :derived_from,
                  domain: %i[ability concept edict],
                  range: %i[ability incident conflict faction concept],
                  description: "A practice or rule developed from an earlier source"
  extend_relation :inhabits,
                  domain: :npc, range: :geographic_location,
                  description: "A person's recorded home"
  extend_relation :leads,
                  domain: :npc, range: %i[faction geographic_location],
                  description: "A person who directs a faction or settlement"
  extend_relation :located_in,
                  domain: :artifact, range: :geographic_location,
                  description: "The recorded location of an artifact"
  extend_relation :manifests_at,
                  domain: :ability, range: :geographic_location,
                  description: "A place where an ability is practiced or observed"
  extend_relation :member_of,
                  domain: :npc, range: :faction,
                  description: "A person's membership in a faction"
  extend_relation :originated_in,
                  domain: %i[ability faction concept edict], range: :geographic_location,
                  description: "The place where a practice, faction, or rule began"
  extend_relation :owned_by,
                  domain: :artifact, range: %i[faction npc],
                  description: "The recorded holder of an artifact"
  extend_relation :part_of,
                  domain: :geographic_location, range: :geographic_location,
                  description: "A place physically contained by another place"
  extend_relation :participated_in,
                  domain: %i[artifact faction npc], range: %i[incident conflict],
                  description: "A participant recorded in an incident or war"
  extend_relation :practiced_by,
                  domain: :ability, range: %i[faction npc],
                  description: "A faction or person that practices an ability"
  extend_relation :succeeded,
                  domain: :era, range: :era,
                  description: "A later era that superseded the preceding era"
  extend_relation :taught,
                  domain: :npc, range: :npc,
                  description: "A teacher who instructed another person"

  relation :adjacent_to, category: :spatial, temporal: false, symmetric: true,
            domain: :geographic_location, range: :geographic_location,
            description: "Places with a shared border or direct route"
  relation :allied_with, category: :social, temporal: true, symmetric: true,
            domain: %i[faction npc], range: %i[faction npc],
            description: "A declared or practiced alliance"
  relation :believes_in, category: :social, temporal: true,
            domain: %i[faction npc], range: %i[concept edict],
            description: "A person or faction that accepts a doctrine or rule"
  relation :blessed_by, category: :social, temporal: false,
            domain: :npc, range: :artifact,
            description: "A blessing received through an artifact"
  relation :bound_by, category: :organizational, temporal: true,
            domain: :faction, range: :edict,
            description: "A faction operating under a law or charter"
  relation :judged_under, category: :organizational, temporal: false,
            domain: :npc, range: :edict,
            description: "A person tried or sentenced under a law"
  relation :opposes, category: :social, temporal: false, symmetric: true,
            domain: :concept, range: :concept,
            description: "Doctrines whose central claims oppose one another"
  relation :prescribes, category: :technical, temporal: false,
            domain: :concept, range: :ability,
            description: "A doctrine that teaches or requires a named practice"
  relation :provoked, category: :causal, temporal: false,
            domain: :npc, range: :edict,
            description: "A person's actions that prompted a law or emergency measure"
  relation :subject_to, category: :organizational, temporal: true,
            domain: :npc, range: :edict,
            description: "A person operating under a law's provisions"
  relation :catalyzed, category: :causal, temporal: false,
            domain: %i[ability artifact incident conflict],
            range: %i[ability artifact faction incident conflict],
            description: "A thing or event that precipitated another recorded development"
  relation :celebrated_by, category: :social, temporal: true,
            domain: %i[concept edict], range: %i[faction npc],
            description: "A practice or law publicly observed by a person or faction"
  relation :central_to, category: :classification, temporal: false,
            domain: :artifact, range: %i[concept edict],
            description: "An artifact central to a doctrine, law, or custom"
  relation :controls, category: :organizational, temporal: true,
            domain: :faction, range: :geographic_location,
            description: "A faction's effective control over a place"
  relation :corrupted_by, category: :causal, temporal: false,
            domain: :geographic_location, range: %i[ability geographic_location],
            description: "The recorded source of a place's corruption"
  relation :desecrated, category: :social, temporal: false,
            domain: :faction, range: :geographic_location,
            description: "A faction's violation of a place held sacred"
  relation :discovered_by, category: :causal, temporal: false,
            domain: %i[ability artifact geographic_location], range: %i[faction npc],
            description: "The person or faction credited with a discovery"
  relation :empowered_by, category: :technical, temporal: false,
            domain: :artifact, range: :ability,
            description: "An ability that supplies an artifact's power"
  relation :enemy_of, category: :social, temporal: true, symmetric: true,
            domain: %i[faction npc], range: %i[faction npc],
            description: "An active enmity"
  relation :explores, category: :social, temporal: true,
            domain: :npc, range: :geographic_location,
            description: "A place explored by a named person"
  relation :guards, category: :organizational, temporal: true,
            domain: :npc, range: :geographic_location,
            description: "A place kept or defended by a named person"
  relation :instigated_by, category: :causal, temporal: false,
            domain: %i[incident conflict], range: :npc,
            description: "The person recorded as instigating an event"
  relation :occupies, category: :spatial, temporal: true,
            domain: %i[faction npc], range: :geographic_location,
            description: "A faction's or person's physical occupation of a place"
  relation :occurred_at, category: :spatial, temporal: false,
            domain: %i[incident conflict], range: :geographic_location,
            description: "The place where an incident or war occurred"
  relation :splinter_of, category: :organizational, temporal: false,
            domain: :faction, range: :faction,
            description: "A faction formed by breaking from another faction"
  relation :subsumes, category: :classification, temporal: false,
            domain: %i[ability concept edict], range: %i[ability concept edict],
            description: "A later practice or rule that incorporates an earlier one"
  relation :trades_with, category: :social, temporal: true, symmetric: true,
            domain: :geographic_location, range: :geographic_location,
            description: "An established trade connection between places"
  relation :triggered_by, category: :causal, temporal: false,
            domain: %i[incident conflict], range: %i[faction geographic_location],
            description: "A faction or place whose condition triggered an event"
end
