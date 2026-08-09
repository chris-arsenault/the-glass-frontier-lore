resource :witness_glass do
  name "Witness Glass"
  tags :resistance, :computation, :legibility, :trade
  prominence :marginal

  prose <<~PROSE
    Leaves of glass a little thicker than paper, written by a heated stylus and stacked into a glued block about the size of a hand. A model is written through the thickness of the block as fields of voids: no single leaf carries a readable part of it, and the block cannot be read without being separated leaf from leaf. Separating a block cracks the leaves off the glue.

    Appalachian glass shops in the #{ref :the_dead_counties, "Dead Counties"} cut and write them, out of the same #{ref :physical_cryptography, "practice"} that produced one-time materials and objects that must be destroyed to be read. A block is what a #{ref :feral_models, "feral"} looks like when it has to sit still in somebody else's building for a year.
  PROSE

  prose <<~PROSE, section: :how_it_works, heading: "The Top Leaf"
    The uppermost leaf of a block is unwritten and polished to a mirror. It takes a fingerprint, the fog of a warm hand, the drag of a blade, and the scuff of the block being lifted out of its slip case at any angle other than straight. A lodging house can therefore certify a block without touching what is under the leaf, which is the whole of what the lower tier of #{ref :the_lodged_half, "a counter-draw"} pays for.

    A written block is read once. The leaves come off the glue in order, each is lit at the one angle its voids stand up at, and what the reading produces is a working copy of the model somewhere else. What it leaves is broken glass and a line in the book.
  PROSE

  prose <<~PROSE, section: :limits, heading: "How Much Fits"
    A block holds one small model. Architectures spliced out of three others do not fit and are lodged in parts, on blocks numbered as a set, which is a set of seals to keep sound rather than one.

    Glass shops write a block from the same source and in the same hour as the copy that ships, and the shop's mark is written into a corner of every leaf rather than onto the case. A block whose leaves carry two marks was written twice, and no lodging house on the #{ref :the_pearl_river_delta, "Pearl River"} will receipt one.
  PROSE

  log "2026-08-09 — The polished blank on top is a tamper-evident seal, from the rule that a retained sample may pass through unauthorised hands only if it is sealed so that interference shows. Making the seal a mirror rather than a band means the lower tier of certification can be performed by looking, without the house ever holding what it is certifying."
end
