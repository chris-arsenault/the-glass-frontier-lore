artifact :the_six_faced_pipe_shard do
  name "The Six-Faced Pipe Shard"
  subkind :record
  aka "Admission 41806", "压力管道验收表"
  tags :legibility, :trade, :resistance
  prominence :marginal

  prose <<~PROSE
    A mineral-loaded slab kept in bay nine of the #{ref :juyan_ceramic_vault, "Juyan Ceramic Vault"}. It came east from a Lanzhou copying house in 2071 with six readable faces and the 2049 Chinese edition of a North American standard for chilled-water and brine pipes buried through its body.

    Three faces have gone to the lapping plate. The first yielded pressure tables. The second yielded two pages from the index of some other lost work. The third gave joint preparation, a test at one and a half times working pressure, a ten-minute hold, and the order to leave every joint uncovered while somebody watched it. Three faces remain.
  PROSE

  prose <<~PROSE, section: :description, heading: "Changed Figures"
    The first table bears the mark 修改采用, showing that the Chinese edition changed at least two figures from its foreign source. The table naming those changes lies on one of the unread faces, or does not survive at all. The shard can still establish how a pipe was tested and what a witness would have seen, but its exact pressure figures cannot be trusted beyond the pages already exposed.

    A reader must grind away about a tenth of a millimetre to expose each face, press damp paper into the relief, and lift the pattern in ink. A brush struck badly can shatter the face beneath it. The two people at Juyan who work this dense ware leave the shard alone whenever paper runs short.

    A rubbing from the shard crossed the Pacific with Pearl River freight and reached #{ref :race_street_warehouse, "the Race Street warehouse"}. #{ref :ruth_osei, "Ruth Osei"} used its description of the witnessed hold to distinguish the two people who claimed payment for #{ref :the_callowhill_riser, "the Callowhill riser"}.
  PROSE

  log "2026-08-09 — Replaced the pressure schedule as a document subject with the six-faced ceramic that physically carries it. The remaining facts concern the shard, its destruction by reading, and the distant repair its third face helped settle."
end
