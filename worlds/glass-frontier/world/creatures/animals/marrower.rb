creature :marrower do
  name "Marrower"
  summary "Marrowers are forearm-length, six-legged scavengers that live inside Orra's dead carrier. Survey crews release trained pairs into fluid channels, where their resonant belly plates reveal sealed channels, gas pockets, and warm tissue."
  subkind :animal
  status :complete
  tags :ecology, :resonance, :"ring-hab"
  prominence :marginal

  prose <<~PROSE
    Marrowers are six-legged scavengers that live inside the dead carrier at #{ref :orra, "Orra"}. Adults reach the length of a forearm. A narrow head and folding shoulder plates let them enter the carrier's fluid channels, where they eat mineral crust, dead tissue, and the pale worms that gather around warm blockages.

    Each animal carries a hard resonant plate along its belly. The plate answers the surrounding tissue with a quick tapping pulse, and nearby marrowers repeat it. Deep readers track those exchanges through the body. A broken rhythm marks a sealed channel, a gas pocket, or tissue warm enough to absorb the pulse.

    A trapped group repeats the tap faster until the surrounding tissue contracts. The movement can open a fluid pocket or drive sweet gas into a service passage. Survey crews retreat on the first accelerating rhythm and close every ignition source between the animals and the nearest vent.

    Orra crews keep trained pairs in padded cases and release them at survey ports. The animals return for bitter fungal paste. A marrower that stays inside has usually found a fresh warm pocket, and the crew opens the parallel service passage before cutting toward it. Untrained colonies defend those pockets and will follow a tapping tool into occupied fungal beds.
  PROSE

  gm_note :appears, "A survey inside the carrier opens with a padded case at the port and a pair of trained animals let loose into channels no person fits through. The pair that comes back for its paste has found nothing; the one that stays has found a warm pocket worth cutting toward."
  gm_note :triggered_by, "Striking tissue, tapping a tool, or working metal anywhere near a channel gets repeated back by every marrower in earshot, and an untrained colony will follow the sound into the room that made it."
  gm_note :complicates, "A rhythm that accelerates means the animals are trapped and the tissue around them is closing, which can drive sweet gas into whichever service passage the crew is standing in. Flame and kinetic tools go out before anyone moves."
end

relate :rel_marrower_inhabits_orra, :inhabits, :marrower, :orra, since: 2435 do
  prose "Marrowers feed and nest throughout Orra's carrier body."
end


relate :rel_marrower_attuned_to_resonance, :attuned_to, :marrower, :resonance do
  prose "A marrower's belly plate sends and receives quick structural taps through carrier tissue."
end
