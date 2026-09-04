creature :named_eels do
  name "The Named Eels"
  summary "The Named Eels are the largest drift-eels tracked individually in Ratter route records across the working and Deep Shear. Each can close traffic lanes when it crosses active machinery."
  subkind :anomaly
  type_of :sheareel
  belongs_to :lifeform, :farborn
  status :complete
  tags :danger, :orbital, :resonance, :ecology, :salvage
  prominence :recognized

  prose <<~PROSE
    The largest #{encyclopedia_ref :sheareel, "sheareels"} are route events. Traffic shuts down, beacons go quiet, and pilots wait for the animal to cross. Hunters pursue a named eel only after repeated attacks because killing several kilometres of feeding body creates a debris and contamination problem of its own.

    Ratter route boards exchange sightings, lure results, and the movement of these named animals. Reports follow them between managed corridors, extraction yards, old habs whose systems still pulse, and the approaches to busy ports.
  PROSE

  gm_note :appears, "A route board closes a lane ahead of one named eel and posts its last movement, the field conditions it followed, and every lure result crews have submitted."
  gm_note :triggered_by, "A repeated attack turns a tracked animal into a bounty target, but killing several kilometres of feeding body creates a second route hazard."
  gm_note :complicates, "The record follows field gradients rather than a fixed course, so a named eel can leave one corridor quiet and appear beside another active yard."
end

relate :rel_named_drift_eels_inhabit_shear, :inhabits, :named_eels, :the_shear do
  prose "Ratter route records track named drift-eels through the working Shear."
end
relate :rel_named_drift_eels_inhabit_deep_shear, :inhabits, :named_eels, :deep_shear do
  prose "The largest named drift-eels cross the Deep Shear."
end
