concept :the_ring_call do
  name "The Ring Call"
  tags :resistance, :surveillance, :prediction, :legibility
  prominence :recognized

  prose <<~PROSE
    The #{ref :the_choir, "Choir"}'s district instruction, carried by the eight bells hung for full-circle ringing in #{ref :ste_anne_belfry, "the Ste. Anne belfry"} and audible for about three kilometres across the river. A session opens with the bells raised from rest, runs a named method for forty-odd minutes, and closes with them lowered. Everyone within that radius hears it whether they attend to it or not, which is the property the Choir needed: opening a message is an act, and hearing a bell is not.

    A method is a permutation the band learned years ago and strikes from memory. Its name selects which #{ref :the_held_line, "held line"} every member in earshot begins. The count of whole pulls of rounds struck before the method starts gives the offset in days. No word is spoken, no member is addressed, and nothing about the coming touch is settled in the belfry.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "Attendance Is The Message"
    Triples wants eight ringers. #{ref :cecile_ouellette, "Cécile Ouellette"} keeps the roster and #{ref :odile_marchand, "Odile Marchand"} books the slot; if eight of the band arrive, the bells go up and a touch is called. If seven arrive, the session is struck as an absence, which the Choir reads as stand. Whether to act is the only decision anyone makes, and it is made by walking to a tower.

    Which method gets rung is not chosen. The band takes it from the highest turbidity reading on #{ref :mercy, "Mercy"}'s public intake board that morning, five stations mapped to five methods, so the content of a touch is set by the lake. The Choir treats a touch whose content it selected as a touch a model can attribute to somebody.

    The session also goes out on #{ref :caretaker, "Caretaker"}'s ambience feed to transit platforms and clinic waiting rooms across the district, which carries the call past earshot and strips it on the way: the feed is level-normalized and trimmed to a thirty-minute slot, so a listener on a platform can hear which method is being rung and cannot count the rounds that preceded it.
  PROSE

  prose <<~PROSE, section: :operations, heading: "A Called Touch"
    Belle Isle Bob Triples was rung in the third week of 2089, four whole pulls of rounds, and its lines ran eleven days. Across those days #{ref :caretaker, "Caretaker"}'s district model raised its forecast of imminent household dissolutions far enough to open placement capacity and assign companions at nineteen addresses. Eleven of the nineteen were held lines.

    Caretaker's response was correct on its own reading and it landed where the Choir lives. A member who draws an assigned companion keeps one in the house, and a household with a companion in it cannot run a transport entry without the companion recording the change. #{ref :the_gratiot_solo, "The Gratiot Solo"} came out of the same touch.
  PROSE

  log "2026-08-09 — The whole procedure is borrowed from English full-circle change ringing: a method is a fixed permutation each ringer memorises as their own line, the conductor selects among pre-agreed courses with a single call at a defined row, and 'stand' ends it. That craft solves exactly the Choir's problem — many people executing one long coordinated pattern with no discussion and no per-person channel — so it decides the order of the session, the unit of the offset (whole pulls of rounds), the band size for Triples, and the existence of a stand."
  log "2026-08-09 — Time-compression and loudness normalization in broadcast audio decide the failure: the ambience feed preserves the order of the bells and destroys the count of rounds before them, so a feed listener receives the method without the offset."
end
