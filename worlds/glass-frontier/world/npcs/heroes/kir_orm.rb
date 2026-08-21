npc :kir_orm do
  name "Kir Orm"
  subkind :specialist
  occupation "Airwright and passage mapper"
  specialty "Tracing airflow through porous structural channels"
  species "human"
  culture "Hab-Worlder"
  status :complete
  tags :"structural-freq", :household, :training
  prominence :marginal

  prose <<~PROSE
    Kir Orm maps Vey's wall passages with scented vapor, thread gauges, and a low-band sounding plate. She can identify a blocked branch from the order in which six neighboring rooms receive the trace. Her working maps cover sheets of thin cloth that flex with the curved lung walls.

    Orm teaches apprentices to stand in the flow before they read an instrument. Her lessons begin at Lung Three's main shutter and end inside domestic vents narrow enough to reach only with one arm. At Merren's warehouse trial, she has measured warm return arriving two minutes earlier through the surrounding passive channels, a change large enough to move condensation into occupied walls.
  PROSE
end
relate :rel_kir_orm_located_in_vey, :located_in, :kir_orm, :vey, since: 2435 do
  prose "Kir Orm maps and repairs Vey's breathing walls."
end


relate :rel_kir_orm_attuned_to_resonance, :attuned_to, :kir_orm, :resonance do
  prose "Kir Orm reads structural tone through airflow, wall vibration, and a low-band sounding plate."
end
