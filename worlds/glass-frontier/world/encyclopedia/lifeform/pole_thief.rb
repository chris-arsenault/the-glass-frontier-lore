encyclopedia :pole_thief do
  name "Pole-thief"
  summary "Pole-thieves are low amphibious animals found along Korvath's Dovra. They mistake the metal shoes of sounding poles for prey, seize them, and pull toward the bank."
  kind :lifeform
  subkind :animal
  status :complete
  topics :"outer-system", :ecology, :resonance, :transport
  prevalence :common
  appears_when all: { place: [:"realm:outer_system"] }

  descriptive_identity(
    appearance: "A low, flat amphibious animal, the largest spanning both arms of a human, with four walking " \
                "limbs and a heavier front pair ending in opposed gripping pads. Layered back skin collects " \
                "iron-rich silt until an old one looks like the bank around it; the pale underside stays soft " \
                "and must stay wet.",
    behavior: "It hunts burrowing shellfish and root insects by striking reeds, stones, and packed mud, " \
              "reading the vibration through a plate behind the jaw. Burrows start under reed roots and rise " \
              "to an air pocket above water level; colonies move after every large channel change, and their " \
              "digging drains flooded banks while their feeding keeps shellfish off timber gates.",
    threat: "A sounding pole reads as prey: the animal clamps the metal shoe, twists toward the bank, and can " \
            "wrench a shoulder or turn the pole underfoot before releasing at the taste of metal. The tell is " \
            "in the return — sliding silt drags, buried timber knocks once, a pole-thief grips and often " \
            "answers a second pole placed nearby."
  )

  prose <<~PROSE
    Pole-thieves are low amphibious animals found in the banks and reed beds of Korvath's #{ref :dovra, "Dovra"}. They strike the metal shoes of sounding poles, clamp on, and pull toward the bank. Pilots named them for the tools lost when a startled deck hand released their grip.

    The animal is rarely dangerous away from water. From a barge it can wrench a person's shoulder, turn a pole underfoot, or make a stable channel bottom feel as though it has moved. A cluster beneath a landing stair delays traffic until the animals feed or a bank crew draws them elsewhere.
  PROSE

  prose <<~PROSE, section: :biology, heading: "Body and Burrow"
    An adult pole-thief has a flat body, four walking limbs, and a heavier front pair ending in opposed gripping pads. The largest span both arms of a human. Layered skin covers the back and collects iron-rich silt until an old animal resembles the bank around it. The pale underside remains soft and must stay wet.

    A hard plate behind the jaw carries vibration from the gripping limbs into the inner ear. The animal feeds on burrowing shellfish and root insects located by striking reeds, stones, and packed mud. A sounding pole produces the same sharp contact at greater strength. The pole-thief seizes it, pulls it toward the mouth, and releases after finding metal instead of prey.

    Burrows begin below reed roots and rise into an air pocket above ordinary water level. Several animals may share a bank riddled with separate chambers. Flood water clears old pockets and creates new feeding edges, so their colonies move after every large channel change.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Pilots and Gate Crews"
    A pilot distinguishes a strike from moving ground by the return through the pole. Sliding silt drags. Buried timber knocks once. A pole-thief grips, twists toward the bank, and often answers a second pole placed nearby. Crews plant their feet before sounding reed margins and keep the pole line looped around the shaft rather than around a wrist.

    Gate crews move a colony with baskets of cracked shell and short wooden beaters placed along an unused bank. The animals follow the repeated contact over several nights. Poison is avoided near freshwater intakes, and sealing every burrow weakens the bank when trapped air and flood water find another route.

    Lowbank boatyards fit practice poles with breakaway shoes. Apprentices learn to hold the shaft while letting the metal end go. Working pilots dislike the fitting because a lost shoe becomes another false hard point in a channel they may have to sound later.
  PROSE

  prose <<~PROSE, section: :geography, heading: "A Useful Nuisance"
    Pole-thief burrows drain saturated upper banks after a flood and give small fish shelter as water falls. Their feeding keeps root-boring shellfish away from timber gates and landing piles. Water boards tolerate colonies along reed margins and remove them from ceramic pipes, levee toes, and heavily used stairs.

    The animals also reveal where a bank transmits vibration strongly. A colony that abandons a familiar reach may have exhausted its prey, received too much traffic, or begun hearing a newly coupled gate through the wet sediment. Board workers record the movement and sound the neighboring structures. The observation prompts an inspection; it does not diagnose the fault.

    Shed back plates are dried for small boxes and instrument guards. They retain no useful resonance response once the silt is washed away. Children collect them anyway, and pilots paint tiny route marks on the inside before hanging them in a deck house.
  PROSE

  cue "A sounding pole worked near any reed margin can come back wrong: a pole-thief grips the metal shoe, twists toward the bank, and the pilot cannot tell that reach from moving ground until a second pole says otherwise."
  cue "Layered skin covers the back and collects iron-rich silt until an old animal resembles the bank around it."
  affordance "Hiring a bank crew to clear a colony buys several nights of cracked shell and wooden beaters along an unused bank; poison is refused near freshwater intakes, and sealing the burrows weakens the bank."
  pressure "A cluster beneath a landing stair delays traffic until the animals feed or a bank crew draws them elsewhere. Sealing every burrow weakens the bank when trapped air and flood water find another route."
  variation "The largest span both arms of a human."
  variation "A colony that abandons a familiar reach may have exhausted its prey, received too much traffic, or begun hearing a newly coupled gate through the wet sediment."

end
