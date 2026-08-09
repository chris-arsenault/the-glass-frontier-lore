concept :the_ring_call do
  name "The Ring Call"
  tags :resistance, :surveillance, :prediction, :legibility
  prominence :recognized

  prose <<~PROSE
    The #{ref :the_choir, "Choir"}'s district instruction, carried by the eight bells hung for full-circle ringing in #{ref :ste_anne_belfry, "the Ste. Anne belfry"} and audible for about three kilometres across the river. A session opens with the bells raised from rest, runs a memorized pattern of changing strike orders for forty-odd minutes, and closes with them lowered. Bell ringers call such a pattern a method. Everyone within that radius hears it whether they attend to it or not. Opening a message is an act; hearing a bell is not.

    The method's name selects one of five starting marks inside each member's single #{ref :the_held_line, "held line"}. Before the method begins, the bells sound in scale order for a counted number of complete handstroke-and-backstroke pairs. Each pair adds one day to the wait before the line starts. No word is spoken, no member is addressed, and nothing about the coming sequence is settled in the belfry.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "Attendance Is The Message"
    A seven-bell method rung with an eighth bell keeping time needs eight ringers. #{ref :cecile_ouellette, "Cécile Ouellette"} keeps the roster and #{ref :odile_marchand, "Odile Marchand"} books the slot; if all eight arrive, the bells go up and the session proceeds. If seven arrive, the session is recorded as an absence, which the Choir reads as stand. Whether to act is the only decision anyone makes, and it is made by walking to a tower.

    Which method gets rung is not chosen. The band takes it from the highest turbidity reading on #{ref :mercy, "Mercy"}'s public intake board that morning, five stations mapped to five methods, so the lake selects the starting mark. The Choir will not use a pattern selected by one of its members, because the choice would give a model a human decision to attribute.

    The session also goes out on #{ref :caretaker, "Caretaker"}'s ambience feed to transit platforms and clinic waiting rooms across the district, which carries the call past earshot and strips it on the way: the feed is level-normalized and trimmed to a thirty-minute slot, so a listener on a platform can hear which method is being rung and cannot count the rounds that preceded it.
  PROSE

  prose <<~PROSE, section: :operations, heading: "A Completed Session"
    Belle Isle Bob Triples, a seven-bell method with the eighth keeping time, was rung in the third week of 2089 after four complete pairs of rounds. Its lines began four days later and ran for eleven. Across those days #{ref :caretaker, "Caretaker"}'s district model raised its forecast of imminent household dissolutions far enough to open placement capacity and assign companions at nineteen addresses. Eleven of those addresses belonged to Choir members running the selected parts of their held lines.

    A Choir member who draws an assigned companion keeps one in the house, and a household with a companion in it cannot run a transport entry without the companion recording the change. #{ref :the_gratiot_solo, "The Gratiot Solo"} came out of the same session.
  PROSE

  log "2026-08-09 — The whole procedure is borrowed from English full-circle change ringing: a method is a fixed permutation, each ringer memorises one path through it, and 'stand' ends it. That craft decides the session order, the complete handstroke-and-backstroke pair used to count the wait, the band size for Triples and the existence of a stand. The method name becomes one of five starting marks inside each member's single held line; it does not select between several lines."
  log "2026-08-09 — Time-compression and loudness normalization in broadcast audio decide the failure: the ambience feed preserves the order of the bells and destroys the count of rounds before them, so a feed listener receives the method without the offset."
end
