npc :pava_lorn do
  name "Pava Lorn"
  subkind :specialist
  occupation "Migration reader"
  specialty "Sarn health, formation changes, and safe collection bands"
  species "human"
  culture "Hab-Worlder"
  status :complete
  tags :ecology, :navigation, :trade, :"kinetic-freq"
  prominence :marginal

  prose <<~PROSE
    Pava Lorn reads the sarn passage from Perch's outer pylons. She compares herd spacing, comb angle, breathing flashes, and the position of young animals inside each spiral. Her board turns those observations into collection bands that keep vessels among the shed material.

    Lorn worked as a comb cutter before an injured sarn carried her line through the center of a herd. The hour she spent among the quiet young gave her a view of how adults exchange load around them. She now trains ward readers to watch the entire formation before assigning meaning to one animal's turn.

    She closed the inner collection band after the second herd began circling Perch. Its oldest animals hold positions that usually belong to juveniles, while younger adults fly the strained outer edge.
  PROSE
end

relate :rel_pava_lorn_located_in_perch, :located_in, :pava_lorn, :perch, since: 2435 do
  prose "Pava Lorn assigns safe collection bands during Perch's sarn passage."
end
