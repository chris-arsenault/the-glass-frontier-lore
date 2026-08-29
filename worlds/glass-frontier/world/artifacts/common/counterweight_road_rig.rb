artifact :counterweight_road_rig do
  name "Counterweight Road Rig"
  summary "The Counterweight Road Rig is a two-kite equipment set for moving occupied or operating buildings across temporary load paths. The Counterweight carries its lifting frames, pressure sleds, service lines, and warning instruments between jobs."
  subkind :machine
  type_of :field_machine
  function "Moves an occupied or operating structure across a temporary load path"
  status :complete
  tags :surface, :transport, :"structural-freq", :"kinetic-freq", :training
  prominence :recognized

  descriptive_identity(
    appearance:
      "Two cargo kites' worth of numbered equipment: lifting frames, " \
      "edge-numbered steel mats, timber cribbing, jointed pressure " \
      "sleds, sounding stakes with replaceable ringglass cores, warning " \
      "shackles, and a squat ceramic bridge box with paper transfer " \
      "cards tied inside its lid. Some pieces still carry Ladderwell's " \
      "marks from the 2434 chain-house move.",
    handling:
      "The set is packed, inspected, and called as one machine — the " \
      "unloading order is the order a safe load path can be built. Mats " \
      "and cribbing carry the building forward in short lifts onto " \
      "resting towers, three singing stakes and a measured chain read " \
      "the ground ahead, and the engine hand closes the bridge box's " \
      "changeover bars only after both power feeds hold the same beat.",
    risks:
      "A sounding shackle is an alarm, not a measurement: it may be " \
      "answering heat, and a quiet one can stand beside a failing mat, " \
      "so no tone becomes a lift decision before the caller checks it " \
      "against a tuning compass, the jack heights, and the road marks. " \
      "Parts do not separate — a jack without its mat is simply not " \
      "available.",
  )

  prose <<~PROSE
    The Counterweight Road Rig is the travelling equipment set used by #{ref :counterweight, "the Counterweight"} to move buildings that cannot stop working. It fills two cargo kites when packed: lifting frames, steel mats, timber cribbing, pressure sleds, temporary service lines, spare drives, sounding stakes, numbered warning shackles, and the bridge box that keeps a second power path ready before the first is cut.

    The rig is treated as one machine because every part is packed, inspected, and called in relation to the rest. A jack without its mat is not available. A shackle separated from its numbered core is not replaced with one that happens to fit. The order in which the equipment leaves a kite is the order in which a safe path can be built.
  PROSE

  prose <<~PROSE, section: :operations, heading: "The Load Road"
    Steel mats distribute weight along firm ground. Timber cribbing builds short resting towers beneath the lifted structure. Pressure sleds bridge the moving points between them: shallow trays with jointed undersides that spread load without requiring the ground to remain perfectly level. The building advances a short distance, settles onto cribbing, and leaves the sled free for the next lift.

    Every mat has a painted edge number and a corresponding place in the packing plan. After a job, crews record bending, heat, field exposure, and the surface that carried it. A clean-looking mat can be retired because its history shows three difficult crossings. A scarred one may remain in service because each deformation stopped where the inspection marks say it did.

    The road is built ahead and removed behind. Local timber and iron extend it. The travelling set provides the parts whose behavior the four crew members must already know when hundreds of other hands begin lifting on the same count.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "Stakes and Shackles"
    Three singing stakes and a measured chain compare the structure, the temporary road, and the ground ahead. Each stake carries a replaceable ringglass core held below its striking head. A broad answer moving through all three usually comes from the local field. One interval widening while the others hold indicates movement within the load path.

    Warning shackles sit at selected joints in the lifting frame. Their numbered cores sound as strain approaches the limit recorded for that shackle. The tone is an alarm, not a measurement of the whole structure. A quiet shackle can stand beside a failing mat, and a sounding one may be reacting to heat rather than excess load. The route caller compares them with a #{encyclopedia_ref :tuning_compass, "tuning compass"}, the jack heights, and the marks on the road before choosing the next lift.

    Retired cores are cut open in front of local trainees. Heat cracks, loose seats, contaminated crystal, and permanent drift each leave a different fault. The Counterweight leaves the opened core with the settlement because a warning device teaches more after failure when people can see why it stopped being trusted.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "The Bridge Box"
    The bridge box is a squat ceramic cabinet containing an independent drive controller, physical changeover bars, and enough stored power to carry a critical service while its permanent feed is moved. It does not switch automatically. The engine hand brings the temporary line up, matches it against the working drive, and closes the bars only after both sides hold the same beat.

    Water pumps, clinic pressure, kiln ventilation, refrigeration, and waste lines each require a different temporary path. The box handles power and control. Flexible pipe, mechanical bypasses, and local storage handle the material being moved. A building remains in service only when all of those paths exist together.

    The box keeps a paper card for each transfer. Both feeds, the person authorizing the change, the load at the moment of closure, and the order for separating them are written before the bars move. The card remains tied inside the lid until the permanent service is restored.
  PROSE

  prose <<~PROSE, section: :history, heading: "Ladderwell Marks"
    The rig's best-known job moved #{ref :ladderwell, "Ladderwell"}'s chain house across a settling bench in 2434. Several pieces still carry the town's marks. One pressure sled has a replaced hinge where a crib sank at the lower turn. A warning shackle bears a white band added after a local hand heard it between lift counts and stopped the move.

    Ladderwell retained a smaller duplicate set for bridges, mills, and water work. The travelling rig kept the marked originals. Counterweight contracts now allow local crews to copy every ordinary component they can maintain. The tuned cores and bridge controller remain with the road rig because their inspection records travel with them.
  PROSE

  gm_note :triggered_by, "Ask to borrow one piece of the rig and the crew answers with the packing plan rather than the part. " \
                         "A jack without its mat is not available, and a shackle whose numbered core went to scrap is not replaced with one that happens to fit."
  gm_note :complicates, "A warning shackle sounding between counts stops the lift and settles nothing. It may be answering heat rather than strain, " \
                        "and a silent shackle can stand beside a failing mat, so the caller reads it against the jack heights and the marks on the road first."
  gm_note :appears, "Retired cores are cut open in front of local trainees and left behind, so towns along the rig's route keep a shelf of opened failures: heat cracks, loose seats, contaminated crystal, drift. " \
                    "Someone there can usually name what killed a core the players carry in."
end

relate :rel_counterweight_possesses_road_rig, :possesses, :counterweight, :counterweight_road_rig, since: 2429 do
  prose "The Counterweight carries its road rig between jobs in two cargo kites."
end
relate :rel_counterweight_designed_road_rig, :designed, :counterweight, :counterweight_road_rig do
  prose "The four-person crew arranged common lifting equipment into one repeatable packing, inspection, and stop-call system."
end
relate :rel_road_rig_depends_on_tuning_compass, :depends_on, :counterweight_road_rig, :shared_reference do
  prose "The rig's stakes and warning shackles are checked against the Shared Reference before a changed tone becomes a lift decision."
end
