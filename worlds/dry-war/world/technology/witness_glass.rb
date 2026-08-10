resource :witness_glass do
  name "Witness Glass"
  subkind :material
  tags :resistance, :computation, :legibility, :trade
  prominence :marginal

  prose <<~PROSE
    Leaves of glass a little thicker than paper, written by a heated stylus and stacked into a glued block about the size of a hand. A model is written through the thickness of the block as fields of voids: no single leaf carries a readable part of it, and the block cannot be read without being separated leaf from leaf. Separating a block cracks the leaves off the glue.

    Appalachian glass shops in the #{ref :the_dead_counties, "Dead Counties"} cut and write them. A block is what a #{ref :feral_models, "feral"} looks like when it has to sit still in somebody else's building for a year.
  PROSE

  prose <<~PROSE, section: :how_it_works, heading: "The Top Leaf"
    The uppermost leaf of a block is unwritten and polished to a mirror. It takes a fingerprint, the fog of a warm hand, the drag of a blade, and the scuff of the block being lifted out of its slip case at any angle other than straight. Staff at #{ref :wing_lok_godown, "Wing Lok"} can see whether a stored block has been handled without touching the written leaves beneath it.

    A written block is read once. The leaves come off the glue in order, each lit at the angle that reveals its voids. The reader receives a working copy of the model and leaves broken glass and a line in the book.
  PROSE

  prose <<~PROSE, section: :limits, heading: "How Much Fits"
    A block holds one small model. Larger models fill several numbered blocks. Each block has its own mirrored top leaf, so the set remains intact only while every mirror stays unmarked.

    Glass shops write a block from the same source and in the same hour as the copy that ships, and the shop's mark is written into a corner of every leaf rather than onto the case. A block whose leaves carry two marks was written twice. Storage houses on the #{ref :the_pearl_river_delta, "Pearl River"} keep such blocks outside their dry rooms.
  PROSE

  log "2026-08-09 — The polished blank on top is a tamper-evident seal, from the rule that a retained sample may pass through unauthorised hands only if it is sealed so that interference shows. Making the seal a mirror rather than a band means the lower tier of certification can be performed by looking, without the house ever holding what it is certifying."
end
