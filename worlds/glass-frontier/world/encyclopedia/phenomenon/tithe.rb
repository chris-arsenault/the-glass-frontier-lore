encyclopedia :tithe do
  name "The Tithe"
  summary "The Tithe is a scrap-bed growth cycle in which warm-rooted colonies rise from elven alloy, ripen over a working season, and release drifting metallic spores when cutting crews approach — seeding the next bed from the disturbance of harvesting this one. Yard law treats each bloom as a crop, and the cutters time their work like a harvest."
  kind :phenomenon
  subkind :ecological_phenomenon
  status :complete
  log "2026-08-31 — Renamed Crowncut Spark Bloom to The Tithe; yard law's recurring harvest obligation gives the cycle an idiomatic name instead of a stacked descriptive compound."
  topics :ecology, :salvage, :materials, :"ring-era"
  prevalence :uncommon
  appears_when all: { place: [:yard, :debris_field] }
  medium "Warm scrap beds of elven alloy — the blooms root in the self-repair seed layers of ring-era metal and rise where cut faces stay warm"
  content "Fine branching growths of bright alloy filament, wrist-high at ripeness, that release drifting metallic spores under the vibration of approaching cutters"
  hazard "Spore drift fouls respirator felts and open bearings; a crew that cuts a ripe bed unmasked spends the next shift picking glitter out of everything that turns"
  function "Ripened filament assays as reclaimed elven alloy at hand-salvage grades — a bloom is the scrap bed refining itself upward into reach"

  descriptive_identity(
    signs: "Bright filament breaking the scrap line like frost on a sill, wrist-high " \
           "and branching at ripeness, warmest at the root; on a still day a ripe bed " \
           "hums faintly under an approaching cutter's tone before the spores go.",
    effects: "The bloom concentrates the bed's alloy into harvestable filament over a " \
             "season, and its spore release — triggered by the vibration signature of " \
             "working cutters — drifts downwind and seeds the next warm bed.",
    hazards: "Spore drift silvers respirator felts, open bearings, and lungs in that " \
             "order of expense; harvest law masks the crew, sheets the machines, and " \
             "works ripe beds on the calm mornings."
  )

  prose <<~PROSE
    Elven alloy repairs itself — slowly, blindly, by seed layers worked into the metal — and in the warm scrap beds of the crowncut yards the seed layers have found their way to open air. The Tithe begins as bright filament breaking the scrap line like frost on a sill: the bed's alloy, drawn up out of slag-grade tangle into fine branching growths that ripen over a working season to wrist height, warmest at the root, and worth hand-salvage assay at the tip. What the yards took a generation to accept is the trigger. A ripe bloom releases its spores under the vibration signature of approaching cutters — the drifting metal glitter rides the wind to the next warm bed and roots there — so the act of harvesting a bloom sows the following one, and the beds a yard works hardest bloom best. #{ref :forty, "Lot Forty"}, whose cutters gave the cycle its first documented seasons, wrote the arithmetic into yard law: a bloom is a crop.

    The harvest practice reads like farming conducted in respirators. Beds are walked and graded through the season; ripe beds are worked on calm mornings, crews masked and machines sheeted, because spore drift silvers felts, bearings, and lungs in that order of expense; and the cut filament goes to assay as reclaimed elven alloy — the bed refining itself upward into reach, a tithe of good metal rising annually out of ground already picked twice. The seeding wind is the season's strategy. Yards angle their heavy cutting so the release drifts across their own holdings, neighboring yards dispute bloom drift the way farm districts dispute water, and the crowncut registries carry a page of settled precedent on the question of whose crop a bloom is when one yard's cutters sprang another yard's bed.
  PROSE

  cue "Bright filament breaks the scrap line like frost, wrist-high and branching, and the grading walker ties a season ribbon to the bed's corner stake: ripe by next calm morning."
  cue "The cutter's tone reaches the bed and the whole growth lets go at once — a drifting sheet of metal glitter riding the wind toward the next warm ground, while the masked crew works on inside it."
  affordance "A worked bed tithes good metal annually — ripened filament assays as reclaimed elven alloy at hand-salvage grades, rising out of ground already picked twice — and a yard that manages its drift is sowing its own next season."
  pressure "The spores ride wind and answer cutter vibration, so a yard's harvest choices land on its neighbors — drift disputes fill a page of crowncut precedent, and the settled question of whose crop a bloom is turns on whose cutters sprang it."
  variation "The crowncut yards run full harvest law — grading walks, season stakes, angled cutting for drift; the open debris fields carry feral blooms that spring for any passing hull and seed where the wind decides."
  variation "Bloom filament from different bed lineages assays differently, and the older yards keep drift pedigrees for their best beds the way herd districts keep stud books."
end
