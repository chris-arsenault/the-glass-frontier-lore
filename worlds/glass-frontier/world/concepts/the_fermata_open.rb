concept :the_fermata_open do
  name "The Fermata Open"
  subkind :practice
  tags :music, :governance, :trade, :resonance, :"ring-hab"
  prominence :recognized

  prose <<~PROSE
    The Fermata Open is the week each year when #{ref :fermata_station, "Fermata Station"} gives visiting musicians access to its governing Sessions. Visitors cannot vote, call the final resolution, or take the Chair. They can play. On a station where law is carried in musical standards and authority belongs to people who shape a collective performance, that limited access is enough to unsettle decisions that have sounded inevitable all year.

    The Open is also Fermata's largest festival and the week in which it conducts most of its outside trade. Temporary moorings triple the station's docking capacity. Sleeping rooms become rehearsal rooms by day and return to bunks after the last Session. Music reaches every inhabited compartment, joined by the low continuous tones of the Drone keeping the station's ringglass structure stable under the added sound.
  PROSE
  prose <<~PROSE, section: :governance, heading: "Strangers in the Session"
    Fermata's regular Players share a large body of cues. They know which tempo signals patience, which familiar turn yields the floor, and which modulation calls an old dispute back into the room. An outsider may hear none of that history. A visiting musician can answer the audible phrase in front of them while ignoring the settled political meaning beneath it.

    This disruption is deliberate. Fermata's founders learned during the Signal Famine that a closed repertoire gradually turns improvisation into ritual. The Open admits enough unfamiliar practice to expose that drift. A visiting rhythm section may refuse the tempo on which two local factions have built their compromise. A singer may leave space where the Chair expects assent. A player from a hab with no harmonic government may treat a revered Standard as material rather than precedent.

    The results persist after the visitors leave. New compositions enter the repertoire. Old Standards acquire a disputed performance that scholars must account for. Players who held authority through shared habit may find that the station has heard another way to resolve the same phrase.
  PROSE
  prose <<~PROSE, section: :resonance, heading: "A Week of Load"
    Sound changes the station's structure. Chord voicings held in the central hall pass into ringglass braces and bulkheads; sustained consonance reinforces them, while unresolved dissonance adds physical stress. The ordinary Drone can balance a crowded bar or a rehearsal room. During the Open, hundreds of overlapping performances move through the same frame.

    Months before the first arrivals, Drone crews map which compartments answer one another and install temporary dampers between stages. They mark weak panels with chalk arcs that performers are expected to leave quiet. The marks matter more than posted volume limits. A soft sustained tone at a responsive frequency can carry farther through the station than a loud percussive passage whose energy dies in the room.

    Failures remain common. Windows craze, doors bind in their frames, and old fasteners walk loose. #{ref :dez_morrn, "Dez Morrn"} and other free players treat some of these effects as evidence that the Drone protects inherited harmony at the expense of new forms. Repair crews treat them as work that must be finished before the next crowded Session.
  PROSE
  prose <<~PROSE, section: :trade, heading: "The Trading Week"
    Fermata produces sound-tuned structural pieces, small runs of ringglass craft, and recordings whose political history gives them value beyond the performance. The Open is when those goods meet outside buyers. Incoming vessels bring food, replacement atmosphere equipment, raw glass, reed metals, instrument skins, and the ordinary supplies the station cannot produce at scale.

    Negotiations follow the festival into the Session. A freight agreement may be carried by a new bass line and accepted through the room's response before anyone prepares the written copy. Outsiders who do not trust musical assent wait for the copy. Fermata merchants consider that caution sensible and slow.

    #{ref :sable_korr, "Sable Korr"} keeps listening copies of the Sessions most likely to become precedent. #{ref :goruth, "Goruth"} is sought by visitors who want to know which apparent accompaniment is carrying the room's decision. Their influence reaches beyond any formal vote because performers depend on both of them to understand what the room has done.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "The Closing Session"
    The Open ends with one long Session in the central hall. Unresolved questions from the year return as called tunes. The Chair selects their order, the resident Players defend the meanings they have built around them, and visitors supply replies that local practice did not anticipate. The room stands full, with overflow listeners following through signal glass in nearby compartments.

    The final piece is always a new composition. Most disappear after one performance. A composition that the room takes up becomes available as future law, carrying the circumstances of its first hearing with it. Fermata's most durable reforms and several of its costly mistakes began this way.
  PROSE
end

relate :rel_fermata_hosts_open, :hosts, :fermata_station, :the_fermata_open do
  prose "#{ref :fermata_station, "Fermata Station"} hosts the annual Open, admitting outside musicians to its Sessions for one politically unsettled week."
end
relate :rel_fermata_open_depends_on_resonance, :depends_on, :the_fermata_open, :resonance do
  prose "The Open's performances carry physical as well as political force because Fermata's structure answers sustained resonance."
end
