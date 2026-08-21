faction :clarisant do
  name "Clarisant"
  subkind :religious_order
  path "player/npcs/factions/clarisant.md"
  tags :resonance, :training, :governance, :"social-structure"
  prominence :recognized

  prose <<~PROSE
    The professional guild of #{ref :tuners, "Tuners"}. The Clarisant trains, certifies, and disciplines the practitioners who shape the system's working relationship with #{ref :resonance, "resonance"}. It is not a government, not a religion, and not an order. It is closer to a medical board — gatekeeping in the service of public safety, supported by fees, and structurally hostile to dogma.

    Headquartered on #{ref :pelhari, "Pelhari"}, the guild operates a network of chapter houses across the system. A Clarisant credential means something in any settlement that recognizes it, which is most of them.
  PROSE
  prose <<~PROSE, section: :structure, heading: "Chapter Houses"
    The Clarisant is decentralized by design. Each region runs its own **chapter house** — a satellite office staffed by a small permanent roster and headed by a senior Tuner answerable to Pelhari only on matters of accreditation and serious malpractice. The chapter is the operational unit. Field commissions are assembled bespoke per job from the chapter's roster: a survey Tuner here, a containment specialist there, an instrument wright when the work needs one, a runner who can keep notes when nobody else has the time.

    There is no standing field team. There is a chapter, and a job, and the people the chapter sent.

    This produces reputations at chapter scale rather than crew scale. "The Sithari chapter is good for installations." "The Glasswake chapter takes Bloom work nobody else will." "Don't hire the Fermata chapter on a deadline." Mara, the broker, the hab council booking a survey — they're hiring the chapter, and the chapter sends who it sends.

    Chapter houses range from the Pelhari academy itself (hundreds of resident Tuners and a teaching program) down to single-Tuner outposts on outer-system stations that operate alone for months at a time. The smallest chapters are a desk, a casebook, and someone who answers the door.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Credentials"
    Income comes from credential fees and safety inspections, not contracts. The Clarisant certifies individual Tuners (entrance, journeyman, mastery), inspects resonance-critical infrastructure (ringglass installations, hab structural arrays, #{ref :span_nine, "Span Nine"}-adjacent equipment), and investigates malpractice. Every certified Tuner pays a chapter levy. Every certified installation pays an inspection fee. The numbers are small per item and large in aggregate.

    The economic discipline this imposes is severe and deliberate. The guild can afford to refuse contracts. It can fine #{ref :coremark, "Coremark"} and survive Coremark's retaliation. It can audit a hab council that pays its inspection fees and tell that council its arrays are unsafe. Independence is the product the guild sells, and the product has buyers because nobody else sells it.

    The credential itself is a small **tuned ringglass pin**, each one personally tuned to its bearer during their mastery examination. The pin's resonance signature is recorded in the casebook archive. A Tuner who has earned the credential carries it for life; the pin can be revoked but cannot be transferred. Forgery is possible and rare — the pin's signature can be checked by any Clarisant Tuner in seconds, and the forger has to explain why their pin doesn't match the archive.

    Alongside the pin, every credentialed Tuner keeps a **casebook**: a logged journal of every job worked, with annotations from the chapter. The casebook is the working record of a Tuner's career. It is read at promotion examinations and at malpractice hearings. A Tuner without their casebook is half a Tuner.

    There is no uniform. The pin and the casebook are the only formal markers. Most Tuners dress for the work and the weather.
  PROSE
  prose <<~PROSE, section: :tensions, heading: "Internal Tensions"
    Two arguments run the length of the guild.

    **Academy and Field.** The Pelhari academy houses the theorists, the senior examiners, and the long lineage of teaching practice that gives the guild its institutional weight. The chapters house the working Tuners who deal with what's actually in front of them. The Academy's preferred Tuner is patient, careful, and theoretically grounded. The chapters' preferred Tuner is fast, adaptive, and willing to act on incomplete information. Both are right. Both produce real mastery. The friction between them is the guild's most reliable form of internal correction — when the Academy drifts toward abstraction or the chapters drift toward improvisation, the other side notices and complains in writing.

    The Academy controls accreditation standards. The chapters control who actually gets dispatched. Neither side can win outright. The arrangement has held for #{elapsed 2310, approx: true}.

    **Bloom Hawks and Containment Skeptics.** Since the #{ref :the_silent_bloom, "Silent Bloom"}, a significant minority of Tuners — the Hawks — have argued that the guild should embed deeply in containment work. Bloom Zones are the most demanding environment Tuning has ever been asked to address, and the Hawks believe the guild's future relevance depends on being the institution that owns that work. The Skeptics argue that Bloom containment is a meatgrinder that consumes the guild's best practitioners for someone else's emergency. The #{ref :displacement_council, "Displacement Council"} pays well and the burnout rate is, by any honest accounting, catastrophic.

    The argument has not resolved. The Hawks have won most of the procedural votes. The Skeptics have won most of the resignations.
  PROSE
  prose <<~PROSE, section: :culture, heading: "Folk Tuners"
    The Clarisant credential covers roughly seventy percent of practicing #{ref :tuners, "Tuners"}. The remainder are folk practitioners outside the guild — by choice, by isolation, or by tradition. The Clarisant's official position is that folk Tuning is legitimate practice and folk Tuners are colleagues without credentials. The unofficial position varies by chapter, by individual, and by how the last conversation with a folk Tuner happened to go.

    There is a small reformist current inside the guild that wants to formalize folk-track credentials — examinations that test competence without imposing Academy methodology. The current is decades old and has not advanced significantly. The Academy's view is that a credential is meaningless without standardized methodology. The reformists' view is that the methodology is the point of disagreement, not the gatekeeping criterion. The conversation continues.
  PROSE
  prose <<~PROSE, section: :operations, heading: "The Hidden Programs"
    The guild runs a quiet extraction service for #{ref :tuners, "Tuners"} practicing in secret — communities that prosecute resonance work, habs whose authorities treat Tuners as elven sympathizers, surface settlements where being recognized is dangerous. The service is run out of two chapters by reputation and out of the Pelhari academy on paper. It moves a small number of people every year and is paid for out of the credential fees the recipients will eventually earn back.

    The program has no formal name in any public document. Hidden Tuners who have been extracted refer to it as **the long door**. The Clarisant does not deny the program exists. It does not advertise it either.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    The guild's authority is broad and shallow. Most of the system recognizes the credential. Almost none of the system is obligated to. The Clarisant works because it sells something people want — credibility, safety, and a Tuner you can hire without first having to verify they aren't going to kill someone — and because it has spent #{elapsed 2310, approx: true} not embarrassing itself often enough to lose the market.

    The future is not certain. Ringglass demand is climbing. The Bloom work continues. The folk tradition is growing faster than the credentialed roster in some regions. The guild is, by its own quiet admission, smaller than the system's resonance needs. The chapters are stretched. The Academy is not training new examiners fast enough.

    None of this is yet a crisis. The Clarisant's institutional posture has always been that the work is the answer to the questions about the work. They keep training. They keep certifying. They keep showing up.
  PROSE
end

relate :rel_clarisant_trains_tuners, :trains, :clarisant, :tuners, since: 2310 do
  prose "The Clarisant trains and certifies #{ref :tuners, "Tuners"} — a medical-board-style guild that gatekeeps in the name of public safety rather than dogma."
end
relate :rel_clarisant_hq_pelhari, :headquartered_in, :clarisant, :pelhari, since: 2310 do
  prose "It is headquartered at #{ref :pelhari, "Pelhari"}, from which its satellite offices reach as far as the routes allow."
end
relate :rel_clarisant_on_surface_pelhari, :on_surface_of, :clarisant, :pelhari do
  prose "Its central halls sit on the surface at Pelhari, deliberately unthreatening for an institution that decides who may safely touch resonance."
end
relate :rel_clarisant_cooperates_displacement_council, :cooperates_with, :clarisant, :displacement_council, since: 2384 do
  prose "It lends certified Tuners to the #{ref :displacement_council, "Displacement Council"} for containment work, under strict exposure limits the Council is glad to honour."
end

# --- history (moments) ---
moment :clarisant_bloom_hawk_split, year: 2378, of: :clarisant do
  prose "When the #{ref :the_silent_bloom, "Silent Bloom"} ignited, a faction of Tuners — the Hawks — began pressing the guild to make Bloom-containment work its future; the Skeptics called it a meatgrinder. The argument never resolved: the Hawks win the votes, the Skeptics win the resignations."
end
