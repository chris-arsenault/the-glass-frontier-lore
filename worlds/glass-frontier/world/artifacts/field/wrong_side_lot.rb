resource :wrong_side_lot do
  name "The Wrong-Side Lot"
  summary "The Wrong-Side Lot is a duskgrain cargo supplied through Coremark from a cordoned Bloom deposit."
  subkind :material
  type_of :duskgrain
  status :complete
  tags :resonance, :danger, :materials, :trade
  prominence :marginal

  descriptive_identity(
    appearance: "A cargo lot of dark grains, none larger than a seed, each producing the faint harmonic hum Tuners find unsettling.",
    working: "Its substance is lawful under the Tempered Accord, but its cordoned source puts the lot into the legal gray area Coremark's black-market routes serve.",
    risks: "The grains release stored resonance across the full spectrum, and prolonged handling narrows perception until a carrier mistakes which side of a bulkhead a sound came from."
  )

  prose <<~PROSE
    The Wrong-Side Lot moves through Coremark's black-market channels from a cordoned Bloom deposit. The substance is not illegal under the #{ref :tempered_accord, "Tempered Accord"}, but its source is, and enforcement treats the difference as a dark gray area.

    Each grain stores concentrated resonance across an unstable range of frequencies. Controlled release requires narrow-bandwidth skill. An uncontrolled release is disruptive at minimum and catastrophic at small scale.
  PROSE

  prose <<~PROSE, section: :truth, heading: "The Lot's Source", dm: true
    The lot is physical residue of the #{ref :the_false_form, "False Form"}'s influence: fragments of a geometry that cannot close, crystallized into matter that nonetheless persists.
  PROSE

  gm_note :appears, "The lot's legality turns on where it was dug rather than on the grain itself: the Accord permits the substance and cordons the ground it came from."
  gm_note :triggered_by, "Opening or testing a grain risks releasing its stored resonance across the full spectrum at once."
  gm_note :complicates, "Someone who has handled the lot for years hears narrow-band work nobody else notices and mistakes which side of a bulkhead a sound came from."
end

relate :rel_wrong_side_lot_sourced_from_bloom_zones, :sourced_from, :wrong_side_lot, :bloom_zones do
  prose "Coremark recovered the lot from a cordoned Bloom deposit."
end

relate :rel_coremark_supplies_wrong_side_lot, :supplies, :coremark, :wrong_side_lot do
  prose "Coremark moves the lot from its cordoned source into black-market trade."
end

relate :rel_wrong_side_lot_derived_from_the_false_form, :derived_from, :wrong_side_lot, :the_false_form, dm: true do
  prose "The lot is frozen #{ref :the_false_form, "False Form"} — fragments of a geometry that cannot close, crystallized into matter that nonetheless persists."
end

relate :rel_the_false_form_caused_wrong_side_lot, :caused, :the_false_form, :wrong_side_lot, dm: true do
  prose "The Wrong-Side Lot is the False Form made matter: crystallized fragments of the figure that will not close."
end
