# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

npc :manual_npc_1771046998141_6mgart do
  title "Morrund (ash-born) teir'Cinder"
  source_id "manual_npc_1771046998141_6mgart"
  subkind :hero
  summary "An Aurora Stack researcher who bled into the deep-ice spirals beneath the Hearth Plaza and disappeared alongside Kesho (twice-blessed) qi'Vault when the chambers were breached."
  status :complete
  prominence :recognized
  tags :aurora_stack
  source_kind "npc"
  source_subtype "hero"
  source_culture "aurora-stack"
  source_status "missing"
  source_prominence 2
  source_tags({})
  source_created_at 1771046998141
  source_era "the-faction-wars"
  cultural_origin "Aurora Stack"
  world_status "missing"

  prose(<<~'CANONICAL_PROSE', origin: :published)
    An Aurora Stack researcher assigned to the sealed chambers beneath Hearth Plaza during Light-Regent Xouhoulong's covert deep-ice investigations. Morrund was the second penguin to bleed into the spiral channels carved into the chamber walls, following Kesho (twice-blessed) qi'Vault by what the accounts claim was three days — a duration I have learned to hold loosely.
    
    By the time Morrund bled, the spirals had begun extending autonomously, carving in directions the research team had not planned. His blood ran darker than physiological norms would predict. He reported seeing a shape in the pressure — *something vast* — before Xouhoulong ordered him to cease reporting and return to measurements. Morrund could not comply. The ice-memory in the chamber had accelerated beyond containment, replaying impressions of mass drownings and ancient starvation-deaths at speeds that disoriented the entire team.
    
    When the chamber wall breached, Morrund stood alongside Kesho facing the darkness beyond. Both vanished when the aurora-light failed. Neither has been recovered.
    
    The ice still carries impressions of Morrund standing in the spirals, his beak moving at frequencies below audible range. I note this without comment, except to observe that the Foundation strata contain older impressions of similar silent speech, from depths where no penguin has ever stood.
  CANONICAL_PROSE
  annotation "note_1771593308796_0", anchor: "replaying impressions of mass drownings and ancient starvation-deaths", text: "The starvation-death signatures are consistent with Foundation strata 14 through 17 — third-century Great Thaw. The period the krill-bloom narratives describe as abundance and expansion. The chamber ice was not malfunctioning. It was showing the research team what the exploration era actually cost.", type: :correction, display: :full
  annotation "note_1771593308796_1", anchor: "from depths where no penguin has ever stood", text: "Foundation stratum 31 and below. Eleven catalogued instances of sub-audible articulation preserved in ice predating penguin settlement by geological margins. The beak-movements match. The frequency range matches. Morrund did not invent what he was doing.", type: :commentary, display: :full
  annotation "note_1771593308796_2", anchor: "what the accounts claim was three days", text: "Three days is the interval between scheduled resupply runs to sealed chambers. Morrund's bleeding was documented by the next supply team, not by continuous observation.", type: :skepticism, display: :popout
  image "img_manual_npc_1771046998141_6mgart_1772874568261", role: :entity, url: "https://theiceremembers.com/raw/project_1765083188592/img_manual_npc_1771046998141_6mgart_1772874568261"
end
