npc :pava_lorn do
  name "Pava Lorn"
  summary "Pava Lorn is a sarn migration reader who assigns safe collection bands from Perch's outer pylons."
  subkind :specialist
  occupation "Migration reader"
  specialty "Sarn health, formation changes, and safe collection bands"
  type_of :humans
  belongs_to :culture, :hab_worlder
  belongs_to :role, :reader
  descriptive_identity disposition:
    "Lorn replies in spacing and comb angle rather than permission, and " \
    "sends anyone pointing at a single animal's turn back to count the " \
    "whole formation first."
  status :complete
  tags :ecology, :navigation, :trade, :"kinetic-freq"
  prominence :marginal

  prose <<~PROSE
    Pava Lorn reads the sarn passage from Perch's outer pylons. She compares herd spacing, comb angle, breathing flashes, and the position of young animals inside each spiral. Her board turns those observations into collection bands that keep vessels among the shed material.

    Lorn worked as a comb cutter before an injured sarn carried her line through the center of a herd. The hour she spent among the quiet young gave her a view of how adults exchange load around them. She now trains ward readers to watch the entire formation before assigning meaning to one animal's turn.

    She closed the inner collection band after the second herd began circling Perch. Its oldest animals hold positions that usually belong to juveniles, while younger adults fly the strained outer edge.
  PROSE

  gm_note :appears, "Nothing collects at Perch without a band off Lorn's board, so a crew that wants a particular stretch of the spiral is asking her for it, and she answers in spacing and comb angle rather than in permission."
  gm_note :triggered_by, "Point at one animal's turn and Lorn will not read it; she sends the asker back to count the whole formation first, the same way she trains ward readers, so an urgent single observation buys a lesson before it buys an answer."
  gm_note :complicates, "When the pylon record cannot resolve the inner formation she rides #{ref :molt} into the spiral herself, which puts the person who assigns every collection band inside the part of the herd she has closed to everyone else."
end

relate :rel_pava_lorn_located_in_perch, :located_in, :pava_lorn, :perch, since: 2435 do
  prose "Pava Lorn assigns safe collection bands during Perch's sarn passage."
end
