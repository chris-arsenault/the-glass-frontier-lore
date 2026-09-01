encyclopedia :restoration do
  name "Return"
  summary "Return restores a damaged body, object, or record toward its last complete state while enough of that state's pattern survives."
  kind :ability
  subkind :resonant_effect
  status :complete
  log "2026-08-31 — Renamed Restoration to Return; the familiar verb carries the Great Restorer's specific meaning of making a surviving earlier pattern physically authoritative."
  log "2026-08-31 — Kept Return as the focused recovery of an earlier stable state. Fresh damage whose complete pattern remains at the break became Mending because it rejoins what is still present without choosing or reconstructing a prior state; remote composite restoration remains mantle work."
  topics :resonance, :rebuilding, :archives, :materials
  prevalence :rare
  available_globally

  tier :focused
  effect "Restore one damaged body, object, or record to the last stable state still legible in its surviving local pattern"
  limits "The spell requires enough remains to establish one coherent earlier state, cannot invent an absent pattern or choose an imagined improvement, and restores flaws already present in that state"
  consequence "Until the restored subject completes an ordinary recovery interval, the practitioner loses the bodily function, trained skill, or memory most closely corresponding to the damage removed"

  descriptive_identity(
    signs: "Fragments return along the paths by which they broke, wounds close from their deepest surviving tissue, and overwritten records surface beneath later marks."
  )

  prose <<~PROSE
    Return gives one surviving pattern authority over later damage. Broken material travels back to old joins. A wound closes according to the body that existed before it. Overwritten words rise beneath the marks that covered them. The spell works because complete things leave redundant accounts of themselves in structure, signal, memory, and use.

    The strongest local account sets the destination. A freshly broken tool may hold it in every fragment. A person carries it through living tissue, neural continuity, and remembered movement. A record may carry it through error-correction marks, physical impressions, and a nearby copy. Contradictory accounts force the practitioner to choose one before the spell begins.
  PROSE
  prose <<~PROSE, section: :limits, heading: "What Returns"
    Return restores the last complete state, including its old flaws. A healed body regains the chronic injury it carried before the recent wound. Malicious instructions reappear with the damaged archive when they belonged to the last complete copy. Restorers inspect the candidate state before allowing it to become whole whenever time permits.

    The repaired loss passes temporarily into the practitioner. Restoring a crushed hand can close the practitioner's own fingers; restoring a burned engine can leave their breath short and hot; restoring an erased account can close the corresponding memory or trained vocabulary. #{ref :great_restorer, "The Great Restorer"} can gather patterns across distance and recover cities or populations from scattered remains, carrying one chosen absence permanently.

    #{encyclopedia_ref :mending, "Mending"} handles fresh damage before the subject develops another state around it. A mender rejoins the wound, break, or mark already present; Return is required once material has scattered, tissue has begun healing, or later writing has made the earlier pattern a choice rather than a continuation.
  PROSE
end
