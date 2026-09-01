encyclopedia :room_rain do
  name "Shedding"
  summary "Shedding occurs when a displaced chamber loses its contents along its former alignment. Furniture, panels, and smaller objects drop out of clear air over a charted strip of Xyloathax, heavy pieces first and loose articles for up to a day afterward. Wardens rope the lines and clear them at the warning knock."
  kind :phenomenon
  subkind :catastrophe
  status :complete
  log "2026-08-31 — Renamed Room Rain to Shedding; Xyloathax's existing verb names the chamber's release directly and avoids weather metaphor as the category label."
  topics :"fluid-reality", :danger, :"ring-hab"
  prevalence :rare
  appears_when all: { place: [:displacement_zone] }
  medium "Displacement-zone settlements built in elven fabric — chambers whose held positions slip, opening over streets a district away from where they were built"
  nature "A displaced room's contents shed through the slip: the chamber holds, the hold on its contents fails, and everything loose crosses back at the room's old alignment — a rain of interiors along a chartable falling line"
  hazard "Falling furniture, panels, and fittings arriving out of clear air; the heavy first minutes of a shedding, then the drizzle of small objects that can run for a day"
  known_forms "The single shedding of one slipped room; the seasonal sheds along a charted falling line; and the great sheds after a displacement front, when whole galleries let go together"

  descriptive_identity(
    signs: "A knocking high in clear air along a posted fall line, then the first " \
           "heavy pieces — a chair, a door, a run of shelving — arriving at street " \
           "level with the tumbled look of things dropped from a height that is " \
           "no longer above them.",
    effects: "A shedding delivers a room's loose contents to the surface along its " \
             "old alignment over minutes to a day, heaviest first; the wardens' " \
             "charts turn each known line into a mapped strip of street.",
    hazards: "The heavy first minutes kill — the fall zones are swept and roped " \
             "at the warning knock, and the drizzle of small objects afterward " \
             "is worked under helmets by the recovery details who log every " \
             "piece against the room rolls."
  )

  prose <<~PROSE
    In #{ref :xyloathax, "Xyloathax"}, displaced elven chambers sometimes lose their hold on the objects inside them. A shedding begins with knocking high in clear air along a posted fall line. Chairs, wall panels, shelving, and other loose contents then fall along the room's former alignment, with the heaviest pieces arriving first and small objects continuing for as long as a day. Wardens rope and sign every known line. The first knock triggers a sweep bell, and residents clear the strip before the heavy fall begins. Children learn the fall-zone map with the settlement's other closure drills.

    Xyloathax keeps room rolls compiled from recovered elven registries. Helmeted recovery crews log each object during the light tail of a shedding and compare furniture, fittings, and labels against those rolls. Identifying the chamber lets surveyors remove one interior from the standing-risk list and return sound ring-era goods to salvage. The remaining rooms stay mapped above their fall lines even when they have not shed for years.
  PROSE

  cue "The knocking starts high in clear air over the roped strip, the sweep bell answers, and the street empties in the practiced interval before the first chair arrives."
  cue "The recovery detail works the drizzle under helmets, logging each piece against the room rolls — a door, a lamp, a run of shelving — until the surveyor can name which chamber let go."
  affordance "Posted fall lines, the warning knock, sweep bells, and room rolls let wardens clear the street, recover useful objects, and identify which chamber has emptied."
  pressure "The lines can be charted and the hours can only be guessed, so the fall zones tax the settlement daily — roped street, rerouted traffic, drills kept sharp — against heavy minutes that arrive a few times a season."
  variation "Single sheddings along known lines are Xyloathax's routine; the great sheds after a displacement front, when whole galleries let go together, are the zone's evacuation-grade events and the room rolls' busiest weeks."
  variation "Other displacement settlements see the phenomenon at their own scales and keep Xyloathax's vocabulary — the knock, the sweep, the rolls — the way ports keep another port's flag code."
end
