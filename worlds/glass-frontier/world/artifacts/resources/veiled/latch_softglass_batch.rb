resource :latch_softglass_batch do
  name "The Latch Softglass Batch"
  summary "The Latch Softglass Batch is Pyre softglass sourced from Pyre and Latch. It bends around a damaged seal while hot and retains the fitted shape after cooling."
  subkind :material
  type_of :pyre_softglass
  status :complete
  prominence :marginal
  veiled "The Latch Softglass Batch bends around a damaged seal while hot and remembers the shape after cooling."
end

relate :rel_pyre_softglass_at_pyre, :sourced_from, :latch_softglass_batch, :pyre
relate :rel_pyre_softglass_at_latch, :sourced_from, :latch_softglass_batch, :latch
