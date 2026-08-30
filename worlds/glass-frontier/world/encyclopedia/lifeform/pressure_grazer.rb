encyclopedia :pressure_grazer do
  name "Pressure Grazer"
  kind :lifeform
  subkind :animal
  status :complete
  topics :"ring-hab", :"ring-era", :ecology
  prevalence :uncommon
  appears_when all: { place: [:sealed_hab] }
  summary "Pressure grazers are placid, slab-bodied animals that browse the living pressure reefs of the ring habitats, cropping overgrowth and sealing small leaks with their mineral-rich spit. The ring bred them as reef stewards, and Rib's herds still work the oldest reef alive."
  origin "Ring-era cultivated reef stock; the registers list grazer herds with the reef schedules"
  biology "A slow browser of reef growth whose gut concentrates minerals into a sealing spit; it patrols pressure gradients by feel and feeds where the reef runs rich"
  function "Crops reef overgrowth and seals pinhole leaks; a herd's grazing pattern maps the reef's health"
  principal_accommodation "Reef galleries and pressure margins; working herds den in wall bays the reefs grow around them"

  descriptive_identity(
    appearance: "A slab-bodied browser, smooth-hided and " \
                "toeless, that moves on gripping belly plates like a slow tide. Its blunt " \
                "head carries wide lips for cropping and the perpetually damp chin of an " \
                "animal whose spit is its trade.",
    behavior: "It browses the reef's overgrowth in patient rounds, pausing wherever pressure " \
              "whispers through a flaw to chew, press its lips to the spot, and seal it " \
              "with mineral spit that cures reef-hard.",
    threat: "A grazer follows the pressure flaw beneath whatever covers it and may seal over " \
            "a sensor, sample port, or loose gear. Reef crews cage instruments against the wall.",
    senses: "It finds leaks by feel through its belly plates — a herd drifting toward one " \
            "gallery wall is a pressure report older and often quicker than the gauges.",
    risks: "The herds graze to the reef's rhythm and sicken off it: grazers refuse " \
           "overworked reef, and a herd going thin tells the wardens the reef is being " \
           "asked for more than it has."
  )

  prose <<~PROSE
    The living pressure reefs — the engineered growths that hold air in the oldest ring habitats — came with their own livestock. Pressure grazers are slab-bodied, toeless browsers that move over reef surfaces on gripping belly plates, cropping the overgrowth that would otherwise choke a reef's breathing channels and pausing wherever pressure whispers through a flaw. The pause is the service: the grazer chews, presses its wide lips to the spot, and seals the leak with a mineral spit that cures reef-hard in an hour. The ring's registers list grazer herds beside the reef maintenance schedules, and #{ref :rib, "Rib"} — built inside the oldest working reef alive — still runs its herds on rounds the registers would recognize.

    Grazers find flaws by feel through their plates, so a herd drifting toward one gallery wall gives wardens an early pressure report. Even browsing accompanies a healthy reef, crowding marks a field of small flaws, and a thinning herd shows that the animals are refusing overworked growth. The animals share reef work with #{encyclopedia_ref :sorel, "sorel"}: sorel keep the passages open and grazers keep the skin sealed.
  PROSE

  cue "A slab-bodied animal flows slowly up the reef wall on its belly plates, presses its lips to an invisible flaw, and leaves a hardening patch of spit-seal glistening behind it."
  cue "The whole herd has drifted to the north gallery wall since morning, and the reef warden is already there with a lamp, tapping."
  affordance "A working herd is leak repair and pressure survey in one placid package — flaws found by feel and sealed within the hour, and the herd's drift, crowding, and appetite reading out the reef's condition daily."
  pressure "The spit seals a flaw beneath sensor ports, sample taps, or loose gear, so reef crews cage instruments and clear the wall before a herd enters the gallery."
  variation "Rib runs its herds on register-old rounds with named lead animals; younger reef habs keep small free-ranging herds and cage every instrument on the reef face."
  variation "Grazer spit-seal is prized salvage in its cured form, and crews stripping old seals from retired reef sections call the work spit-mining."
end
