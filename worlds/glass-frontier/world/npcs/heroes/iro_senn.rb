npc :iro_senn do
  name "Iro Senn"
  subkind :official
  occupation "Gray Line station lead"
  species "human"
  culture "Hab-Worlder"
  jurisdiction "Latch cordon and its recovery ledger"
  tags :resonance, :governance, :danger
  prominence :marginal
  status :complete

  prose <<~PROSE
    Station lead at #{ref :gray_line, "Gray Line"} and Dern Talish's oldest colleague from the cordons. Iro Senn manages the wall watch, family recovery requests, and the crews sent to service the outer mounts. He distrusts ceremonial inspections and sends Dern blunt private reports because she asked him never to improve bad news for headquarters.

    Senn remained at Gray Line when Dern moved into regional command. Their friendship consists mostly of shift notes, arguments over exposure limits, and one shared meal whenever she visits.
  PROSE
end

relate :rel_iro_senn_located_in_gray_line, :located_in, :iro_senn, :gray_line do
  prose "Senn lives and works at #{ref :gray_line, "Gray Line"}."
end

relate :rel_iro_senn_member_displacement_council, :member_of, :iro_senn, :displacement_council do
  prose "He runs the Council's oldest continuously staffed cordon station."
end

relate :rel_iro_senn_leads_gray_line, :leads, :iro_senn, :gray_line, since: 2428 do
  prose "He leads the Gray Line watch and signs its recovery permits."
end
