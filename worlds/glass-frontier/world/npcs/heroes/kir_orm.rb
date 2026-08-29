npc :kir_orm do
  name "Kir Orm"
  summary "Kir Orm is a Vey airwright who maps passages through the habitat's curved lung walls."
  subkind :specialist
  occupation "Airwright and passage mapper"
  specialty "Tracing airflow through porous structural channels"
  type_of :humans
  belongs_to :culture, :hab_worlder
  descriptive_identity disposition:
    "Orm takes work from anyone with a wall that has stopped breathing, " \
    "and stands whoever hired her in the flow beside her before she lets " \
    "them read an instrument."
  status :complete
  tags :"structural-freq", :household, :training
  prominence :marginal

  prose <<~PROSE
    Kir Orm maps Vey's wall passages with scented vapor, thread gauges, and a low-band sounding plate. She can identify a blocked branch from the order in which six neighboring rooms receive the trace. Her working maps cover sheets of thin cloth that flex with the curved lung walls.

    Orm teaches apprentices to stand in the flow before they read an instrument. Her lessons begin at Lung Three's main shutter and end inside domestic vents narrow enough to reach only with one arm. At Merren's warehouse trial, she has measured warm return arriving two minutes earlier through the surrounding passive channels, a change large enough to move condensation into occupied walls.
  PROSE

  gm_note :appears, "Orm finds a blocked branch by releasing scented vapor and timing the order in which six " \
                    "neighboring rooms receive it, and she takes work from anyone with a wall that has stopped " \
                    "breathing. Whoever hired her stands in the flow beside her before she lets them look at an " \
                    "instrument."
  gm_note :triggered_by, "Bring her any fault in Vey's walls and she reaches for the warehouse trial: warm return " \
                         "arriving two minutes early through the passive channels, enough to move condensation " \
                         "into occupied walls. She treats new work near a household vent as that problem until a " \
                         "trace says otherwise."
  gm_note :complicates, "Her maps are thin cloth cut to flex with the curved lung walls, so they read correctly " \
                        "only against the wall they were drawn on. The narrowest vents in a survey take one arm at " \
                        "most, and what is lost or hidden in them is found by touch and by where the vapor comes out."
end
relate :rel_kir_orm_located_in_vey, :located_in, :kir_orm, :vey, since: 2435 do
  prose "Kir Orm maps and repairs Vey's breathing walls."
end
