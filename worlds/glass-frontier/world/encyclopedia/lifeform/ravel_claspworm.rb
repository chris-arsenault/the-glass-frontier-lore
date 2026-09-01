encyclopedia :ravel_claspworm do
  name "Knots"
  summary "Knots are forearm-length pipe dwellers that graze cleanouts and patrol water lines. At a leak or loose joint, one knots its body around the fault and holds until full working pressure returns."
  kind :lifeform
  subkind :animal
  status :complete
  log "2026-08-31 — Renamed Claspworm to Knots. Ravel households use the ordinary word for the animals that knot themselves around faults, and the named animal Nine-Knot carries the same usage beyond this entry."
  topics :ecology, :household, :"ring-hab"
  prevalence :uncommon
  appears_when all: { place: [:sealed_hab] }
  origin "Ring-era pipe fauna — listed in the maintenance records beside the seam flora as seeded tenders, and established through the Ravel habs' water systems since"
  biology "A forearm-length, smooth-bodied pipe dweller that reads flow and vibration through its skin; at a leak or loose joint it knots its body around the fault and clamps, its gripping hide sealing against the pipe until the line's pressure signature returns to full"
  lifespan "#{duration 25} in a well-kept system; households know the knots in their runs individually and the old ones by name"
  function "Living leak response: a knot finds a fault by its flow signature, seals it bodily, and holds the clamp until full pressure returns after repair"
  resonance_relation "The release trigger is the pipe's own pressure song — a line at full working pressure carries a signature the knot's skin reads, and a knot cannot be talked, pried, or bribed off a fault the water says is still faulty"

  descriptive_identity(
    appearance: "A smooth gray forearm-length body glimpsed at cleanouts and " \
                "junction boxes — or more often seen as its work: a living " \
                "knot tight around a pipe joint, hide flushed dark with the " \
                "clamp's effort.",
    behavior: "It patrols its stretch of system reading flow, knots around " \
              "faults as it finds them, and holds each clamp until the " \
              "line's full-pressure song releases it — then moves on, " \
              "patrolling, an inspector that is also the temporary part.",
    threat: "The gripping hide can trap fingers against a joint when the body " \
            "knots. Plumbers work from the open side of a clamp and restore " \
            "pressure instead of trying to pry the animal loose.",
    senses: "The skin distinguishes ordinary flow, leak flutter, loose-joint " \
            "vibration, and the stable pressure signature of a restored line.",
    risks: "A knot releases only at the pressure signature to which its line " \
           "has settled. Altering a system's working pressure requires the " \
           "plumbing office to acclimate or relocate its animals."
  )

  prose <<~PROSE
    A knot is a smooth gray pipe dweller about as long as a forearm. It moves through wet mains and household runs, grazing film at cleanouts and resting in junction boxes where several flows meet. The skin reads pressure and vibration across the whole body. At the flutter of a leak or the chatter of a loose joint, the knot wraps around the fault and clamps its gripping hide against the pipe.

    The animal holds until the line again carries its full working-pressure signature. A plumber repairs the joint with the knot in place, then opens the valves; if pressure stabilizes, it releases and resumes its route. Test benches confirm that incomplete repairs remain clamped. A deliberate pressure change requires acclimating the animal to the new signature or relocating it.

    Ravel plumbing offices count animals by run and inspect their feeding points. Households place scraps at accessible cleanouts, leave junction routes open, and often know long-resident knots by their markings. Morning rounds check those junctions for a dark, tightened body. The oldest named animals appear in water-office registries with the stretches they patrol and the clamps recorded there.
  PROSE

  cue "The morning round finds the junction box's knot wrapped tight around the elbow joint, hide flushed dark — the day's work list, written in animal — and the plumber sets out tools beside a colleague already on the job."
  cue "The last valve opens, the line comes up to pressure, and the knot loosens as the water sings right — the repair passed by the one inspector on the system that cannot be argued with."
  affordance "A stocked water run gains a mobile leak response: faults found by flow, held stable until repair, and released when the line returns to full pressure."
  variation "System knots patrol the mains under the water offices' registry; household runs keep their own known animals; and the great named knots — decades clamped and counted — carry the standing the fragments give their working elders."
  variation "Release standards vary with the water — high-pressure industrial lines breed harder-skinned knots with stricter songs — and the trades' bench lore about which stretch's animals pass what work is, functionally, the hab's real inspection code."
end
