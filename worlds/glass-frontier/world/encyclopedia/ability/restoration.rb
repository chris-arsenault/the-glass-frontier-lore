encyclopedia :restoration do
  name "Restoration"
  summary "Restoration returns a damaged body, object, or record toward its last complete state while enough of that state's pattern survives."
  kind :ability
  subkind :ability
  status :complete
  topics :resonance, :rebuilding, :archives, :materials
  prevalence :rare
  available_globally

  tier :broad,
       effect: "Restore a fresh wound, break, or corrupted record whose complete pattern remains locally present",
       cost: "The user experiences the repaired damage as pain and exhaustion"
  tier :focused,
       effect: "Return a badly damaged person or machine to its last stable working state",
       cost: "The user temporarily loses the corresponding bodily function or trained skill"
  tier :narrow,
       effect: "Restore a destroyed structure, organism, or archive from separated but sufficient surviving patterns",
       cost: "The user permanently takes one scar, impairment, or omission from the damage removed"
  tier :apex,
       effect: "Return a city, vessel, population, or body of knowledge to the last complete state still carried anywhere in its remains",
       cost: "The bearer must choose one part of the loss that will never return and carry its absence in their own body or memory"

  descriptive_identity(
    signs: "Fragments return along the paths by which they broke, wounds close from their deepest surviving tissue, and overwritten records surface beneath later marks.",
    effect: "Restoration makes a surviving pattern physically authoritative over the damage that followed it.",
    limits: "It cannot invent an absent pattern, choose an imagined better past, or restore two mutually exclusive states at once."
  )

  cue "Separated pieces tremble toward old joins while damage appears briefly in reverse order."
  cue "The restorer suffers a matching pain, weakness, or gap as the subject becomes whole."
  affordance "Restoration can save a mortally wounded ally, recover an erased archive, raise a shattered vessel, or undo sabotage before its consequences spread."
  pressure "The ability restores what the subject was, including old compromises, infections, hidden code, and structural weaknesses present in that state."
  variation "Living restoration follows cells, scars, and nervous patterns still carried by the body."
  variation "Archive restoration follows repeated copies, error-correction traces, reader memory, and physical impressions in the recording medium."

  prose <<~PROSE
    Restoration gives a surviving pattern authority over later damage. Broken material travels back to old joins. A wound closes according to the body that existed before it. Overwritten words rise beneath the marks that covered them. The ability works because complete things leave redundant accounts of themselves in structure, signal, memory, and use.

    The strongest available account sets the destination. A freshly broken tool may hold that account in every fragment. A person carries it through living tissue, neural continuity, and the memories of movement. An archive may survive through copies, checks, readers, and physical impressions after its principal record is gone. Restoration can assemble these witnesses across distance, but it cannot substitute confidence for evidence.
  PROSE
  prose <<~PROSE, section: :limits, heading: "What Returns"
    A restored state is not an improved state. An old flaw returns with the hull that contained it. A healed body regains the chronic injury it carried before the recent wound. Malicious instructions reappear with the damaged archive when they belonged to the last complete copy. Restorers inspect the candidate state before allowing it to become whole whenever time permits.

    Contradictory patterns force a choice. Once restoration commits to one state, the rejected state becomes part of the loss. #{ref :great_restorer, "The Great Restorer"} can recover entire cities and populations from scattered remains, but its bearer must name the part that will stay lost and take that absence into their own body or memory.
  PROSE
end
