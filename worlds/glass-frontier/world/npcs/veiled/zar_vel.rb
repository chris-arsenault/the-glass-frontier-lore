npc :zar_vel do
  name "Zar'vel"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Zar'vel matches Xyloathax tissue pulses to the rhythmic pressure changes recorded at Avar."
end

relate :rel_zar_vel_at_xyloathax, :operates_in, :zar_vel, :xyloathax
relate :rel_zar_vel_at_avar, :operates_in, :zar_vel, :avar
