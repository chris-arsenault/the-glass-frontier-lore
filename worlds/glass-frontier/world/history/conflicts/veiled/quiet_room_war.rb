conflict :quiet_room_war do
  name "The Quiet Room War"
  summary "The Quiet Room War was fought by Old Campus and Underlayers households through soundless passages."
  subkind :war
  type_of :armed_conflict
  status :complete
  prominence :marginal
  veiled "Old Campus and Underlayers households preserve opposite door markings from a war fought through soundless passages."
end

relate :rel_quiet_room_war_at_old_campus, :manifests_at, :quiet_room_war, :old_campus
relate :rel_quiet_room_war_at_underlayers, :manifests_at, :quiet_room_war, :underlayers
