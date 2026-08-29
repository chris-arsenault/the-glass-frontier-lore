npc :ol_dent do
  name "Ol'dent"
  summary "Ol'dent is the baritone saxophonist and maintenance lead responsible for Fermata Station's continuous Drone."
  subkind :specialist
  status :complete
  tags :music, :resonance, :"structural-freq", :governance
  prominence :forgotten
  occupation "Drone lead at Fermata Station"
  specialty "Reading and correcting the station's structural drone"
  type_of :gnomes
  belongs_to :culture, :hab_worlder
  descriptive_identity disposition:
    "Ol'dent settles business on the structural decks between shifts, " \
    "hands on the saxophone or flat against a brace, and will not come up " \
    "to a Session on the terms offered. Where the Drone cannot support a " \
    "plan, he states the limit and leaves the Players to hear it."

  prose <<~PROSE
    Ol'dent leads the Drone rotation beneath #{ref :fermata_station, "Fermata Station"}'s central hall. He plays baritone saxophone when his hands are free and listens through the deck when they are not. A shortening beat marks a brace taking load; a clean fifth that sours only at one hatch points to a seal or hinge rather than the hull.

    The governing Session hears the Drone as accompaniment. Ol'dent hears a maintenance report that never stops. He changes players before fatigue changes their pitch and can clear a chamber when its local answer no longer matches the station's base tone.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "Outside the Session"
    Drone players sustain the structure and remain members of the Audience unless they pass the same Sit-In as every other citizen. Their work schedules make preparation difficult, and a failed audition leaves them maintaining decisions they cannot vote on.

    Ol'dent refuses to attend Sessions under those terms. He sends load readings, repair limits, and the names of players who must be relieved. When a proposal depends on work the Drone cannot support, he states the limit and leaves the Players to hear it in the hall.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "A Low Return"
    A low return has appeared beneath the eastern seating bank during crowded rehearsals. It vanishes when the hall empties and has not yet moved any brace beyond tolerance. Ol'dent has shortened the Drone rotation there and prohibited a full house until the source is found.

    The Chair wants the Closing Session held in the central hall. Ol'dent will open it only if the empty-room test and a staffed rehearsal produce the same response on consecutive days.
  PROSE

  gm_note :appears, "Ol'dent is under the central hall, not in it, and he will not come up for a Session on any terms currently offered. Whatever the party wants from him is settled on the structural decks, between shifts, with his hands on a baritone saxophone or flat against a brace."
  gm_note :triggered_by, "Any plan that fills a chamber or holds a sustained note needs his clearance, and right now the eastern seating bank is closed to a full house until the empty-room test and a staffed rehearsal answer the same way two days running."
  gm_note :complicates, "He relieves Drone players before fatigue bends their pitch, so pulling one off the rotation for the party's errand shortens the coverage on that section. Ol'dent then withdraws permission for whatever crowd was booked there."
end

relate :rel_ol_dent_located_in_fermata, :located_in, :ol_dent, :fermata_station do
  prose "Ol'dent lives and works in Fermata Station's central structural decks."
end
relate :rel_ol_dent_maintains_fermata, :maintains, :ol_dent, :fermata_station, since: 2426 do
  prose "He directs the Drone rotation that keeps Fermata's structural resonance inside safe limits."
end
