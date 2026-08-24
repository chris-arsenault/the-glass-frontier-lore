npc :brace do
  name "Brace"
  summary "Brace is a formation captain who leads mixed crews through Kesh's heavy and changing gravity."
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

  gm_note :triggered_by, "Tell Brace what you are good at and they will assign you the position the crossing is weakest at instead. Every member rehearses the crawl beneath the load, including the ones who will never do it, before anyone is allowed onto the threshold."
  gm_note :appears, "Brace lays out the crossing on the floor in footprints, hand marks and breath counts, then expects it walked through before the talking resumes. Crews with no language in common learn the whole route from those marks."
  gm_note :complicates, "Brace has left the twentieth position open in the walking bridge with two experienced residents' hands around it. Newcomers are placed away from the center and told where not to step, and the formation crosses one body short on purpose."
end

relate :rel_brace_located_in_kesh, :located_in, :brace, :kesh, since: 2435 do
  prose "Brace trains and leads Kesh's large movement formations."
end
