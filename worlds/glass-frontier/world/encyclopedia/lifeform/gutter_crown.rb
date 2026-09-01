encyclopedia :gutter_crown do
  name "Crowns"
  summary "Crowns are rooted colonial filter-feeders that spread siphon mouths through settlement drains and concentrate metal from runoff into a bright rim. Wardens crop the rim on rotation while preserving the buried stool that regrows it."
  kind :lifeform
  subkind :creature
  status :complete
  topics :ecology, :salvage, :"ring-era", :household
  prevalence :uncommon
  appears_when all: { place: [:urban] }
  origin "Engineered for the ring's water-reclamation galleries; feral populations followed the plumbing into every postfall settlement with standing drains"
  biology "A rooted colonial filter-feeder — a ring of siphon mouths around a buried stool — that strains dissolved and particulate metal from runoff and lays it down as bright accretion along its crown"
  function "Working water cleaner and slow metal concentrator: a healthy crown strips a drain run's gray water and packages the recovered metal in croppable rim growth"
  resonance_relation "Crowns settle preferentially at the quiet points of a drain network and shift their stools away from structural-band noise, which wardens use to read a district's vibration as much as its water"
  principal_accommodation "Drain codes protect seated crowns as working infrastructure; wardens crop the rims on posted rotations and relocate stools only when a channel is rebuilt"

  descriptive_identity(
    appearance: "A ring of pale siphon mouths, palm-wide to barrel-wide, rimmed " \
                "with the bright metallic accretion of its filtering — a crown of " \
                "recovered metal growing at the waterline of a drain junction.",
    behavior: "It roots a stool at a junction's quiet point, spreads daughter " \
              "mouths along the channels, and filters constantly; disturbed, the " \
              "mouths close flush to the masonry and the colony waits out the " \
              "trouble underground.",
    threat: "A disturbed mouth clamps hard enough to bruise before releasing. " \
            "An uncropped rim narrows the channel, while a poisoned colony " \
            "dies in place and blocks its junction.",
    senses: "It reads flow, dissolved load, and vibration through the water — " \
            "closing ahead of surge and shifting its stool away from new " \
            "structural noise seasons before the masonry shows a crack.",
    risks: "Crown accretion assays as clean mixed metal. Drain codes reserve " \
           "the rims for warden rotations because a cut into the buried stool " \
           "kills the colony and fouls the junction."
  )

  prose <<~PROSE
    Crowns began as filter-feeders in the ring's reclamation galleries and spread through postfall plumbing. A settled colony roots a buried stool at a drain junction and raises a ring of pale siphon mouths at the waterline. The mouths strain dissolved and particulate metal from runoff and lay it down as bright accretion around the rim. Daughter mouths extend along neighboring channels. At a hard vibration the visible mouths close flush to the masonry, then reopen one by one after the water settles.

    Colonies favor steady flow and quiet masonry. Over several seasons a stool can shift away from pump chatter or new structural vibration, leaving abandoned mouth scars upstream. Wardens compare those movements with drain surveys. A paling rim or dying mouths points instead to a changed water load and sends the round upstream to sample it.

    Drain codes protect and map seated crowns. Wardens cut the metal-heavy rim on posted rotations without touching the stool; the crown regrows over a season or two, and sale of the mixed metal pays part of the district's drain upkeep. Old stools outlive several wardens and carry names in the drain rolls. Unauthorized cropping is prosecuted because a deep cut kills the colony, turns it into a blockage, and removes filtration from the whole run.
  PROSE

  cue "The warden's lamp finds the junction crown closed flush to the masonry, waits out its shyness, and the pale mouths reopen one by one — rims bright with a season of filtered metal, two cuts from croppable."
  cue "The drain rolls list the stool by name, three wardens' tenures deep, and this year's entry notes the stool has shifted a span east — something upstream has started to hum."
  affordance "A district's crowns filter gray water, concentrate lost metal into croppable rims, and give wardens visible evidence of changed water load or structural vibration."
  variation "Great gallery crowns in the old reclamation vaults grow barrel-wide and are cropped by scaffold crews; street crowns run palm-sized rings along ordinary gutters and are the apprentice wardens' training rounds."
  variation "Crown accretion varies with a district's water — each network's metal carries a recognizable mix, and assay houses can name a stolen crop's home drains within a few streets."
end
