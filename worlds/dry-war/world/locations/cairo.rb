geographic_location :cairo do
  name "Cairo"
  subkind :settlement
  tags :water, :governance, :autonomy, :locality
  prominence :recognized

  prose <<~PROSE
    A #{ref :continuity, "Continuity"} municipality on the old Illinois point between the Ohio and Mississippi. The inhabited town climbs the inner levee and the terraces behind it. Its lowest ward remains on the floodplain because the courthouse, cemetery, ferry landing and oldest occupied streets are there.

    Continuity maintains safe housing on higher ground. A household may accept it without leaving the municipal rolls.
  PROSE

  prose <<~PROSE, section: :governance, heading: "Two Rolls"
    In #{year :now} CE the city voted to keep its lowest ward occupied after a flood order. See #{ref :the_cairo_retreat, "the Cairo Retreat"} for the appeal and enforcement.

    Cairo's charter and serviced addresses now sit at #{ref :cairo_ridge, "Cairo Ridge"}. Forty-seven households declined transferred addresses and remain inside the old levee as #{ref :the_forty_seven, "the Forty-Seven"}. #{ref :inez_bell, "Inez Bell"} keeps the transferred voter roll at the ridge and a separate paper record of presence in the old ward.
  PROSE
end
