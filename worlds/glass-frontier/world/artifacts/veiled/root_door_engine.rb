artifact :root_door_engine do
  name "Root Door Engine"
  summary "The Root Door Engine is a passage-opening machine used in the Underlayers, Folded Annex, and Old Campus. It borrows structural tension from an adjoining wall to open sealed ring doors."
  subkind :machine
  status :complete
  prominence :marginal
  veiled "The Root Door Engine opens sealed ring passages by borrowing structural tension from the adjoining wall."
end

relate :rel_root_door_engine_at_underlayers, :operates_in, :root_door_engine, :underlayers
relate :rel_root_door_engine_at_folded_annex, :operates_in, :root_door_engine, :folded_annex
relate :rel_root_door_engine_at_old_campus, :operates_in, :root_door_engine, :old_campus
