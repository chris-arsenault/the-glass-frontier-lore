encyclopedia :countermass_threading do
  name "Keel Threading"
  summary "Keel Threading is the rigging skill of steadying a loaded hull through kinetic surges with four tethered weights. The threader reads each surge through the lines and moves the weights to absorb it before the hull reaches its berth walls."
  kind :ability
  subkind :technique
  status :complete
  log "2026-08-31 — Renamed Threading to Keel Threading. The bare craft word traveled too freely; the Keel's surge approaches, weight lofts, and dock qualification own this particular threading tradition."
  topics :"kinetic-freq", :transport, :training, :resonance
  prevalence :uncommon
  appears_when all: { place: [:dock] }
  function "Steadies loaded hulls through the Keel's kinetic surges during berth approaches and transfers — four mobile countermasses on worked tethers, balanced by hand against force the threader reads through the lines"

  descriptive_identity(
    signs: "The threader stands harnessed at the hull's working point, four " \
           "tether lines gathered in gloved hands, paying and checking mass in " \
           "small constant corrections as the weights swing wide and return.",
    effect: "The hull crosses a surge field steady — kinetic shoves that would " \
            "slew a loaded frame into its berth walls arrive instead into the " \
            "thrown weights, and the load rides through level while the " \
            "countermasses do the staggering.",
    limits: "One threader can manage four lines through berth-approach surges. " \
            "Heavier fields require paired rigs or fixed moorings, and every " \
            "surge reaches the worker's shoulders and hands through the lines."
  )

  prose <<~PROSE
    Traffic wake drives kinetic surges through the #{ref :keel, "Keel's"} berth approaches. A loaded hull encounters those shoves while it has little room to turn. Four heavy weights hang from worked tethers around the hull's working point. The harnessed threader feels a surge in the lines before it reaches the hull, pays one or more weights outward to receive the force, then hauls them home for the next correction. The hull remains level while the weights swing around it.

    Each set of four weights is shaped, balanced, named, and broken in separately. Threaders call a new weight green until it has worked a season of approaches, and rigging lofts store the sets together. Training begins on a light single-weight rack. Instructors add one line at a time; working four at once marks the first full qualification. Keel dockmasters schedule qualified threaders by name for heavy approaches. The lines also pass every correction into the worker's shoulders and hands, producing the strains, dislocations, and shortened working lives recorded by the trade.
  PROSE

  cue "The loaded hull starts its berth approach and the harnessed threader takes the four lines — the weights swinging out one by one into the surge field like animals slipped to work, and the hull settling level as they go."
  cue "Mid-crossing a shove arrives early; the threader's hands answer from the line-feel before the hull knows, third weight thrown wide to eat it, and the correction is over before the passengers finish their sentence."
  affordance "A qualified threader lets a loaded hull cross a Keel surge field level and on schedule during its berth approach."
  pressure "Every surge and correction reaches the threader's shoulders and hands through the tether lines; the trade records working lives in seasons and retires injured workers to the weight lofts."
  variation "Keel berth work is the trade's core; the transfer yards run heavier five-line rigs with paired threaders, and the light single-weight rigs of the small docks are where every threader's first season happens."
  variation "Weight lofts keep their racks like stables — each weight named, balanced, and broken in — and a retiring threader's weights pass to students singly, with the fourth, by custom, going last."
end
