conflict :the_forever_war do
  name "The Amur Front"
  subkind :war
  aka "the Forever War"
  tags :catastrophe, :military, :ecology
  prominence :recognized
  fact :methods, "Cuts changing forest back from settlements and moves the marked line when cleared ground changes again"

  prose <<~PROSE
    The Amur Front is the continuing defence against the #{ref :the_others, "Others"} along the northeastern edge of connected China. Line crews also call it the Forever War.

    Crews cut changing forest back from settlements, mark each cleared compartment and move the line when the same ground changes again.
  PROSE

  prose <<~PROSE, section: :course, heading: "The Joint Campaign"
    From 2070 to 2076, machine and fungal forces shared commands along the river. Machine-directed crews cleared affected forest. Mycelial growth rebuilt farms and wetlands behind them. Human scouts crossed ground where machine prediction and fungal sensing both failed.

    The joint command ended when cleared forest began changing again. Chinese and coalition crews remained at the line.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "Holding The Line"
    Posts such as #{ref :tangwang_post, "Tangwang"} combine fungal tissue readings, coalition weather models and human walks through the same stands. Cooperation ends at the marked compartment; the governments continue the Dry War across the watersheds behind it.
  PROSE

  log "2026-08-10 — Localized the former Forever War to the Amur instead of treating it as a planetary conflict involving every coalition."
end
