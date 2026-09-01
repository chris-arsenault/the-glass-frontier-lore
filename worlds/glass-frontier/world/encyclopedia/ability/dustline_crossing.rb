encyclopedia :dustline_crossing do
  name "Dustlining"
  summary "Dustlining is the route-reading craft of reconstructing buried roads from glass grit caught against stones and low obstructions. The angle of each deposit follows the kinetic grain retained by the old roadbed below."
  kind :ability
  subkind :technique
  status :complete
  log "2026-08-31 — Renamed Crossing to Dustlining. Crossing named any journey; dustline, dustliner, and dustlining identify the Avar-derived evidence, practitioner, and craft as one setting term."
  topics :navigation, :surface, :"kinetic-freq", :training
  prevalence :uncommon
  appears_when all: { place: [:surface, :unstable_route] }
  function "Recovers buried and shifted roads by matching the angle of dust deposits to the kinetic grain retained by the old roadbed"

  descriptive_identity(
    signs: "The guide walks bent, reading the ground's lee sides — the fine " \
           "glass grit caught against stones, its angle and build checked " \
           "stone to stone — and the party behind follows a course that " \
           "exists, to their eyes, as a bearing and a series of small pauses.",
    effect: "Old roadbeds carry their kinetic grain long after the surface is " \
            "gone, and settling dust aligns to it — grit catches against " \
            "obstructions at the grain's angle, building lines a trained eye " \
            "reads through burial, drift, and storm-rewritten ground.",
    limits: "Dustlines require settled grit, low obstructions, and an old " \
            "roadbed. Storm scour erases the deposits for a day or two, and " \
            "open country provides no kinetic grain to follow."
  )

  prose <<~PROSE
    Old roadbeds retain the kinetic alignment produced by their construction and years of traffic. Glass grit settling above them catches against stones and low obstructions at the same angle. A dustline guide walks bent over the lee sides, checks the angle and depth of each deposit against the last, and reconstructs the buried course at walking pace. The party follows the guide's bearings across ground where markers and surface paving have disappeared.

    Route families maintain dustlines through drift belts, storm corridors, and migration country. Their calendars open a route after fresh grit has settled and close it before the next expected storm. Wind-tally cords on a dustliner's staff record every storm since the last reading, giving another dustliner the minimum evidence needed to judge the deposits. Apprentices qualify by reading a masked stretch of known road while senior guides score each choice against the buried course. Freight crews hire by the dustline; herding families train their own dustliners for the twice-yearly moves.
  PROSE

  cue "The guide stops at a fist-sized stone, reads the grit caught on its lee side, and turns the party twelve degrees — the buried road having said so — while the drovers behind see bare drift in every direction."
  cue "Two days after the storm the dustline calendar opens — the new traces settled and legible — and three route families move their herds and freight through the window in the trade's old order."
  affordance "A dustline guide recovers buried roads at walking pace and keeps freight and migrations moving through seasonally shifted ground."
  pressure "Fresh storm scour removes the deposits until new grit settles, so dustlines follow the route calendar and revert to compass travel outside its windows."
  variation "Route families hold hereditary dustlines and read them for generations; the freight trades hire dustliners at posted rates; and the herding cultures fold the reading into their own migrations, marking calves at one end of trails their guides re-find at the other."
  variation "Dustliners' staffs carry wind-tally cords, one knot per storm since the last reading; two readers compare the cords before exchanging route notes."
end
