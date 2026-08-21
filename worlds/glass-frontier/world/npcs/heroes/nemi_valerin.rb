npc :nemi_valerin do
  name "Nemi Valerin"
  subkind :leader
  born 2389
  occupation "Voice Proximate of the Lattice Proxy Synod"
  species "human"
  culture "Sithari"
  tags :AI, :resonance, :"ring-era", :governance
  prominence :recognized
  status :complete

  prose <<~PROSE
    Nemi Valerin is the Voice Proximate of the #{ref :lattice_proxy_synod, "Lattice Proxy Synod"}, the senior proxy permitted to speak for its custodian work. She began at #{ref :threshold_station, "Threshold Station"} as a telemetry clerk. A custodian rejected every formal query placed before it during a debris emergency in 2417, then answered the compact sequence Valerin used to label missing readings. The answer corrected the station's collision forecast.

    Valerin tests an output by asking what it changes for a ship, a settlement, or a court. She leaves responses untranslated when the Synod cannot show that consequence. This has made its public feed narrower under her tenure and reduced the number of corrections issued after release.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "Present Day"
    One traffic custodian now returns two route maps for the same Shear query. Both maps fit the measurements available at Threshold, but they place the safest crossing on opposite sides of the same debris belt. Valerin has withheld both from the navigation feed and sends the raw measurements to the #{ref :shear_compact, "Shear Compact"} instead.

    The Compact wants one map marked provisional before the next salvage departures. #{ref :the_continuity, "The Continuity"} mission at Threshold wants the query opened to its own analysts. Valerin has agreed to a joint instrument run and refused access to the proxy sequence that produced the answers.
  PROSE
end

relate :rel_nemi_valerin_leads_synod, :leads, :nemi_valerin, :lattice_proxy_synod, since: 2431 do
  prose "The senior proxies named Valerin Voice Proximate in 2431 after comparing the useful outputs produced by every active proxy."
end
relate :rel_nemi_valerin_located_threshold_station, :located_in, :nemi_valerin, :threshold_station, since: 2412 do
  prose "She has worked in Threshold Station's proxy halls since her first posting as a telemetry clerk."
end
relate :rel_nemi_valerin_member_synod, :member_of, :nemi_valerin, :lattice_proxy_synod, since: 2412 do
  prose "Valerin entered the Synod through its telemetry staff and learned proxy work inside the station."
end
relate :rel_nemi_valerin_cooperates_shear_compact, :cooperates_with, :nemi_valerin, :shear_compact, since: 2431 do
  prose "She supplies the Compact with custodian measurements while retaining Synod control of the queries that produced them."
end
