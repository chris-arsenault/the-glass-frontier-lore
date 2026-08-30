artifact :the_tessellan_triptych do
  name "The Tessellan Triptych"
  summary "The Tessellan Triptych is a complete Three Forms panel kept by the Tessellan Communion, with two lawful figures flanking the False Form."
  type_of :the_three_forms
  subkind :record
  status :complete
  tags :resonance, :cosmology, :religion
  prominence :recognized

  gm_note :appears, "Gold marks the structural band and red the kinetic, so the panels tell a visitor what the machine before them does before its owner explains."
end
relate :rel_tessellan_communion_maintains_triptych, :maintains, :tessellan_communion, :the_tessellan_triptych do
  prose "The #{ref :tessellan_communion, "Tessellan Communion"} keeps the discipline's public form."
end
