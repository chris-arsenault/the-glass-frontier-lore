npc :goruth do
  name "Goruth"
  subkind :npc
  occupation "Comp guitarist in Fermata Station's governing Sessions"
  species "orc"
  culture "Hab-Worlder"
  tags :music, :governance, :resonance, :"ring-hab"
  prominence :forgotten

  prose <<~PROSE
    A guitarist who accompanies the governing Sessions of #{ref :fermata_station, "Fermata Station"}. Goruth does not call tunes or take solos. He supplies the chords beneath other people's proposals, choosing which notes hold, which tensions remain audible, and how easily the room can move from one speaker to another.

    This makes him one of the station's most effective political actors. Fermata hears authority through collective performance, and accompaniment determines the ground on which a solo can resolve. Goruth can give a weak proposal enough room to become clear or surround a familiar argument with intervals that expose its strain. The Session records no vote attached to his name. Its recordings preserve his choices in every result he helped make possible.
  PROSE
  prose <<~PROSE, section: :resonance, heading: "Material Hearing"
    Goruth's orcish resonance sense begins in material response. He feels how a chord enters the guitar's ringglass bridge, passes through the floor, and returns from the braces around the central hall. He keeps his feet bare during major Sessions because the deck tells him which voicings the station can carry cleanly.

    His instrument has a broad body of dark laminated wood around a narrow ringglass spine. The lower strings are wound with different alloys so that close pitches enter the structure at different depths. Goruth can hold political tension in the music without leaving the same unresolved stress in the wall. Drone players watch his hands when a Session becomes loud because his voicings often show them where the physical load is moving.

    He applies the same attention to repair work. After a cracked brace is replaced, Goruth plays simple changes beside it while a Drone technician listens from the next compartment. He has no formal maintenance position. Crews keep asking him to come.
  PROSE
  prose <<~PROSE, section: :traits, heading: "Serving the Music"
    Goruth describes himself as a servant of the music. He arrives early, tunes to the room rather than a private reference, and gives a soloist the harmony their proposal needs to be heard. He rarely speaks during breaks. People who seek his support must play with him; private explanations receive a polite hearing and no promise.

    His restraint has its own force. A missing chord from Goruth is audible to every regular Player. When he leaves a phrase unsupported, the room must decide whether to carry it without him. When he changes one inner note and keeps the rest of the harmony intact, experienced listeners hear a refusal before anyone names it.

    He has never stood for the Chair and has declined every invitation to join the Comp's private preparation sessions. Those sessions decide too much before the public performance for his taste. He will rehearse a difficult transition. He will not agree in advance that it must resolve.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "The Open"
    During the #{ref :the_fermata_open, "Fermata Open"}, visiting musicians seek Goruth out because local Players follow his accompaniment even when they dispute his reading. He spends the early days in small rooms learning how unfamiliar instruments place weight in a phrase. By the Closing Session, he can support their idioms without smoothing away the difference that brought them to Fermata.

    This year he has agreed to play Dez Morrn's proposed composition. He has also accepted the Chair's request to remain in the central hall if its separated parts stop hearing one another. Neither agreement establishes what he will play when that happens.
  PROSE

  gm_note :appears, "Goruth is already in the hall, barefoot and tuned to the room, before any Session the party cares about begins. Anyone who wants his backing has to get an instrument and play with him; a case made to him during a break gets a courteous hearing and no answer."
  gm_note :triggered_by, "Ask him whether the station can carry something and he answers from the floor rather than from an opinion. Repair crews with no authority over him keep calling him to play simple changes beside a replaced brace, and he keeps coming."
  gm_note :complicates, "When Goruth declines to support a phrase, he does it by leaving the chord out, and every regular Player in the room hears the refusal before anyone says a word. The party's proposal is then alone in the hall with nobody on record against it."
end

relate :rel_goruth_located_in_fermata, :located_in, :goruth, :fermata_station do
  prose "#{ref :goruth, "Goruth"} accompanies the public Sessions at Fermata Station and reads their physical load through the hall floor."
end
relate :rel_goruth_participates_in_open, :participated_in, :goruth, :the_fermata_open do
  prose "At the #{ref :the_fermata_open, "Fermata Open"}, Goruth supplies visiting players with accompaniment that lets their unfamiliar practice remain audible."
end
relate :rel_goruth_attuned_to_fermata, :attuned_to, :goruth, :fermata_station do
  prose "Goruth is attuned to the station's frame through his instrument and the deck beneath his bare feet."
end
