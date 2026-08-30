encyclopedia :displaced_room_law do
  name "Displaced-Room Law"
  summary "Displaced-Room Law governs entry, occupancy, property, rescue, and jurisdiction when a doorway opens into a room that does not belong behind it."
  kind :culture
  subkind :governance
  status :draft
  topics :governance, :"fluid-reality", :household, :danger
  prevalence :uncommon
  appears_when all: { place: [:displacement_zone] }

  prose <<~PROSE
    A displaced threshold creates access before it creates agreement. The room beyond may be inhabited, abandoned, sealed under another jurisdiction, or still attached to a household that cannot reach it from its own side. Displaced-room law begins from occupancy rather than discovery: an unanswered first call does not establish vacancy.

    Entry crews make their intent visible, preserve the threshold before altering it, and record what could be seen from the near side. Rescue can outrank property, but rescue does not settle ownership. Inspectors may clear a room for entry, close it as unsafe, or leave it under the authority visible on the far side. The hardest cases are useful rooms with no reachable claimant and occupied rooms whose residents reject the jurisdiction that found them.
  PROSE

  cue "A fresh threshold is marked as occupied before inspectors know whether anyone remains beyond it."
  affordance "A person on either side can demand a pause long enough to establish occupancy, danger, and whose authority will record the crossing."
  pressure "Fire, decompression, or an injured voice may force entry before property and jurisdiction can be established."
  variation "Some settlements use formal inspection seals; rescue crews in isolated habs rely on witnesses, visible hands, and an untouched threshold."
end
