encyclopedia :kinetic_horn do
  name "Kinetic Horn"
  summary "A kinetic horn is a braced resonant instrument that turns a held tone into directed force. Pilots, cargo crews, and rescuers use it to steady craft, control suspended loads, and push debris from a safe distance."
  kind :technology
  subkind :instrument
  function "Applies a directed kinetic-band force while a player holds a matched tone"
  status :complete
  topics :resonance, :music, :"kinetic-freq", :training, :transport
  prevalence :common
  available_globally

  descriptive_identity(
    appearance:
      "A broad alloy tube folded around a rigid center bar, with a " \
      "narrow mouthpiece, a main working bell, a smaller rear bell for " \
      "the player's reference, and interchangeable collars for metal, " \
      "stone, fluid, or a vessel's frame. A shoulder stock and waist " \
      "harness carry the reaction; deck versions lock into a rail " \
      "socket.",
    handling:
      "The player starts below the target response and climbs in small " \
      "intervals until the harness tightens and the load begins " \
      "shedding motion; the force lasts only while the note holds, and " \
      "a second person watches the load because the player hears " \
      "nothing clearly through the instrument and their own bones. It " \
      "is cleaned after every field use and sounded against a fixed " \
      "block before working near a person.",
    risks:
      "Numb lips, pressure in the teeth, and a harness that vibrates " \
      "after the note stops are the early exposure signs — playing past " \
      "them brings tremors and force directed into the brace. In a " \
      "saturated field several objects answer one note; a rear bell " \
      "carrying more than one beat is the signal to stop, and the horn " \
      "pushes the wrong member of a failing frame as readily as the " \
      "right one.",
  )

  prose <<~PROSE
    A kinetic horn is a braced #{encyclopedia_ref :resonant_instruments, "resonant instrument"} that turns breath, lip pressure, and hand position into directed kinetic-band force. Pilots use one to steady a damaged craft. Cargo crews ease a suspended load away from a wall. Rescue teams push loose debris without placing a person inside its path.

    The horn produces audible sound, usually a low rough note shaped by the folded body and its two control valves. Volume contributes little. The useful force appears when the player's frequency matches the material or motion they are trying to influence and remains stable while the note changes under load.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "Body and Brace"
    Most horns are built from a broad alloy tube folded around a rigid center bar. A narrow mouthpiece admits breath. The main bell directs the working tone. A smaller rear bell gives the player a reference response and vents frequencies the body cannot hold safely. Interchangeable collars near the main bell narrow the field for metal, stone, fluid, or a vessel's kinetic frame.

    A shoulder stock and waist harness carry the instrument's reaction. Deck versions lock into a rail socket. The brace protects the player from recoil and gives the horn a stable body against which a moving target can be read. A horn played loose may answer the player's own arms and clothing before it reaches the intended load.

    Makers leave the inner tube accessible through screwed plates. Condensation, metal dust, and a dent smaller than a fingernail can divide the standing tone. Players clean the instrument after every field use and sound it against a fixed block before trusting it near a person.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Holding a Load"
    The player begins below the target response and approaches it in small intervals. The rear bell changes first. The harness tightens as the field catches, and the target begins shedding or redirecting part of its motion. A second person watches the load because the player cannot hear a shouted change clearly through the instrument and their own bones.

    The effect continues only while the note holds. A player can soften a swinging cargo case, keep two surfaces apart during a repair, or give a flitter enough lateral correction to reach a berth. They cannot set the horn down and leave the force in place. Long jobs rotate players or transfer the load onto cribbing, lines, or a fixed array.

    Ensembles use several horns on separate intervals to move larger masses. The players establish the brace and conductor calls before sounding the target. Two horns meeting on the same frequency can double the useful force or turn each other's braces into the load. Public demonstrations use prepared blocks and marked distances because the mistakes travel farther than the music.
  PROSE

  prose <<~PROSE, section: :limits, heading: "Mismatch and Saturation"
    A kinetic horn cannot supply judgment. It can push the wrong member of a failing frame as readily as the right one. Materials joined under stress may answer together until one part shifts, after which the tone follows whichever response remains strongest.

    The player's breath limits duration, and the returning field limits force. Numb lips, pressure in the teeth, and a harness vibrating after the note stops are early exposure signs. Trained players hand off before those signs blur their pitch. Continuing can produce tremors, false intervals, and enough loss of control to direct the next force into the brace.

    Saturated resonance fields are worse. Several nearby objects may answer one note, especially inside a Bloom cordon or a crowded receiving bay. Crews use narrow collars, lower output, and physical barriers there. If the rear bell begins carrying more than one beat, the player stops.
  PROSE

  prose <<~PROSE, section: :culture, heading: "Work Instruments"
    The #{ref :clarisant, "Clarisant"} teaches kinetic horn as an instrument specialty after basic attunement and brace work. Students spend more time stopping a note cleanly than producing force. Field chapters keep battered horns matched to local rescue frames, while the Pelhari academy maintains a quieter set used to compare player technique.

    Folk players learn through shipyards, quarry crews, and family workshops. Their instruments often have fewer collars and a body rebuilt around one familiar material. A horn that only answers a particular yard's cargo rail may be useless elsewhere and exceptionally safe in the hands that know it.
  PROSE

  cue "A horn borrowed at a shipyard or quarry has fewer collars and a body rebuilt around one material, so it answers that yard's cargo rail and not what the players need moved. A full collar set comes from a wright shop or a #{ref :clarisant, "Clarisant"} chapter house."
  cue "Most horns are built from a broad alloy tube folded around a rigid center bar."
  affordance "A player who says they will hold something steady with the horn is committed to the note: the force lasts only while they play, and through the instrument and their own bones they will not hear anything shouted at them. Someone else has to watch the load."
  pressure "In a crowded receiving bay several nearby objects answer the same note and the rear bell starts carrying more than one beat. A player who keeps going pushes whichever response stays strongest, which may be the wall, the wrong member of the frame, or their own brace."
  variation "Field chapters keep battered horns matched to local rescue frames, while the Pelhari academy maintains a quieter set used to compare player technique."
  variation "Folk players learn through shipyards, quarry crews, and family workshops."

end
