encyclopedia :farglass do
  name "Farglass"
  kind :technology
  subkind :device
  status :complete
  topics :"ring-era", :"signal-freq", :mystery, :governance
  prevalence :rare
  appears_when any: { place: [:archive, :sealed_hab] }
  summary "Farglass is the paired viewing panes of the ring era: sheets of worked crystal made in twos, each showing what stands before its twin regardless of distance. A few dozen live pairs survive, every one registered, and the system's most delicate conversations happen through them."
  function "Paired panes that each show the scene before the other; sight carried by the pairing itself, over any distance yet tested"
  classes "Desk pairs for correspondence, the great council panes, and the orphan singles whose twins are lost — kept covered, on principle"
  capacity "A pane shows what stands in front of its twin, in the twin's light, at the twin's hour; sound stays home, and the trades built their conventions around the silence"
  operating_limit "A pair is a pair — the linkage survives distance, tide, and flood indifferently, and ends only if a pane is destroyed, whereupon its twin goes gray and stays gray"

  descriptive_identity(
    appearance: "A sheet of worked crystal, palm to door sized, with the faint depth of " \
                "still water. A live pane shows its twin's scene in the twin's own light; " \
                "a widowed pane shows an even gray that reflects nothing and is entered " \
                "in the registry as a lost pairing.",
    working: "Uncover the pane and it shows what stands before its twin — silently, " \
             "faithfully, in whatever light and hour the twin keeps. The conversation " \
             "conventions are written: slates for words, lamp codes for urgency, and the " \
             "covering cloth as the door.",
    risks: "The pane cannot be made to stop seeing except by the cloth, so possession of " \
           "one gives its holder a permanent view into the twin's room. The registry " \
           "therefore requires paired covering schedules, witnessed transfers, and " \
           "consent from both custodians before either pane moves."
  )

  prose <<~PROSE
    The ring made windows that face each other across any distance. Farglass panes were worked in pairs — sheets of crystal with the depth of still water, each showing, silently and faithfully, whatever stands before its twin — and the surviving pairs still do, #{elapsed :the_glassfall, approx: true} after the workshops that understood them fell into the Shear. The linkage survives distance, tide, and flood; a pane in Sithari shows a room in Pelhari in that room's own lamplight at that room's own hour. Sound stays with its room. Users communicate through written slates, lamp codes for urgency, and a covering cloth whose lifting and lowering serves as knock, door, and goodbye.

    A few dozen live pairs survive, every one registered. The great council panes join Sithari's Accord Shore to the Ring Collective's assembly and the far capitals for treaty conversations. Desk pairs carry the correspondence of archives, factor houses, and the cordon services' deep coordination. A pane sees its twin's room whenever both cloths are off, so custodians follow paired covering schedules, witness every transfer, and move either pane only with consent from both ends. Widowed panes — twins lost to the Glassfall or since — show an even gray. Archives keep them covered and test them annually because one disputed Famine-era record describes a gray pane returning to service.
  PROSE

  cue "The clerk lifts the cloth from a sheet of crystal, and the pane fills with a far room's lamplight — a figure already waiting there holds up a slate with the morning's first line."
  cue "In the archive's deep drawer, a widowed pane lies wrapped in its cloth, even gray edge to edge, checked once a year by custom and logged 'unchanged.'"
  affordance "A live pair is presence across any distance — faces, documents held to the glass, the great treaty conversations conducted in lamplight and slates — immune to tide, flood, and every failure that silences the relays."
  pressure "The pane shows its twin's room whenever both cloths are off, so custodians publish paired covering hours, witness every transfer, and require consent from both rooms before either pane moves."
  variation "The council panes operate under paired attendants and published covering hours; desk pairs between old correspondents develop private lamp-code dialects their successors inherit like handwriting."
  variation "Widowed panes are kept covered in the archives against the possibility that gray is a condition rather than a death, and the one recorded re-brightening — disputed, Famine-era, single-witness — keeps the drawers checked annually."
end
