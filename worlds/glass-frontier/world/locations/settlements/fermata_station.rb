installation :fermata_station do
  name "Fermata Station"
  playable_as :chronicle_location, :homeland
  origin_blurb "A ring hab where public Sessions turn musical improvisation into binding civic decisions."
  subkind :settlement
  path "player/locations/settlements/fermata-station.md"
  status :complete
  reviewed "2026-03-19"
  tags :governance, :resonance, :"ring-hab", :"fluid-reality", :music, :"social-structure"
  prominence :recognized
  position frame: :kaleidos_system_chart, relative_to: :kaleidos,
           radial_offset: 0.1, angle_offset_deg: 26
  log "2026-08-09 — raised from :marginal. Hab Meridian names its jazz governance as one of three exemplars of a distinctive local culture, alongside the Sithari ringglass aesthetic and the Pelhari instrument-wrights; a station whose governance is a byword elsewhere is not marginally known."
  log "2026-08-21 — Removed the narrator's joke from the opening. Fermata remains recognized because its Sessions and mediation work are known beyond the station."
  region "glass-frontier"
  aka "The Jazzocracy"

  prose <<~PROSE
    *Known colloquially — and almost universally outside the station — as the Jazzocracy.*

    A ring hab governed through the practice of playing jazz. Structured improvisation Sessions propose, contest, and resolve policy in real time. Their decisions are enforceable, but the station has no test for whether a musically satisfying resolution is a fair one.

    The inhabitants call it Fermata. The name predates the Glassfall — it was the ring-era module designation, and the station kept it out of a stubbornness that passes for tradition. Everyone else calls it the Jazzocracy, a term Fermata's residents consider reductive but have stopped correcting.
  PROSE
  prose <<~PROSE, section: :how_it_works, heading: "How It Works"
    Three principles hold the system together:

    **Authority is performative.** You govern by playing. Political power flows to those who can hold a room — not through volume or virtuosity, but through the ability to listen, respond, and shape the direction of a collective improvisation.

    **Law is repertoire.** The station's legal framework is encoded in jazz standards — pieces that carry accumulated political meaning from every significant session in which they were played. Calling a tune invokes precedent. Composing a new one proposes new law.

    **Citizenship is auditioned.** Full political participation requires passing the Sit-In — a performance evaluated not on technical skill but on the ability to listen and respond. The criteria are genuinely subjective, which is both the system's greatest strength and its most obvious vulnerability.

    The system works because it selects for people who can read a room, compromise in real time, and subordinate ego to collective output. The musical framework also makes power dynamics visible — everyone in the room can hear who's leading, who's following, and who's bulldozing.

    In practice:

    **The Session** is the primary governing body. An open jam session where policy is proposed, contested, and resolved through musical dialogue. Factions bring competing themes. Resolution is whatever the room converges on. Sessions are public. Attendance is not mandatory. Absence is noted.

    **The Rhythm Section** holds disproportionate structural power. They set tempo and changes before anyone else plays a note. Every conversation is framed by the rhythm section's choices. Nominally neutral. Practically anything but.

    **The Comp** is the bureaucratic class. Players who never solo, never expose themselves, but shape the harmonic context of every session. They describe their role as "serving the music." They control more than any soloist and are less accountable than any of them. Some are genuine servants of the form. Some have perfected the art of making their preferred resolution feel inevitable.

    **The Chair** is not a leader. The person responsible for calling tunes, setting the order of soloists, and deciding when a piece has resolved. Rotates, theoretically. In practice, certain players hold the chair for long stretches because nobody wants the job badly enough to challenge them, which is its own kind of commentary.
  PROSE
  prose <<~PROSE, section: :people, heading: "People"
    **Players** are full participants in governance. Earned through the Sit-In. Can solo, comp, or propose tunes in Session. The political class.

    **The Audience** is everyone else. Citizens with full access to station resources but no voice in Session. Some by choice. Some because they failed their Sit-In and carry that quietly for the rest of their lives. Some because they never tried, which is perceived as a different and less sympathetic category of silence.

    **The Drone** — musicians who maintain the station's #{ref :resonance, "resonant frequencies"} around the clock. Sound has structural consequences on this fragment; certain chord voicings physically hold the station together. The Drone is simultaneously the most essential function on the station and the least politically powerful, because its members can't leave their post to attend Session. Culturally revered. Practically ignored.
  PROSE
  prose <<~PROSE, section: :people, heading: "Notable Figures"
    | Name | Species | Role | Notes |
    |------|---------|------|-------|
    | #{ref :shei_lush, "Shei Lush"} | Fae | The Chair | Has held the chair since #{year :shei_lush_takes_chair} CE. Her sparse piano lines leave room for competing proposals and make the point of resolution audible to the whole Session. |
    | #{ref :ol_dent, "Ol'dent"} | Gnome | Drone lead | Runs the Drone rotation and reads structural drift through the station's low tones. He refuses to attend Sessions while Drone players remain outside full citizenship. |
    | #{ref :sable_korr, "Sable Korr"} | Human | Standard scholar | Keeps the Session archive and advises Players despite remaining a member of the Audience after her failed Sit-In. |
    | #{ref :goruth, "Goruth"} | Orc | Comp player | Shapes the harmonic ground beneath proposals and reads their structural load through the hall floor. |
    | #{ref :dez_morrn, "Dez Morrn"} | Human | Free Jazz leader | Organizes players who reject inherited changes and has twice faced Sessions that could not resolve her arrest. |
  PROSE
  prose <<~PROSE, section: :governance, heading: "The Sit-In"
    The citizenship test. You perform with the house ensemble. The evaluation isn't technical skill — it's whether you can listen, respond, hold space, and know when to stop. People train their entire lives for it. Some freeze. Some play beautifully and fail because they never once responded to what anyone else was doing. The word for someone who fails their Sit-In is said with genuine compassion, which somehow makes it worse.
  PROSE
  prose <<~PROSE, section: :governance, heading: "The Standards"
    The station's body of law. Not written statutes — jazz standards, each carrying accumulated meaning from every significant performance in which it was played. Calling a tune in Session isn't choosing music. It's invoking precedent.

    Standard scholars spend lifetimes studying the political context layered into specific pieces. What happened the last time someone called "Footprints" in a resource dispute. What it meant when the rhythm section modulated during the Water Cycle Negotiations of year 138.

    Banned standards exist not by decree but by consensus. Certain tunes reopen settled arguments. Playing them isn't illegal — nothing is illegal, exactly — but the consequences are real and everyone knows what they are.

    New compositions are the equivalent of proposing new legislation. Most fail. The ones that enter the repertoire reshape the political landscape.
  PROSE
  prose <<~PROSE, section: :economy, heading: "The Fermata Open"
    #{embed :the_fermata_open}
  PROSE
  prose <<~PROSE, section: :tensions, heading: "The Free Jazz Problem"
    A philosophical movement, an activist tradition, and occasionally a terrorist cell, often in the same room at the same time.

    The position: the Original Standards have become instruments of control. True listening requires abandoning predetermined harmony. The culture has betrayed its founding principle by turning spontaneity into tradition.

    The complication: they're not entirely wrong. Some are genuinely trying to evolve the form. Some are broken people who can't hold structure and have built an ideology around the inability. Some have realized that if dissonance has physical consequences on this fragment, free jazz isn't protest — it's a weapon.

    The station doesn't know what to do with them. Suppressing them violates the foundational ethos. Ignoring them risks structural damage to the station. Co-opting them works until it doesn't.
  PROSE
  prose <<~PROSE, section: :mechanics, heading: "Physics"
    The #{ref :the_glass_frontier, "Glass Frontier's"} loosened physics manifests on this fragment as a material relationship between sound and structure. This is not metaphor.

    **#{ref :resonance, "Resonance"}** — certain frequencies and chord voicings have load-bearing properties. The Drone exists because if they stop playing, bulkheads fail. The fragment's #{ref :ringglass, "ringglass"} structure responds to sustained harmonic input in the signal-frequency range, and #{elapsed :fermata_station, approx: true} of continuous music have tuned the station's crystal lattice to depend on it.

    **Dissonance** — unresolved harmonic tension causes material stress. Minor at small scale (a bad practice session might crack a window). Catastrophic at volume (a coordinated free jazz action could breach a hull).

    **Tempo** — subjective time on the station is influenced by the dominant pulse in the central hall. This is not well understood and mostly denied by station leadership, which is itself a political act.
  PROSE
  prose <<~PROSE, section: :tensions, heading: "Tensions"
    - Meritocracy vs. gatekeeping. The Sit-In is genuinely open. The criteria for passing are genuinely subjective.
    - Tradition vs. evolution. The Standards are living law, but living things calcify.
    - Essential labor vs. political power. The Drone keeps everyone alive and has no seat at the table.
    - Listening as virtue vs. listening as control. The highest cultural value is also the most effective tool for keeping people quiet.
    - Beauty vs. justice. Sometimes the most musically satisfying resolution isn't the fair one. The station has no mechanism for distinguishing between the two.
  PROSE

  gm_note :appears, "Whatever the party wants from Fermata — a berth, a repair, a cargo term, leave to travel on — becomes a tune called in a public Session, and the answer is whatever the room converges on that night. Attendance is not required and absence is noted."
  gm_note :triggered_by, "Players who state their case in words get a hearing and no standing. Only someone who has passed the Sit-In can solo, comp, or propose in Session, so a visitor pressing an argument is handed an instrument or handed to a Player willing to carry it."
  gm_note :complicates, "A shouted argument, a brawl, or a badly played hour is a structural event here: unresolved tension loads the ringglass, and a small one crazes a window while a loud one moves bulkheads. Whoever the party was fighting will name the damage before naming the fight."
end

relate :rel_fermata_in_orbit_of_kaleidos, :in_orbit_of, :fermata_station, :kaleidos do
  prose "Fermata holds a quiet orbit of #{ref :kaleidos, "Kaleidos"}, far enough from the busy lanes that its strange internal life goes mostly unwatched."
end
relate :rel_fermata_depends_on_ringglass, :depends_on, :fermata_station, :ringglass do
  prose "Like any hab it depends on #{ref :ringglass, "ringglass"} for power and structure, traded in through the same routes that bring everything else."
end
relate :rel_fermata_located_in_tgf, :located_in, :fermata_station, :the_glass_frontier, since: 2140 do
  prose "It is one of the surviving fragments of the #{ref :the_glass_frontier, "Glass Frontier"} — a hab that came through the Glassfall intact and went its own way during the long silence that followed."
end

# --- history (moments) ---
moment :fermata_founded, year: 2140, of: :fermata_station do
  prose "When the ring shattered, the fragment that would become Fermata contained a bar — power, social structure, and a culture of resolving tension through call-and-response. That was more than most fragments had. The bartender kept pouring, the band kept playing, and adjacent compartments were absorbed not through force but through need: the bar was the only place with a functioning social contract."
  effects { set :fermata_station, standing: :surviving_fragment }
end
moment :fermata_sealed_by_famine, year: 2160, of: :fermata_station do
  prose "The #{ref :signal_famine, "Signal Famine"} sealed it. Cut off from the ring and the surface, Fermata had no model for governance except the one it was already practicing. By the time contact was re-established decades later, the jazz system had calcified into something no outsider would have designed and no resident could imagine replacing."
end
