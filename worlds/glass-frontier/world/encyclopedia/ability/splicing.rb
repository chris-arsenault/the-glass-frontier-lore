encyclopedia :splicing do
  name "Splicing"
  summary "Splicing is the trained craft of joining rigging line while carrying its ringglass listening thread through the join. Eye, long, and back splices are rung against a sounding edge; a clean answer certifies the join for load-bearing work."
  kind :ability
  subkind :technique
  status :complete
  topics :training, :trade, :materials
  prevalence :common
  appears_when any: { place: [:yard, :dock] }
  function "Joins rigging line with load-bearing splices proven by the listening thread's voice"

  descriptive_identity(
    signs: "The splicer works with the line across the knee and the fid moving in rhythm — " \
           "open, tuck, roll — then draws the finished join across a sounding edge and " \
           "listens with one ear turned toward the ring.",
    effect: "A true splice restores a line's strength and its voice both: the listening " \
            "thread carries cleanly through the join, and a rigger's palm on the far side " \
            "reads the load the same as through new line. The proof is the ring.",
    limits: "A splice around a broken listening thread may still hold weight, but the " \
            "load's voice stops at the join and the whole length is downgraded to mute " \
            "work."
  )

  prose <<~PROSE
    The rigging trades hang, haul, and secure their work with #{encyclopedia_ref :rigging_line, "line"}, and every working coil eventually needs an end, an eye, or a join. A splicer opens the lay with a fid and carries each strand through the tuck pattern for the job. Eye splices make permanent loops for hooks, long splices join runs that must pass through blocks, and back splices finish a free end. Each pattern also carries the listening thread through the join so a rigger can read the load on either side.

    Every finished splice is proved by ear. The splicer draws it across a sounding edge and rings the line. A clean answer certifies the join; a buzz, flat spot, or muffled note locates a bad tuck. The splicer cuts that section back and works it again. A join that holds weight but loses the thread's voice drops the whole length to mute work, regardless of how sound the fiber remains.

    Deck hands learn the service patterns. Certified splicers handle choir-true line for lifts over people and sign their work in the whipping with registered colors, as mixers mark their tins. Apprentices learn hand over hand at the knee, following the yard's spoken rhythm until they can keep the tucks and thread together without a call. Certification requires a splice, a clean ring, and a suspended test under the examiner's own weight. The first lesson is delivered over a bin of practice joins: the line forgives a slow splice and remembers a proud one.
  PROSE

  cue "The splicer works fid and strands in a knee-braced rhythm, draws the finished join across the bench's sounding edge, and the whole shop hears whether it passed."
  cue "The certified splice wears its maker's colors in the whipping. The buyer checks the colors, draws the join across a sounding edge, and listens for the clean note before taking the coil."
  affordance "A clean splice returns shortened line to certified load and carries the listening thread's signal across the join, allowing riggers to repair valuable line instead of replacing the full run."
  pressure "A splice that restores the fiber but breaks the listening thread downgrades the whole length to mute work, even when the join can still bear weight."
  variation "Eye splices make fixed loops for hooks, long splices join runs that must pass through blocks, and back splices finish a free end; each pattern carries the listening thread by a different route."
  variation "Deck crews teach a compact service repertoire, while ropery-certified splicers work choir-true line for lifts over people; each yard keeps its tuck rhythms and registered whipping colors."
end
