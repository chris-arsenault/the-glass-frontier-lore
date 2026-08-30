encyclopedia :marrower do
  name "Marrower"
  summary "Marrowers are forearm-length, six-legged scavengers that live inside Orra's dead carrier. Survey crews release trained pairs into fluid channels, where their resonant belly plates reveal sealed channels, gas pockets, and warm tissue."
  kind :lifeform
  subkind :animal
  status :complete
  topics :ecology, :resonance, :"ring-hab"
  prevalence :uncommon
  appears_when all: { place: [:sealed_hab] }

  descriptive_identity(
    appearance: "A six-legged scavenger the length of a forearm, with a narrow head, folding shoulder plates " \
                "for squeezing into fluid channels, and a hard resonant plate along the belly.",
    behavior: "It eats mineral crust, dead tissue, and the pale worms around warm blockages inside Orra's dead " \
              "carrier, tapping its belly plate against the surrounding tissue in quick pulses that nearby " \
              "marrowers repeat. Trained pairs ride in padded cases, go in at survey ports, and come back for " \
              "bitter fungal paste; one that stays inside has found a fresh warm pocket.",
    threat: "Any struck tissue, tapped tool, or worked metal gets echoed by every marrower in earshot, and an " \
            "untrained colony will follow the sound into the room that made it to defend its warm pockets. An " \
            "accelerating rhythm is the warning: trapped animals tapping faster until the tissue contracts, " \
            "which can open a fluid pocket or push sweet gas into a service passage full of people."
  )

  prose <<~PROSE
    Marrowers are six-legged scavengers that live inside the dead carrier at #{ref :orra, "Orra"}. Adults reach the length of a forearm. A narrow head and folding shoulder plates let them enter the carrier's fluid channels, where they eat mineral crust, dead tissue, and the pale worms that gather around warm blockages.

    Each animal carries a hard resonant plate along its belly. The plate answers the surrounding tissue with a quick tapping pulse, and nearby marrowers repeat it. Deep readers track those exchanges through the body. A broken rhythm marks a sealed channel, a gas pocket, or tissue warm enough to absorb the pulse.

    A trapped group repeats the tap faster until the surrounding tissue contracts. The movement can open a fluid pocket or drive sweet gas into a service passage. Survey crews retreat on the first accelerating rhythm and close every ignition source between the animals and the nearest vent.

    Orra crews keep trained pairs in padded cases and release them at survey ports. The animals return for bitter fungal paste. A marrower that stays inside has usually found a fresh warm pocket, and the crew opens the parallel service passage before cutting toward it. Untrained colonies defend those pockets and will follow a tapping tool into occupied fungal beds.
  PROSE

  cue "A survey inside the carrier opens with a padded case at the port and a pair of trained animals let loose into channels no person fits through. The pair that comes back for its paste has found nothing; the one that stays has found a warm pocket worth cutting toward."
  cue "The plate answers the surrounding tissue with a quick tapping pulse, and nearby marrowers repeat it."
  affordance "Striking tissue, tapping a tool, or working metal anywhere near a channel gets repeated back by every marrower in earshot, and an untrained colony will follow the sound into the room that made it."
  pressure "A rhythm that accelerates means the animals are trapped and the tissue around them is closing, which can drive sweet gas into whichever service passage the crew is standing in. Flame and kinetic tools go out before anyone moves."
  variation "Orra crews keep trained pairs in padded cases and release them at survey ports."
  variation "Untrained colonies defend those pockets and will follow a tapping tool into occupied fungal beds."

end
