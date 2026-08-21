npc :brace do
  name "Brace"
  subkind :specialist
  occupation "Formation captain"
  specialty "Large crossings through changing gravity"
  species "orc"
  culture "Orcish"
  status :complete
  tags :training, :transport, :"kinetic-freq", :danger
  prominence :marginal

  prose <<~PROSE
    Brace leads Kesh formations through heavy or changing gravity. The name is the mononym they chose after holding a failed cargo line long enough for two linked crews to clear the chamber. Their broad position diagrams use footprints, hand marks, and breath counts that mixed crews can learn on the floor.

    Brace builds a formation from its weakest required position. If a crossing needs one person to crawl beneath a load, every member rehearses the crawl and learns how its weight enters the group. They rotate strong workers through edges and place calm breathers at the center, where the kinetic field carries their rhythm outward.

    The walking bridge now consumes most of Brace's shifts. They have marked the twentieth position reported by Nineteen as an open place inside the formation and assigned two experienced residents to keep their hands around it during the next chamber turn.
  PROSE
end

relate :rel_brace_located_in_kesh, :located_in, :brace, :kesh, since: 2435 do
  prose "Brace trains and leads Kesh's large movement formations."
end
