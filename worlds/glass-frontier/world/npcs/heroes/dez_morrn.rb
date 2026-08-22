npc :dez_morrn do
  name "Dez Morrn"
  subkind :dissident
  occupation "Trumpeter and organizer of Fermata's free-jazz movement"
  species "human"
  culture "Hab-Worlder"
  tags :music, :activism, :governance, :resonance
  prominence :forgotten

  prose <<~PROSE
    A trumpeter, organizer, and persistent opponent of the Standards that govern #{ref :fermata_station, "Fermata Station"}. Dez Morrn argues that the repertoire has hardened into a way for skilled insiders to make control sound like consensus. She leads players who abandon predetermined harmony and ask the room to respond without inherited resolutions.

    Dez is an exceptional improviser. Her tone stays clear while she drives a phrase across the station's familiar changes, and she can hear when another player has answered her beneath a crowded ensemble. This makes it difficult for the Session to dismiss her as someone who rejects structure because she cannot follow it. She knows the Standards well enough to expose where the performance of listening has replaced attention.
  PROSE
  prose <<~PROSE, section: :history, heading: "Two Arrests"
    Fermata has arrested Dez twice, an action its repertoire handles poorly. The first followed an unauthorized performance in a cargo passage whose wall braces split under sustained dissonance. Dez had chosen the passage because Drone reports already identified an uneven load there. She claimed the damage proved the station had allowed a weakness to remain hidden beneath a safe chord. The repair crews agreed about the weakness and rejected the method.

    The Session called to resolve her case could not reach a stable ending. Players who wanted punishment had no Standard for treating music as a weapon when the accused insisted it was inspection. Players who supported her would not accept the damaged passage as an incidental cost. The Chair ended without resolution, and Dez was released after the repairs were complete.

    Her second arrest followed a coordinated interruption of a citizenship Sit-In. No hull damage occurred. The interrupted candidate had asked the free players to expose how the house ensemble steered every audition toward familiar answers. That Session also failed to resolve, leaving both arrests present in the archive and absent from any settled rule.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Free Practice"
    Dez rehearses in compartments separated from the main structural braces by old freight dampers. The rooms smell of warm metal and the fibrous lining used to catch vibration. Players begin with one sustained tone and listen for where it returns through the deck. They do not proceed until everyone can identify the same response.

    Her movement includes careful musicians, frustrated failed candidates, young Players seeking novelty, and people drawn to the permission to make noise. Dez refuses to pretend these motives are the same. She bars performers who ignore marked weak panels and removes anyone who treats a cracked window as proof of seriousness. The exclusions have cost her followers who expected opposition to mean the absence of discipline.

    Outside performances draw the most attention during the #{ref :the_fermata_open, "Fermata Open"}, when unfamiliar musicians can enter a Session and local authority is already unsettled. Dez uses that access openly. She teaches visitors the political weight of the Standards, then asks them to play what they heard before she explained it.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Dez is writing a long piece without a fixed return. Its parts can separate through several rooms and rejoin only when the players hear one another through the station. She has submitted it for the Closing Session. Standard scholars disagree over whether a work that withholds its resolution can propose law under Fermata's existing practice.

    Emergency crews have reviewed the score's known frequencies and found no single dangerous passage. They cannot model the combined load without the performance itself. Dez has accepted extra Drone players in the surrounding compartments. She has not changed the piece.
  PROSE
end

relate :rel_dez_located_in_fermata, :located_in, :dez_morrn, :fermata_station do
  prose "#{ref :dez_morrn, "Dez Morrn"} lives and organizes at Fermata Station, where her music can change the structure she contests."
end
relate :rel_dez_participates_in_open, :participated_in, :dez_morrn, :the_fermata_open do
  prose "Dez uses the #{ref :the_fermata_open, "Fermata Open"} to bring unfamiliar players into arguments the resident Session has learned to contain."
end
relate :rel_dez_cooperates_with_goruth, :cooperates_with, :dez_morrn, :goruth, since: 2435 do
  prose "Goruth has joined Dez's proposed Closing Session work and will hold the central hall if its separated parts lose contact."
end
