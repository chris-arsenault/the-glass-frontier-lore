encyclopedia :tellers do
  name "Tellers"
  kind :lifeform
  subkind :anomaly
  status :complete
  topics :"signal-freq", :mystery, :legend, :ecology
  prevalence :rare
  appears_when all: { place: [:damaged_signal] }
  summary "Tellers are cat-sized relay-post anomalies that speak short fragments of signal traffic hours before it arrives through a dead band. Each animal holds a mast territory, accepts food from its post, and announces from the mast top in the future sender's voice."
  origin "Documented only in the damaged-signal country, always near relay posts and lines; the survey literature notes what every postmaster already had — that the animals arrived with the dead bands, and keep to them"
  biology "A cat-sized soft-gray climber with four white feet; from a mast top it reproduces short voice-true fragments of signal traffic that remains hours away along the line"
  lifespan "Unestablished; posts inherit their tellers, and Whitefoot's civic teller has been announcing, by the town's records, through four postmasters"
  function "An anticipatory relay of strict limits: tellings are fragments — a name, a figure, a phrase — logged against the traffic that later matches them at published rates, and a post with a teller reads tomorrow's mail in pieces today"
  resonance_relation "Tellings reproduce traffic still hours away along a dead band. Timing logs confirm the correspondence, while anatomical and instrument surveys have not found the path by which the animal receives it"

  descriptive_identity(
    appearance: "A cat-sized soft-gray climber with four bright white feet " \
                "visible at mast-top distance. During a telling it sits " \
                "upright at the mast's " \
                "peak, head back, speaking to the line.",
    behavior: "It keeps to a post or line stretch as territory, climbs to " \
              "the mast at its own hours, and tells — short spoken " \
              "fragments in the voices of the traffic to come — then " \
              "descends to its mast housing, feeding place, and territorial " \
              "round at the post's base.",
    threat: "An announcing animal claims the mast top and approach cable for " \
            "the duration of a telling. Post crews lower tools and keep the " \
            "route clear until it descends.",
    senses: "The spoken fragments match traffic still hours away along a dead " \
            "band. Timing logs establish the interval, but instruments have " \
            "not detected a receiving signal at the post.",
    risks: "Tellings arrive as partial fragments — a name can reach the mast " \
           "without its sentence — and dead-band custom answers with the " \
           "telling rules: fragments logged, matched against arrival, and " \
           "acted on early only by the narrow list every post ratifies, " \
           "storm warnings first."
  )

  prose <<~PROSE
    A teller is a cat-sized soft-gray climber with four bright feet. Each animal holds a relay mast or short line stretch as territory. It sleeps in mast housings, accepts food at the post, climbs cables and braces as part of its round, and at irregular hours takes the mast top. There it speaks a name, figure, or part of a phrase in the voice of traffic that will arrive hours later.

    Posts write each fragment down at once and compare it with subsequent mail. The published match rates remain stable across posts and generations. Timing records show that the corresponding message was still in transit through a dead band when the telling occurred. Instruments at the mast detect no receiving signal, and anatomical surveys have identified no separate organ for the behavior. Those are the present evidence limits; the match itself is repeatable enough for post procedure.

    Telling rules permit early action only for a short ratified list led by storm warnings. A fragmentary name receives no interpretation before its sentence arrives. Posts budget food, keep the mast approach clear during announcements, and transfer care of a resident animal with the post. The town of #{ref :whitefoot, "Whitefoot"} took its name from the teller at its founding relay; the present animal has announced through four postmasters.
  PROSE

  cue "The teller climbs at dusk, head back at the mast-top, and speaks three fragments to the line — a name, a figure, half a phrase — and the night clerk logs them in the telling book against a mail coach still two stations out."
  cue "The fragment matches the storm warning's first words, the ratified list says act, and the post has its shutters up four hours before the line delivers the rest of the sentence."
  affordance "A teller post receives brief voice-true pieces of approaching traffic hours early and maintains a long match record against later mail."
  variation "Most tellers keep one post; the line-walkers that range a whole stretch tell at every mast on it, and their fragments assemble, in the posts' compared books, into the country's strangest shared correspondence."
  variation "Whitefoot's civic teller is the type's famous example — four postmasters, a town's name, and a telling book the registries cite — and every dead-band post that gains an animal of its own understands, immediately, why the town kept the name."
end
