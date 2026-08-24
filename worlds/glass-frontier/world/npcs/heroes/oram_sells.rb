npc :oram_sells do
  name "Oram Sells"
  subkind :leader
  occupation "Third First Threshold of the Displacement Council"
  species "human"
  culture "Hab-Worlder"
  tags :governance, :resonance, :danger
  prominence :recognized
  status :complete

  prose <<~PROSE
    The third First Threshold of the #{ref :displacement_council, "Displacement Council"}, in office from 2421 until his death in 2432. Oram Sells inherited a mature cordon service with exhausted crews, uneven records, and more boundaries than its founders had planned to hold. He standardized handoffs between stations and required each cordon to maintain a recovery ledger for the families outside it.
  PROSE

  prose <<~PROSE, section: :history, heading: "Succession"
    Bloom exposure accumulated across #{elapsed 2421, 2432} of inspections. When the damage became terminal, Sells chose #{ref :dern_talish, "Dern Talish"} as his successor and spent his final season transferring the Council's ordinary command. The last briefing took place at #{ref :gray_line, "Gray Line"}, where he disclosed the hidden elven cooperation and gave her the contact protocol.
  PROSE

  gm_note :appears, "Sells died in 2432 and the cordons still run on his requirements: each keeps the recovery " \
                    "ledger he ordered for the families outside it, and station handoffs follow the form he " \
                    "standardized. Asked why a cordon files records for people it will not let across, an officer " \
                    "gives his name."
  gm_note :complicates, "Bloom exposure taken across #{elapsed 2421, 2432} of station inspections killed him, and " \
                        "Council officers reach for that whenever they refuse to extend a watch or approve an " \
                        "unscheduled crossing."
end

relate :rel_oram_sells_leads_displacement_council, :leads, :oram_sells, :displacement_council, since: 2421, till: 2432 do
  prose "Sells was the Council's third First Threshold and led it for #{elapsed 2421, 2432}."
end

relate :rel_oram_sells_located_in_gray_line, :located_in, :oram_sells, :gray_line, till: 2432 do
  prose "Gray Line was his last operational station and the site of Dern Talish's read-in."
end

moment :oram_sells_dies, year: 2432, of: :oram_sells do
  prose "Sells died from accumulated Bloom exposure three months after naming Dern Talish as his successor."
  effects { set :oram_sells, standing: :dead }
end
