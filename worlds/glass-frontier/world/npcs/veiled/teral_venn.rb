npc :teral_venn do
  name "Teral Venn"
  summary "Teral Venn is a Trellin testimony courier heard at the Sable Crescent, Verathi, Hab Meridian, and the Underlayers."
  subkind :npc
  status :complete
  prominence :marginal
  type_of :trellin
  veiled "Teral Venn delivers one recorded testimony at Sable Crescent, Verathi, Hab Meridian, and the Underlayers as four different layered chords."
end

relate :rel_teral_venn_at_sable_crescent, :inhabits, :teral_venn, :sable_crescent
relate :rel_teral_venn_at_verathi, :inhabits, :teral_venn, :verathi
relate :rel_teral_venn_at_hab_meridian, :inhabits, :teral_venn, :hab_meridian
relate :rel_teral_venn_at_underlayers, :inhabits, :teral_venn, :underlayers
