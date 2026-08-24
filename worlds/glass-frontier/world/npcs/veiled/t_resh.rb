npc :t_resh do
  name "T'resh"
  summary "T'resh is a shutter repair specialist working between the Fracture and Ashenmaw."
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "T'resh repairs Fracture shutters with crystal pins cut aboard a moving hull."
end

relate :rel_t_resh_at_the_fracture, :operates_in, :t_resh, :the_fracture
relate :rel_t_resh_at_ashenmaw, :operates_in, :t_resh, :ashenmaw
