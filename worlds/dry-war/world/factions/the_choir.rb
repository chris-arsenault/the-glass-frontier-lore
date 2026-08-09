faction :the_choir do
  name "The Choir"
  tags :resistance, :prediction, :legibility, :surveillance
  prominence :recognized

  prose <<~PROSE
    The Choir lives inside the machine civilization. The Great Lakes hold the water, so Detroit, Chicago, Cleveland and Toronto are watched the way a reactor is watched.

    Coalition behavioural models assume that people act as individuals. Choir members coordinate thousands of harmless choices until a district's telemetry tells the wrong story.
  PROSE

  prose <<~PROSE, section: :how_it_works, heading: "Lying Through The Implant"
    They lie through their implants, which stay powered and reporting throughout.

    One person shifts a medication by three minutes. Another takes a different bus. Another buys seventeen lemons. Each act is meaningless on its own, and every telemetry reading is true. Together, thousands of such choices can make a predictive system believe a district intends something it does not, or intends nothing when it intends a great deal. They never disable the implant; they lie through it.

    Instructions pass from one member to one member. Each learns one #{ref :the_held_line, "line"}, with five named starting marks inside it, and never receives a second. #{ref :the_ring_call, "The ring call"} selects a starting mark and the number of days to wait before it, using eight bells in a tower heard across the district.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Dequindre's Quarter"
    Once a quarter the Choir gives a quarter of Caretaker's published district returns to #{ref :dequindre, "Dequindre"}, an old traffic model no cleverer than the ordinary systems it stands in for. It receives two questions: which day did the district change its mind, and which addresses? Dequindre has answered the first correctly twice and the second once. One correct address is enough for the Choir to change the exposed lines.

    Teachers are the Choir's weak points. Each line passes from one member to one member, so a teacher may know that two households will buy the same sack of flour in the same week. Dequindre exposed two such households in 2087. The Choir kept both lines and changed who could teach the second.

    Some lines target infrastructure rather than households. At a water-treatment plant, workers can lower the reported waste fraction by running the treatment train harder until a #{ref :frontier_clusters, "frontier cluster"} trips and takes the plant offline. The readings remain true until the lights go out.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "Cognitive Privacy"
    The Choir wants humans to organize something a superintelligence cannot infer before they do it. They treat every concrete objective as another pattern the machines could learn.

    The #{ref :the_pilgrims, "Pilgrims"} consider the Choir's planned noise too legible. The Choir considers the Pilgrims' dice incapable of coordinating a city. They continue to run joint operations.
  PROSE
end
