encyclopedia :middle do
  name "The Middle"
  kind :phenomenon
  subkind :physical_phenomenon
  status :complete
  log "2026-08-31 — Renamed Distance Insertion to The Middle; the displacement-country phrase names the added traversable interior as people encounter and rent it, without technical abstraction."
  topics :"fluid-reality", :navigation, :danger, :mystery
  prevalence :rare
  appears_when any: { place: [:displacement_zone, :debris_field] }
  summary "The Middle adds traversable length to a path while its endpoints retain their apparent and surveyed separation. Zone registries measure each middle's depth and drift; stable stretches serve as storage, and deep ones are crossed on counted lines."
  medium "Corridors, stairways, and open routes through displacement-touched structures or terrain"
  nature "A continuous interior stretch with floor, walls, air, dust, and echoes between endpoints whose exterior separation remains unchanged"
  hazard "A middle can deepen between surveys, extending a crossing beyond its provisions; deep stretches also develop still air and persistent echoes that obscure a crew's progress"
  known_forms "Shallow middles add a few paces; working middles hold stored goods; deep middles require ropes, provisions, and sounding logs"

  descriptive_identity(
    signs: "A sightline and exterior survey place two doors forty paces apart, " \
           "but a timed crossing takes ninety. Paired walkers repeat the two " \
           "counts to establish the inserted depth.",
    effects: "The added stretch has continuous floor, walls, air, dust, and " \
             "echoes. Its middle can be occupied or furnished without changing " \
             "the building's surveyed footprint.",
    hazards: "Depth changes between surveys. Deep stretches develop still air " \
             "and persistent echoes, so crews cross on a roped line, call the " \
             "count aloud, and carry provisions for the registered depth."
  )

  prose <<~PROSE
    A middle adds traversable length between fixed endpoints. A corridor may place its doors forty paces apart by sightline and exterior survey while containing ninety paces of continuous floor, walls, air, dust, and echo. Survey pairs measure the discrepancy by walking inside and outside counts over the same endpoints. The difference is the middle's depth. Zone registries record that depth, its rate of change, and the date of the last paired survey.

    Shallow middles add a few paces to an ordinary route, and local schedules simply include them. Stable working middles provide usable interior space without enlarging a building's surveyed footprint. Displacement-town storage houses rent them by the registered pace and employ walkers to retrieve goods by count. Deep middles are posted and roped. Crossing crews call each pace aloud, pay out a continuous line, log the far door's light, and provision for the longer of the two most recent surveys. A stretch that changes class is surveyed and re-roped before reopening.

    Survey models compare middles with the shortened routes traced by #{encyclopedia_ref :shearweaver, "shearweavers"}: both produce repeatable differences between local travel and exterior measurement, with opposite signs. Current models describe the geometry but do not account for fixed endpoints together with changing internal depth. Registers therefore treat depth and drift as measured conditions, independent of the proposed cause.
  PROSE

  cue "Two doors stand forty paces apart by sightline and exterior survey; the walker reaches eighty on the inside count while the far door remains in view."
  cue "A storage walker follows a roped line into the registered middle and returns with a crate from space absent from the building's surveyed footprint."
  affordance "A stable middle provides usable storage charged by the registered pace, and its depth-and-drift record makes retrieval schedulable."
  pressure "Depth can change between surveys, so crossing crews use the current register, keep a continuous line, call the count aloud, and provision for the longer recent measurement."
  variation "Shallow middles become part of local travel times; working stretches hold rented storage; deep middles remain posted and roped."
  variation "Surveyors compare middles with fold-spider routes because one lengthens local travel and the other shortens it relative to exterior measurement."
end
