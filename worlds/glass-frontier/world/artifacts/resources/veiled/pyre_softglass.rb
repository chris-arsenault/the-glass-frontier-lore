resource :pyre_softglass do
  name "Pyre Softglass"
  summary "Pyre softglass is a repair material sourced from Pyre and Latch. It bends around a damaged seal while hot and retains the fitted shape after cooling."
  subkind :material
  status :complete
  prominence :marginal
  veiled "Pyre softglass bends around a damaged seal while hot and remembers the shape after cooling."
end

relate :rel_pyre_softglass_at_pyre, :sourced_from, :pyre_softglass, :pyre
relate :rel_pyre_softglass_at_latch, :sourced_from, :pyre_softglass, :latch
