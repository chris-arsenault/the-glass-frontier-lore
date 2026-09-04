installation :room_before_the_ice do
  name "The Room Before the Ice"
  summary "The Room Before the Ice is a furnished Ring Age apartment melting free of Mera's Fourth Column, with the thawglass frame passing through its walls as though the room predated the column."
  context_tags :sealed_hab, :cold
  subkind :installation
  culture :rolls
  resource :thawglass
  status :complete
  tags :"ring-hab", :"ring-era", :household, :materials, :mystery
  prominence :marginal

  descriptive_identity(
    setting: "A complete Ring Age apartment inside Mera's Fourth Column, furnished with Ring Age chairs and a sealed interior door.",
    activity: "Ward readers post the falling water level beside two competing claims while the bright-season market occupies the surrounding stairs.",
    access: "The apartment opens as the Fourth Column melts free around it; Mera has diverted the next spill channel away from the room.",
    hazards: "The thawglass frame passes through its walls, and the diversion sends one water ward's garden share through another ward's public column."
  )

  prose <<~PROSE
    This thaw has exposed a complete apartment inside the Fourth Column, furnished with Ring Age chairs and a sealed interior door. The thawglass frame passes through its walls as though the room stood there before the column grew. Mera has diverted the next spill channel around it.

    The diversion sends one water ward's garden share through another ward's public column. Both have filed claims before the apartment finishes melting free: one for the lost spring flow, the other for the room now occupying its frame. The bright-season market has moved onto the surrounding stairs, where ward readers post the falling water level beside each claim.
  PROSE

  gm_note :appears, "The apartment opens a little farther each day as the Fourth Column melts, while ward readers post the falling water level beside each claim."
  gm_note :complicates, "Two water wards have filed against each other: one for the lost spring flow, the other for the room now occupying its frame."
end

relate :rel_room_before_the_ice_located_in_mera, :located_in, :room_before_the_ice, :mera do
  prose "The apartment is melting free of Mera's Fourth Column."
end
