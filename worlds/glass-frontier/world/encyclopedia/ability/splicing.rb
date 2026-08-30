encyclopedia :splicing do
  name "Splicing"
  summary "Splicing is the working craft of joining line so the join sings true — the lay opened, the strands married, and the finished splice proven by ear against the listening thread. A spliced line that answers clean carries certified load; the craft is the rigging trades' handwriting."
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
           "listens with the tilted head every certified trade seems to share.",
    effect: "A true splice restores a line's strength and its voice both: the listening " \
            "thread carries cleanly through the join, and a rigger's palm on the far side " \
            "reads the load the same as through virgin line. The proof is the ring.",
    limits: "The thread tells the truth about the splice it runs through, so the craft's " \
            "boundary is the thread itself — a splice around a broken listening thread " \
            "holds weight and goes mute at the join, downgrading the whole line to " \
            "voiceless work."
  )

  prose <<~PROSE
    Everything the rigging trades hang, haul, and trust runs on #{encyclopedia_ref :rigging_line, "line"}, and line ends, frays, and wants joining. Splicing is the craft: the lay opened with the fid, the strands married in the tucked patterns each use demands — eye splices for the hooks, long splices for runs that pass through blocks, the short brutal back-splice that ends a working line honestly — and the join finished so the listening thread carries through it. The proof is by ear. A finished splice is drawn across a sounding edge and rung, and a true join answers with the line's own clean voice; a buzz, a flat spot, or a muffled ring names the tuck that failed, and the splicer cuts it back and starts over, because the trades certify the sound rather than the look.

    The craft is common the way lending is common — every deck hand splices serviceably — and deep the way singing is deep: the certified splicers who join choir-true line for lifts over people hold their marks like mixers, and their splices are signed in the whipping. Teaching runs hand over hand at the knee, the apprentice's fingers guided through the tucks to the workshop rhythm, and the trade examinations are pleasingly literal — splice it, ring it, hang the examiner's own weight on it. Yard lore holds the craft's whole ethic in the standard first-day speech, delivered over a bin of failed practice joins: the line forgives a slow splice and remembers a proud one.
  PROSE

  cue "The splicer works fid and strands in a knee-braced rhythm, draws the finished join across the bench's sounding edge, and the whole shop hears whether it passed."
  cue "The certified splice wears its maker's colors in the whipping, and the buyer rings it once themselves — trust, followed by verification, in the trades' proper order."
  affordance "A true splice returns a broken or shortened line to certified load and full voice — which keeps the rigging economy running on repair rather than replacement, and makes a certified splicer's mark worth real money on any dock."
  pressure "The ring test certifies the splice and the thread limits the craft — a join over broken thread holds weight mute, downgrading the line — so every splice begins with the splicer's honest verdict on whether this line keeps its voice or becomes fence stock."
  variation "Dock splicers work fast eye-and-loop repertoires between tides; the ropery-certified masters join choir-true line for lifts over people, and their examination splices hang on the shop wall like diplomas."
  variation "Every yard teaches the tucks to the same workshop rhythm and swears its rhythm is the original, and traveling splicers collect the local variants in their hands the way criers collect street pitches."
end
