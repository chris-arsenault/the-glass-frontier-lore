npc :bell_lung do
  name "Bell Lung"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Bell Lung listens for valve chatter in Lung Three and compares it with Vey's pump recordings."
end

relate :rel_bell_lung_at_lung_three, :operates_in, :bell_lung, :lung_three
relate :rel_bell_lung_at_vey, :operates_in, :bell_lung, :vey
