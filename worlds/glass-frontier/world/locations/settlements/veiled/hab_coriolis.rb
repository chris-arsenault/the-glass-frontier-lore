installation :hab_coriolis do
  name "Hab Coriolis"
  summary "Hab Coriolis is the sealed garden habitat breached during the Contested Reach and closed again after the contact team withdrew."
  subkind :settlement
  type_of :shuttered_habs
  status :complete
  tags :governance, :"ring-hab", :isolation
  prominence :recognized
  veiled "Hab Coriolis remains sealed after the forced entry that ended the system's forced-contact era."
end

relate :rel_tempered_accord_regulates_hab_coriolis, :regulates, :tempered_accord, :hab_coriolis do
  prose "The Accord protects Hab Coriolis's refusal of contact whether or not the community inside recognizes the Accord."
end
relate :rel_reconnection_fills_hab_coriolis, :fills_beat, :reconnection, :hab_coriolis do
  prose "Hab Coriolis fills the Shock-of-Difference beat: forced contact found a coherent community that understood entry as invasion."
end
relate :rel_coriolis_breach_located_in_hab_coriolis, :located_in, :coriolis_breach, :hab_coriolis do
  prose "The contact team forced entry into Hab Coriolis and the breach was sealed again after the survivor escaped."
end
