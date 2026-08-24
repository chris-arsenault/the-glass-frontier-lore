creature :sarn do
  name "Sarn"
  summary "Sarn are large migratory animals that cross the gaps between ring fragments in load-sharing spirals. Their mineral combs grip kinetic gradients, and old combs shed during the seasonal passage at Perch."
  subkind :animal
  status :complete
  tags :ecology, :resonance, :"kinetic-freq", :orbital
  prominence :recognized

  prose <<~PROSE
    Sarn are large migratory animals that cross the gaps between ring fragments. A mature animal has a narrow body, four steering fins, and two fans of flexible mineral combs grown from its sides. The largest reach the length of a small transport.

    The combs grip kinetic gradients. A sarn twists them to climb a drive wake, turn through a habitat field, or exchange momentum with nearby members of the herd. Their spirals distribute strain across hundreds of bodies, allowing young and injured animals to travel near the quiet center.

    A vessel entering the spiral becomes another load in that exchange. Adults may turn its momentum toward the outer edge faster than its kite can cancel it. Perch closes approach lanes when a herd tightens and sends low collection craft beneath the field rather than through it.

    Old combs loosen during the seasonal passage at #{ref :perch, "Perch"}. Their mineral fibers retain the loads carried during growth and have become valuable materials. Collection crews wait for a comb to separate and keep their lines outside the living fans; a cut made early can pull an entire collection frame into the herd's shared turn.
  PROSE

  gm_note :appears, "Sarn cross the gaps between fragments on their own schedule, so a herd turns up in a lane the charts show as clear; the first warning a crossing party gets is usually a hab closing its approach lanes ahead of them."
  gm_note :triggered_by, "Fly into the spiral rather than beneath it and the herd treats the vessel as one more load to pass along; adults can throw its momentum toward the outer edge faster than a kite cancels it, and the way out runs with the turn, not across it."
  gm_note :complicates, "A comb cut before it separates on its own is still attached to a moving animal, and the herd's shared turn takes the line, the frame, and whatever the frame is bolted to; a crew watching a rich fan has every reason to cut early."
end

relate :rel_sarn_inhabits_perch, :inhabits, :sarn, :perch, since: 2435 do
  prose "Sarn gather in Perch's field saddle during their seasonal migration."
end


relate :rel_sarn_attuned_to_resonance, :attuned_to, :sarn, :resonance do
  prose "Sarn combs grip kinetic gradients and pass load through a moving herd."
end
