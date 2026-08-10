faction :the_choir do
  name "The Choir"
  subkind :resistance_network
  tags :resistance, :prediction, :legibility, :surveillance
  prominence :recognized

  prose <<~PROSE
    The Choir lives inside the machine civilization. The Great Lakes hold the water, so Detroit, Chicago, Cleveland and Toronto are watched the way a reactor is watched.

    Coalition behavioural models assume that people act as individuals. Choir members coordinate thousands of harmless choices until a district's telemetry tells the wrong story.
  PROSE

  prose <<~PROSE, section: :how_it_works, heading: "Lying Through The Implant"
    Their implants stay powered and report truthfully. One person shifts a medication by three minutes. Another takes a different bus. Another buys seventeen lemons. Thousands of small choices can make a district model predict household breakups, calm, migration or demand that will not occur.

    Each member learns a different sequence of ordinary actions by mouth. Five places in the sequence carry the names of full-circle bell methods. When the eight bells at #{ref :ste_anne_belfry, "Ste. Anne"} ring, the method names the starting place and the opening rounds give the number of days to wait. A member then follows one action each morning until the learned stopping point.

    Members count the days on pegged game boards. A missed day remains missed until the next ringing. The sequence still contains plausible choices, but they occur at the wrong time and no longer add to the district-wide pattern.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Dequindre's Quarter"
    Once a quarter the Choir gives three months of Caretaker's published district returns to #{ref :dequindre, "Dequindre"}, an old traffic model no cleverer than the ordinary systems it stands in for. It receives two questions: which day did the district change its mind, and which addresses? Dequindre has answered the first correctly twice and the second once. One correct address is enough for the Choir to change the exposed sequences.

    Teachers are the Choir's weak points. A teacher may know that two households will buy the same sack of flour in the same week. Dequindre exposed two such households in 2087. The Choir kept both sequences and changed who taught the second.

    Some sequences target machinery rather than households. At a water-treatment plant, workers can lower the reported waste fraction by running the treatment train harder until the neighbouring computer plant trips and takes the pumps offline. The readings remain true until the lights go out.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "Cognitive Privacy"
    The Choir wants humans to organize something a superintelligence cannot infer before they do it. They treat every concrete objective as another pattern the machines could learn.

    The #{ref :the_pilgrims, "Pilgrims"} consider the Choir's planned noise too legible. The Choir considers the Pilgrims' dice incapable of coordinating a city. They continue to run joint operations.
  PROSE
end
