encyclopedia :farborn do
  name "Farborn"
  summary "Farborn are the unrelated creatures found throughout the Shear whose many eyes, independent mouths, and displaced resonance presence recur across otherwise different bodies. Crew bestiaries group them by habitat and behavior."
  kind :lifeform
  subkind :anomaly
  status :complete
  topics :danger, :orbital, :resonance, :ecology, :mystery
  prevalence :common
  appears_when all: { place: [:debris_field] }

  descriptive_identity(
    appearance: "Bodies range from three meters to three hundred, silicate to fleshy or filamentary, and " \
                "single-bodied to distributed. Documented types carry many eyes and independently working " \
                "mouths; a large beast may feed from three places at once.",
    behavior: "They live throughout the Shear, with larger and less stable bodies reported at depth, taking " \
              "to distorted resonance the way other " \
              "creatures take to weather. Most can be avoided: standard practice is detect, divert, and stay " \
              "quiet, and a working dampening rig with a careful Tuner keeps a ship uninteresting to most of " \
              "them most of the time. Small ones ride home in remote cutter returns.",
    threat: "A Tuner in resonance contact locates the creature's presence offset from the body recorded by " \
            "instruments. The large single-body predators crews call dragons carry feeding " \
            "apparatus that can shear a hull, and the rarest, the choir-things, reach ships at long range with " \
            "sustained resonance that confuses navigation and shifts moods, sometimes into something " \
            "language-like."
  )

  prose <<~PROSE
    *Farborn* is the collective name for unrelated creatures found in #{ref :the_shear, "the Shear"}. Bodies range across sizes, materials, and forms that support no accepted common lineage. Working bestiaries divide them by habitat and behavior into categories such as #{encyclopedia_ref :sheareel, "sheareels"} and #{encyclopedia_ref :bolsters, "bolsters"}.

    The category persists because many eyes, independently working mouths, and a displaced resonance presence recur across those different bodies. Origin remains disputed between Deep crews and the institutions that study recovered specimens.
  PROSE
  prose <<~PROSE, section: :atmosphere, heading: "Recurring Features"
    A Farborn creature can be three meters long or three hundred: silicate, fleshy, or filamentary; single-bodied or distributed; ambulatory or sessile; predator or grazer. Three narrower features recur across the working category.

    **Distributed eyes.** Documented specimens carry eyes along surfaces that perform no common visual role: the full ventral length of a worm-like body, the inside of a translucent bell, or points that surface and submerge through an ooze. Some track nearby movement. Others hold a fixed focus or turn toward points with no visible or instrumented target.

    **Independent mouths.** Mouths occur along flanks and tentacles and inside larger feeding apertures. Observed functions include feeding, vocalization, and sustained opening with no measured exchange. Larger beasts can process different material through several mouths at once; a drift-eel may feed at three points along its body independently.

    **Displaced resonance presence.** Tuners in contact with a Farborn report its presence offset from the body an instrument records. Containment Tuners compare the sensation to a lower-amplitude #{ref :bloom_zones, "Bloom Zone"} reading. Instruments have not reproduced the offset, and the Echo Ledger Conclave lists the comparison as practitioner testimony rather than a measured trait.
  PROSE
  prose <<~PROSE, section: :description, heading: "Known Types"
    The working bestiary is large and growing. The categories below are the best-documented.

    #{embed :sheareel}

    #{embed :bolsters}

    #{embed :shearwurm}

    **Oozes.** Single-body amorphous masses that flow across debris. The Shear oozes are slow and avoidable; the Deep Shear oozes are faster and, in confined wreck interiors, lethal. Their eyes surface and submerge through the body at intervals, and the surfacing eyes are tracked carefully by anyone watching one.

    **Shear-jellies.** Drifting bell-bodied beasts with internal eyes and stinging filaments. Most are small and avoidable; some are large enough to envelop a skiff. One Deep Shear specimen reported in 2378 was said to exceed a kilometer across; the Conclave lists the report as unverified.

    **Dragons.** The crew term for the largest single-body predators in the Shear. They carry broad membranous appendages and feeding apparatus capable of shearing a hull. Each documented individual has its own Compact tracking record; #{ref :ironwhistle, "Ironwhistle"} is among the longest observed. Some crews refuse to speak a tracked dragon's name aboard ship.

    #{embed :hushmaw}

    **Choir-things.** Rare, massive bodies that produce sustained resonance patterns at long range. Encounter logs record navigational confusion, emotional shifts, and patterns some listeners describe as language-like. The Conclave has paid its standing offer for a verified recording twice; neither recording settles whether the patterns are deliberate communication.

    Dozens of smaller categories, regional variants, and named individuals sit beyond these headings. Survey and Ratter boards add new behavior terms as crews document them.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Cutter-Wake Names"
    Crews using #{encyclopedia_ref :claim_coupling, "Claim Coupling"} need names that tell them what an intruder will do in the receiving bay. #{encyclopedia_ref :ratters, "Ratter"} boards therefore record cutter-wake beasts by behavior. The terms overlap with the broader bestiary and make no claim about lineage.

    **Deckmouths** feed in pressure pockets and are often the first sign that a return has carried life. **Flintjacks** hunt active current, crossing a deck beneath pale sparks. Small **shear-jellies** ride the returning atmosphere into upper rooms. **Splitbacks** arrive under brittle mineral coats that break away from faster inner bodies.

    **Redlungs** carry folded reserves of hot, thin air from deep wrecks. **Clatters** cling to structural members and use ladder wells as approach lanes. An **anchor** holds a shared resonant pressure around nearby beasts, making a scattered wake move like one body. A **glowbag** feeds on buoyant gas and vents its stored crop when threatened.

    A crew may revise the name once the breach is quiet and the specimen can be examined. During the wake, the field term decides which shutter closes and which tone goes dark.
  PROSE
  prose <<~PROSE, section: :mechanics, heading: "Where They Come From"
    Deep-runners, senior Ratters, and Tuners who work the inner Deep attribute Farborn to openings beyond Kaleidos. Their case rests on recursive volumes, body plans unlike stable-system life, sensory structures suited to uncharted conditions, and specimens that lose biological coherence when removed from distortion.

    The #{ref :echo_ledger_conclave, "Echo Ledger Conclave"} and the #{ref :clarisant, "Clarisant"} Academy publish morphology and behavior but leave origin unclassified. Recovered bodies degrade, deep-runner testimony is difficult to repeat under controlled conditions, and no instrument has observed a crossing from its far side. Researchers with substantial Deep field time more often accept the crew account; the institutional standard requires a stable specimen or repeatable observation of passage.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Hunting and Bounty"
    Most crews who deal with Farborn deal with them by avoiding them. Standard Shear practice is detect, divert, and stay quiet. A working dampening rig and a careful Tuner can keep a ship from being interesting to most of the beasts most of the time.

    When a beast cannot be avoided, the #{ref :shear_compact, "Shear Compact"}, the #{ref :pell_freight_assembly, "Pell Freight Assembly"}, individual habs, and occasionally the Accord post bounties on specific dangerous individuals. Professional hunters track beasts that have taken ships or entered traffic routes, often across several contracts and jurisdictions.

    Named bounties draw several hunters or flotillas across the jurisdictions the beast crosses. A confirmed kill enters the hunter beside the animal in Compact records and in the songs that follow. The pairing remains part of the hunter's public name long after later songs enlarge the hunt beyond the surviving contract and vessel logs.

    Bounty hunters work independently or in small flotillas. Some are Ratters, some are former Compact operators, and some take no other work. Their information exchange follows personal relationships and rivalries rather than a common registry. Senior hunters are recognized by the named beasts attached to their records.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Farborn are part of the Shear's working environment. Crews detect and divert them, hunters answer named bounties, and researchers add specimens and encounter logs to the bestiary. The largest dragons persist across decades of Compact records. Verified choir-thing recordings carry a standing Conclave payment.
  PROSE

  cue "When a named beast takes a ship, the affected hab posts a bounty and professional hunters converge. The hunter who brings it down is entered beside the animal in Compact records and introduced through the pairing thereafter."
  affordance "A working crew identifies an intruder by behavior — deckmouth, flintjack, clatter, glowbag — because the field term determines which shutter closes and which tone goes dark. The board may revise the name after examination."
  cue "The dampening rig holds its tone and the Tuner keeps the ship uninteresting while something three hundred meters long passes — detect, divert, and stay quiet, the Shear's whole doctrine in one held breath."
  variation "The Shear's shallow bands carry the small avoidable types; larger and less stable bodies are reported at depth, and the inner Deep's testimony — recursive volumes, bodies that lose coherence when removed — is where crew account and institutional caution divide."
  variation "The working bestiary layers three vocabularies — habitat categories, cutter-wake behavior names, and the tracked individuals with Compact records and songs — and a crew moves between all three in one incident report."
end
