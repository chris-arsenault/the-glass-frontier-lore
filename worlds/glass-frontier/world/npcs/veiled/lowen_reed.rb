npc :lowen_reed do
  name "Lowen Reed"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Lowen Reed repairs Lowbank flood grates with reed-brass fittings cast beside the Reed Door."
end

relate :rel_lowen_reed_at_the_reed_door, :operates_in, :lowen_reed, :the_reed_door
relate :rel_lowen_reed_at_lowbank, :operates_in, :lowen_reed, :lowbank
