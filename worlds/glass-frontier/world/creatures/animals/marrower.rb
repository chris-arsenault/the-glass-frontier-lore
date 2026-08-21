creature :marrower do
  name "Marrower"
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
end

relate :rel_marrower_inhabits_orra, :inhabits, :marrower, :orra, since: 2435 do
  prose "Marrowers feed and nest throughout Orra's carrier body."
end


relate :rel_marrower_attuned_to_resonance, :attuned_to, :marrower, :resonance do
  prose "A marrower's belly plate sends and receives quick structural taps through carrier tissue."
end
