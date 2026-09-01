encyclopedia :cable_fox do
  name "Latchling"
  kind :lifeform
  subkind :animal
  status :complete
  log "2026-08-31 — Renamed Foxes to Latchling; the former generic animal label did not identify the species."
  topics :ecology, :"ring-era", :transport
  prevalence :uncommon
  appears_when any: { place: [:sealed_hab, :yard, :dock ] }
  summary "Latchlings are lithe line-running animals descended from elven inspection stock. They den in rigging lofts, hunt and travel across a settlement's cableways, and turn back from worn line before committing their weight to it."
  origin "Bred by the elves as living line inspectors for the ring's cable galleries; feral lines followed the rigging into postfall habs, yards, and dock country"
  biology "A long-bodied, sure-footed climber the weight of a small cat, with gripping pads, a counterweight tail, and forepaws that test a line's tension and wear before the body follows"
  function "A working commensal: latchlings travel and thereby test the cableways, and their refusals — a latchling that turns back at a span — mark failing line with a reliability riggers have measured and learned to bank on"
  lifespan "#{duration 12} in a well-fed loft; loft lines remember notable latchlings by name for much longer"
  principal_accommodation "Rigging custom feeds the loft latchlings and forbids molesting them; a span a latchling refuses is walked by no one until a rigger has been out on inspection tackle to find what the latchling found"

  descriptive_identity(
    appearance: "A long, low, glossy climber the weight of a small cat — gray " \
                "with cable-bright guard hairs — flowing along a span with the " \
                "tail carried as a slow counterweight.",
    behavior: "It runs the cableways as territory, dens in the rigging lofts, " \
              "tests each span with its forepaws before committing, and turns " \
              "back, unhurried and final, from line it distrusts.",
    threat: "A cornered or handled latchling bites hard and thereafter avoids the " \
            "handler's section of line; most conflicts begin when a person " \
            "blocks a den mouth or reaches for an animal on a narrow span.",
    senses: "The forepaws respond to tension, fray, and wear hidden under a " \
            "serving. Yard studies have not isolated which cue governs a " \
            "refusal, but inspection repeatedly finds damage on refused " \
            "spans.",
    risks: "The latchling tests the spans it happens to travel on its own errands — " \
           "coverage follows the animal's territory and appetite, so loft " \
           "custom feeds latchlings at the far ends of the runs that most need " \
           "walking."
  )

  prose <<~PROSE
    The #{encyclopedia_ref :elves, "elves"} bred latchlings for the ring's cable galleries. Their gripping pads and counterweight tails keep them on swaying line, while the forepaws test a span before the body follows. Feral descendants now hold territories through hab galleries, yard frames, and dock cranes. They patrol the same circuits, stalk insects and small vermin in the rigging, sleep in warm loft nests, and sometimes ride a cable car across a gap instead of climbing. Young latchlings establish new territories along underused branches and are most likely to enter a busy work span.

    Riggers feed loft populations at the ends of long runs and leave den mouths clear. A latchling that stops, tests twice, and turns back closes that span by yard custom until a rigger inspects it on tackle. Inspection logs repeatedly find tension loss, fray, or deep wear under the serving, although studies disagree about which cue the pads detect. Feeding stations steer a territory but do not guarantee coverage, so crews still walk lines the animals seldom use. Loft rolls record notable latchlings by name and the spans their refusals took out of service.
  PROSE

  cue "The latchling flows out onto the crane span, stops at the third pitch, tests twice at the forepaws, and comes back the way it went — and the rigger watching from the loft door writes the span's number on the inspection board before the latchling is off the line."
  cue "At shift meal the loft latchling works the benches in feeding-custom order, far-run walkers first, and the new hand learns whose animal this is: everyone's, and its own."
  affordance "A fed loft population walks much of a yard's cable web each day. A refusal moves the span to the front of the inspection queue, while hunting and territorial rounds keep the animals present beyond scheduled checks."
  variation "Hab gallery latchlings run indoor webs and den warm; yard and dock lines run weather rigging and grow the heavy coat; the dock lines' habit of riding cable cars like paying passengers is tolerated as fare for the inspection."
  variation "Yard studies divide between tension, fray, and deep-wear cues. Inspection boards record the actual damage found after every refusal, giving each loft a long local comparison."
end
