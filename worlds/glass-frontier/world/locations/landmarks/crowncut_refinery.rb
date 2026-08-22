installation :crowncut_refinery do
  name "Crowncut Refinery"
  playable_as :chronicle_location
  subkind :installation
  tags :salvage, :resonance, :ringglass, :orbital
  prominence :marginal
  status :complete
  omit_facts :maintained_by

  prose <<~PROSE
    The abandoned Coremark refinery where #{ref :lira_vashtenri, "Lira Vashtenri"} learned deep-Shear array work. Crowncut was fixed inside a split debris mass whose two halves drew from the same local resonance field. Adjusting one processing line could move load into machinery hundreds of meters away.
  PROSE

  prose <<~PROSE, section: :history, heading: "The Quiet Record"
    Other Coremark plants treated field movement as instrument error and replaced damaged arrays. Crowncut's foreman, #{ref :pera_soll, "Pera Soll"}, let Lira retune the lines according to changes she could feel before the gauges registered them. The refinery's maintenance record became an outlier: fewer failures, lower yield, and no unexplained structural losses.

    Coalition investigators found that record while searching for equipment that had survived conditions resembling the Bloom boundaries. It led them to Lira.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Crowncut closed after Coremark's disgrace. The processing halls have been stripped, but the paired array beds remain because removing either one changes the load on the other. Compact survey teams visit to teach coupled-field inspection and leave both beds where they are.
  PROSE
end

relate :rel_crowncut_located_in_deep_shear, :located_in, :crowncut_refinery, :deep_shear do
  prose "Crowncut occupies a split debris mass in the Deep Shear."
end

relate :rel_coremark_maintained_crowncut, :maintains, :coremark, :crowncut_refinery, since: 2348, till: 2378 do
  prose "Coremark operated Crowncut until the Silent Bloom ended its legitimate business."
end
