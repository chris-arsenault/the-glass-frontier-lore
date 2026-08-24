creature :farborn do
  name "Farborn"
  subkind :anomaly
  path "player/creatures/anomalies/farborn.md"
  tags :danger, :orbital, :resonance, :ecology, :mystery
  prominence :recognized

  prose <<~PROSE
    The collective name for the wide and unrelated family of creatures that live in #{ref :the_shear, "the Shear"}. Farborn have no single body plan, no single ancestor, and no clear taxonomic relationship to any other life in the system. They are grouped by where they live, not by what they are.

    Bestiaries divide them into convenient working categories — #{ref :drift_eel, "drift-eels"}, #{ref :shellback, "shellbacks"}, and the rest — but the categories are habits and habitats, not lineages. What unifies the beasts is the place they inhabit, the impossible features they share, and the open question of where they came from.
  PROSE
  prose <<~PROSE, section: :atmosphere, heading: "What They Have In Common"
    A Farborn creature can be three meters long or three hundred. It can be silicate or fleshy or filamentary, single-bodied or distributed, ambulatory or sessile, predator or grazer or something stranger. None of this constrains the category. The unifying features are narrower.

    **Too many eyes.** Every documented Farborn creature has more eyes than its body plan should require. A worm-like beast with eyes along its entire ventral surface. A drifting jellyfish-thing with eyes inside its bell, looking outward through translucent tissue. A massive ooze with eyes that surface and submerge through its body at intervals. The eyes are not always functional in any sense observers can confirm; some of them clearly are, and track movement; some of them stare without focus; some of them appear to look at things that are not there.

    **Too many mouths.** Every documented Farborn creature has more mouths than its feeding behavior should require. Mouths along flanks, along tentacles, in the interior of larger mouths. Some mouths feed. Some vocalize. Some do neither, in any way that observers have been able to determine. Most of the larger beasts have multiple feeding apertures that operate independently — a drift-eel can be eating from three places at once, taking different things into different mouths and processing them separately.

    **A wrongness that survives the data.** A Tuner standing in resonance contact with a Farborn creature does not feel an animal. They feel something that is not quite where it is, or not quite what it is, or both. The wrongness is hard to articulate and impossible to instrument. Researchers who work with the beasts learn to recognize it; researchers who haven't, dismiss it. The Tuners who work with the #{ref :displacement_council, "Displacement Council"}'s containment teams say the wrongness is the same wrongness, in lower amplitude, that they feel near #{ref :bloom_zones, "Bloom Zones"}. The Conclave declines to confirm the comparison and declines to deny it.

    The combination of features — the eyes, the mouths, the wrongness — is consistent across everything called Farborn. It is the only thing that is.
  PROSE
  prose <<~PROSE, section: :description, heading: "Known Types"
    The working bestiary is large and growing. The categories below are the best-documented.

    #{embed :drift_eel}

    #{embed :shellback}

    #{embed :glasswurm}

    **Oozes.** Single-body amorphous masses that flow across debris. The Shear oozes are slow and avoidable; the Deep Shear oozes are faster and, in confined wreck interiors, lethal. Their eyes surface and submerge through the body at intervals, and the surfacing eyes are tracked carefully by anyone watching one.

    **Shear-jellies.** Drifting bell-bodied beasts with internal eyes and stinging filaments. Most are small and avoidable; some are large enough to envelop a skiff. One Deep Shear specimen reported in 2378 was said to exceed a kilometer across; the Conclave lists the report as unverified.

    **Dragons.** The catch-all term for the largest single-body predators in the Shear, used by crews and resisted by academics. Massive, winged in the sense that they have membranous appendages, fanged in the sense that they have feeding apparatus that can shear a hull. They are rare. Each documented individual is famous. A small handful have been tracked by the Compact across long records and given names: #{ref :ironwhistle, "Ironwhistle"}, **Long Mother**, and **Pale Star**. Some crews refuse to speak the names aboard ship.

    #{embed :blank}

    **Choir-things.** The legendary tier. Rare, massive, and not well understood. They produce sustained resonance patterns that affect ships and crews at long range — navigational confusion, emotional shifts, sometimes effects that listeners describe as language-like. Whether choir-things are intelligent in any sense humans recognize is debated. Most crews never see one. The crews that do do not always come back to argue about it. The Conclave has standing offers for any verified recording of choir-thing output and has, to public knowledge, paid the offer twice.

    Beyond these are the dozens of smaller categories, the regional variants, and the named individuals. New types continue to be documented. The bestiary is not closed.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Cutter-Wake Names"
    Crews using #{ref :remote_cutting, "remote cutters"} need names that tell them what an intruder will do in the receiving bay. #{ref :ratters, "Ratter"} boards therefore record cutter-wake beasts by behavior. The terms overlap with the broader bestiary and make no claim about lineage.

    **Deckmouths** feed in pressure pockets and are often the first sign that a return has carried life. **Flintjacks** hunt active current, crossing a deck beneath pale sparks. Small **shear-jellies** ride the returning atmosphere into upper rooms. **Splitbacks** arrive under brittle mineral coats that break away from faster inner bodies.

    **Redlungs** carry folded reserves of hot, thin air from deep wrecks. **Clatters** cling to structural members and use ladder wells as approach lanes. An **anchor** holds a shared resonant pressure around nearby beasts, making a scattered wake move like one body. A **glowbag** feeds on buoyant gas and vents its stored crop when threatened.

    A crew may revise the name once the breach is quiet and the specimen can be examined. During the wake, the field term decides which shutter closes and which tone goes dark.
  PROSE
  prose <<~PROSE, section: :mechanics, heading: "Where They Come From"
    The deep-runners and the senior Ratters and the #{ref :tuners, "Tuners"} who have worked the Deep for a long time will tell you what the beasts are. The beasts are not from here. The #{ref :deep_shear, "Deep Shear"} opens onto somewhere else, and what crosses through stays. The deeper a beast is found, the more obviously alien it is — the recursive volumes of the inner Deep are full of things whose body plans do not match anything that could have evolved in this system, whose sensory apparatus suggests environments nobody has charted, whose biology does not survive removal from the distortion in stable form.

    This is folk knowledge among the people who work the Deep. It is not a theory among the people who study the beasts academically. The #{ref :echo_ledger_conclave, "Echo Ledger Conclave"} and the #{ref :clarisant, "Clarisant"} Academy both maintain official positions of withheld judgment. The published research carefully describes morphology and behavior and avoids origin claims. The institutional view is that the evidence for the off-system origin is anecdotal, the deep-runners' testimony is hard to verify, and the question is not yet settled.

    The deep-runners regard the institutional position with the polite tolerance that working people develop for the views of people who do not have to live with the question. The Ratters know. The Deep-runners know. The Tuners who have worked the Deep know. The institutions will catch up eventually, or they won't, and either way the beasts will continue coming through.

    The rift between practical certainty and academic caution is a real cultural divide in the system. Researchers who have spent enough time in the Deep tend to move toward the deep-runners' position; senior academics who have not, tend to defend the institutional caution. The conversation will probably continue until someone publishes evidence that the institutions cannot decline to evaluate. So far, nobody has.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Hunting and Bounty"
    Most crews who deal with Farborn deal with them by avoiding them. Standard Shear practice is detect, divert, and stay quiet. A working dampening rig and a careful Tuner can keep a ship from being interesting to most of the beasts most of the time.

    When a beast cannot be avoided, the dominant approach is bounty work. The #{ref :shear_compact, "Shear Compact"}, the #{ref :pell_freight_assembly, "Pell Freight Assembly"}, individual habs, and occasionally the Accord post bounties on specific dangerous individuals — beasts that have taken ships, beasts threatening traffic routes, named beasts whose behavior has become a problem. The bounties draw a small population of professional hunters who specialize in this work. The hunters have reputations and rivalries. The kills are stories.

    The named bounties produce a recurring pattern. A dragon takes a ship. The hab affected posts a bounty. Several hunters or hunter-flotillas pursue the beast. One or none succeeds. If one succeeds, the hunter who brought the beast down is named alongside the beast in the records and in the songs that follow. **Geld Marrick** brought down the dragon called **Pale Star** in 2376 and is still introduced by that fact. The songs about the hunt are exaggerated and the hunt itself is part of how the system understands the Shear.

    The bounty hunters do not constitute a faction. They are an economic niche with traditions. Some are Ratters. Some are former Compact operators. Some are independents who do this and nothing else. They share information about the beasts they hunt as freely as they share anything, which is sometimes generously and sometimes not at all. The senior hunters are recognized at sight across the system and treat the recognition with the same mixture of pride and inconvenience that any other small fame produces.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Farborn are part of the working environment of the Shear. Crews work around them. Hunters work against them. Researchers work on them. The bestiary expands. The bounties get posted and answered. The largest dragons drift across decades of records. The choir-things, when they appear, are recorded by anyone who survives the encounter and the recordings are paid for.

    The beasts are not going away. The Deep continues to open onto somewhere. Whatever is on the other side continues to send things through. The crews who work the Shear regard this as the situation rather than the problem, and they regard the situation as theirs to live in.
  PROSE

  gm_note :triggered_by, "Players ask what the thing in front of them is. A working crew answers with a behavior name — deckmouth, flintjack, clatter, glowbag — because the field term decides which shutter closes and which tone goes dark, and the name gets revised later if the specimen can be examined."
  gm_note :complicates, "Put a Tuner in resonance contact with one and they report it is not quite where it is, with no instrument recording the discrepancy. Researchers who have not worked around the beasts dismiss this; containment Tuners say it matches what they feel near a Bloom Zone at lower amplitude."
  gm_note :appears, "When a named beast takes a ship, the affected hab posts a bounty and the professional hunters converge. The hunter who brings one down is named beside it permanently, the way Geld Marrick has been introduced by Pale Star since 2376."
end

relate :rel_farborn_inhabits_the_shear, :inhabits, :farborn, :the_shear, since: 2140 do
  prose "The Farborn live in the #{ref :the_shear, "Shear"}, things that took to the distorted resonance the way other creatures take to weather."
end
relate :rel_farborn_inhabits_deep_shear, :inhabits, :farborn, :deep_shear, since: 2140 do
  prose "They are worst in the #{ref :deep_shear, "deep Shear"}, where salvage crews tell the stories that keep new hands from going alone."
end
