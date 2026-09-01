encyclopedia :displaced_room_law do
  name "Thresholds"
  summary "Thresholds govern entry, occupancy, property, rescue, and jurisdiction when a doorway opens into a room that does not belong behind it."
  kind :culture
  subkind :governance
  status :complete
  topics :governance, :"fluid-reality", :household, :danger
  prevalence :uncommon
  appears_when all: { place: [:displacement_zone] }

  prose <<~PROSE
    A displaced threshold creates access before it creates agreement. The room beyond may be inhabited, abandoned, sealed under another jurisdiction, or still attached to a household that cannot reach it from its own side. The law treats the room as occupied until inspection establishes vacancy.

    Entry crews make their intent visible, preserve the threshold before altering it, and record what could be seen from the near side. Emergency entry grants access for rescue while ownership remains for later judgment. Inspectors may clear a room for entry, close it as unsafe, or leave it under the authority visible on the far side. Useful rooms with no reachable claimant enter custodial use proceedings; occupied rooms whose residents reject the finding jurisdiction go to standing arbitration.
  PROSE

  cue "A fresh threshold is marked as occupied before inspectors know whether anyone remains beyond it."
  affordance "A person on either side can demand a recorded pause while inspectors establish occupancy, danger, and the authority governing the crossing."
  pressure "Fire, decompression, or an injured voice may force entry before property and jurisdiction can be established."
  variation "Some settlements use formal inspection seals; rescue crews in isolated habs rely on witnesses, visible hands, and an untouched threshold."
  cue "The inspector reads the far side's door plate through the new threshold — another settlement's marks, another jurisdiction's seal — and the entry crew stands down to wait for the law that matches the room."
  variation "Occupied rooms whose residents reject the finding jurisdiction go to standing arbitration under the displaced-persons conventions, and both settlements post the threshold while the case runs."
end
