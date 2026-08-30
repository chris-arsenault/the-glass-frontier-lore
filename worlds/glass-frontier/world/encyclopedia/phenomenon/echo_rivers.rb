encyclopedia :echo_rivers do
  title "Echo Rivers"
  kind :phenomenon
  subkind :waterway
  status :complete
  summary "Echo Rivers are crystal-bearing underground waterways on Kaleidos that carry fragments of pre-Glassfall signals and speech."
  reviewed "2026-03-19"
  topics :resonance, :"signal-freq", :archives
  prevalence :uncommon
  appears_when all: { place: [:waterway, :ringglass_rich] }
  medium "Crystal-bearing underground water"
  content "Fragments of pre-Glassfall signal and speech"
  hazard "Headaches, disorientation and identity drift after prolonged exposure"

  cue "Faint layered voices begin at a spring, sinkhole, cave opening, or wet cliff face before anyone thinks to ask a question."
  cue "Most fragments overlap beyond recognition; sometimes one voice separates cleanly for a phrase or sentence."
  affordance "Listeners can catalogue whatever fragments surface, including rare material from the days around the Glassfall."
  pressure "Long exposure causes headaches, disorientation, and drift in which a listener loses track of which voice is theirs."
  variation "Routine transmissions carry logistics, schedules, and the ordinary work of the intact ring."
  variation "Personal messages, technical strings, and rare Glassfall fragments surface unpredictably among the routine traffic."

  descriptive_identity(
    signs:
      "At a spring, a sinkhole, a cave mouth, or a wet cliff face " \
      "where the crystal-bearing rock lies open, faint voices layer " \
      "over one another. Most blur together; sometimes one voice " \
      "separates cleanly for a phrase or sentence. They begin before anyone thinks to " \
      "ask a question.",
    effects:
      "What surfaces is unchosen: routine ring-station traffic, " \
      "someone calling home, strings of calibration numbers, and on " \
      "rare occasions a fragment from the days around the Glassfall " \
      "itself, which the Echo Ledger Conclave claims custodianship " \
      "over. Flow, channel geometry, and the local crystal bed determine " \
      "the sequence; listeners catalogue each fragment as it surfaces.",
    hazards:
      "Signal-band resonance in quantity brings headaches and " \
      "disorientation, and long exposure can open a waking dream in " \
      "which the listener loses track of which voice is theirs and " \
      "which belongs to the water. The Conclave files this as drift " \
      "and counts it an occupational hazard; others treat it as reason " \
      "enough to stay away."
  )

  prose <<~PROSE
    Beneath Kaleidos, water moves through rock saturated by #{elapsed :the_glassfall, approx: true} of #{ref :the_glassfall, "Glassfall"} debris. Crystal-bearing channels conduct signal-band #{encyclopedia_ref :resonance, "resonance"}, including impressions left when the intact ring carried data through the same material.

    At springs, sinkholes, cave mouths, and wet cliff faces, that traffic becomes audible as faint layers of voices and old transmissions. Most overlap beyond recognition. Sometimes a call, a calibration string, or a few words of conversation separates cleanly from the rest.
  PROSE
  prose <<~PROSE, section: :how_it_works, heading: "What Surfaces"
    The crystal lattice holds residual signal impressions from the intact ring, and moving water conducts and sometimes amplifies them. Routine station traffic predominates: freight schedules, berth assignments, work calls, and calibration sequences. Personal messages and household voices occur less often. Fragments dated to the days around the Glassfall are rare enough that the #{ref :echo_ledger_conclave, "Echo Ledger Conclave"} claims custodianship over every authenticated example.

    Flow, channel geometry, and the local crystal bed determine what surfaces. Conclave listeners keep continuous watches at the larger outlets, log the order and duration of each fragment, and compare simultaneous hearings between stations. A familiar passage may return under similar water and signal conditions, but the sequence cannot be selected from the bank of material.
  PROSE
  prose <<~PROSE, section: :geography, heading: "Where They Surface"
    Echo Rivers surface where the underground geology forces them upward — at springs, sinkholes, cave openings, and along certain cliff faces where the crystal-bearing rock is exposed. The largest surfacing points are in the marshy lowlands of the Sable Crescent, where the water table is high and the ground is thick with crystal sediment.

    Settlements that maintain surfacing stations limit watch lengths and keep a second listener outside the strongest sound. Signal-band resonance in quantity causes headaches and disorientation; prolonged exposure can produce a waking state in which listeners lose track of their own speech among the voices in the water. The Conclave records this as drift and rotates staff at the first reported confusion.
  PROSE
  prose <<~PROSE, section: :significance, heading: "Significance"
    Kaleidos's saturated geology makes the rivers a distributed archive of the intact ring. Conclave catalogues use routine traffic to reconstruct station schedules, work practices, and route names; technical strings can identify salvaged machinery or establish the date of another record. Glassfall-period fragments carry the highest historical and legal value, and disputes over custody begin as soon as a station authenticates one.

    Visitors also come to hear personal voices. Some surfacing settlements maintain listening galleries for families and pilgrims, while others reserve the banks for archive work because long watches increase drift cases.
  PROSE

end
