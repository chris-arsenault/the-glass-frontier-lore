creature :orra_marrower_colonies do
  name "The Orra Marrower Colonies"
  summary "The Orra Marrower Colonies live throughout Orra's dead carrier, including trained survey pairs and untrained groups defending warm fluid pockets. Deep readers use their tapping exchanges to map tissue no person can enter."
  subkind :animal
  type_of :marrower
  status :complete
  tags :ecology, :resonance, :"ring-hab"
  prominence :marginal

  prose <<~PROSE
    #{ref :orra, "Orra"} crews keep trained pairs of #{encyclopedia_ref :marrower, "marrowers"} in padded cases and release them at survey ports. The animals return for bitter fungal paste. One that stays inside has usually found a fresh warm pocket, and the crew opens the parallel service passage before cutting toward it.

    Untrained colonies defend those pockets and follow a tapping tool into occupied fungal beds. Deep readers compare the colonies' exchanges through the carrier with probes along its spine.
  PROSE

  gm_note :appears, "A survey begins with a padded case at the port and a trained pair released into channels no person fits through. The animal that stays inside has found the pocket worth cutting toward."
  gm_note :triggered_by, "Striking carrier tissue or working metal brings every nearby colony into the tapping exchange, and an untrained group follows the sound into the room that made it."
  gm_note :complicates, "A trapped colony accelerates its rhythm until the carrier tissue contracts, driving sweet gas toward the nearest service passage."
end

relate :rel_orra_marrower_colonies_inhabit_orra, :inhabits, :orra_marrower_colonies, :orra, since: 2435 do
  prose "Marrower colonies feed and nest throughout Orra's carrier body."
end
