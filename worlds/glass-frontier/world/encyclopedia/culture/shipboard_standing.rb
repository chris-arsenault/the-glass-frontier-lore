encyclopedia :shipboard_standing do
  name "Shipboard Standing"
  kind :culture
  subkind :collective_standing
  status :complete
  topics :"social-structure", :transport, :orbital, :trade
  prevalence :uncommon
  appears_when any: { place: [:dock, :orbital] }
  summary "Shipboard standing is a spacer's witnessed record of passages served, watches held, and hard hours answered for. Crew-book entries and former shipmates carry that record between vessels and determine which berth and watch a hiring master will entrust to the spacer."
  integration "Shipboard standing interlocks with ship's law and the port trades — a vessel's articles say what each rank may do, the standing says who is believed at that rank, and the dock offices' hiring floors run on both"
  formal_register "Standing is spoken in the trades' fixed forms — a spacer 'holds' their watch, is 'spoken for' by former shipmates, and the crew book's highest entry keeps the old formula: 'served the passage entire' — with the hard-passage entries initialed by every surviving officer"

  descriptive_identity(
    manner: "Spacers preserve standing by entering their own errors promptly, " \
            "holding the watches written in the articles, and naming former " \
            "shipmates who can confirm a hard-passage entry.",
    appearance: "The crew book itself — passages, ratings, and the initialed " \
                "hard-passage entries — carried where the circuit trades " \
                "carry their road books, and read at hiring tables with the " \
                "same close attention.",
    hospitality: "Standing's hospitality is the shipmate's claim — a spacer " \
                 "spoken for by a former crewmate eats at their table and " \
                 "bunks under their name in any port, the old obligation of " \
                 "people who have held each other's watches, durable past " \
                 "years and better judgment alike."
  )

  prose <<~PROSE
    A ship's articles assign the current berth, watch, and voice. Shipboard standing belongs to the spacer and survives a change of hull. The crew book records passages and ratings. A hard-passage entry uses the formula *served the passage entire* and carries the initials of every surviving officer. At a hiring table, the master reads that entry and asks which former shipmates will speak for it.

    A green hand's first initialed passage begins the record. Former crewmates maintain the spoken-for chain by answering inquiries from other ports and by honoring the shipmate's claim: a vouched-for spacer can request a meal and bunk under their name. Ships may be sold, lost, or broken up while the book and witnesses continue. A spacer who abandons a watch or leaves a shipmate unanswered-for finds former officers unwilling to confirm later entries; hiring floors return the book and offer the berth elsewhere.
  PROSE

  cue "The hiring master reads the crew book slowly, stops at the initialed hard-passage entry, and looks up with the question that actually decides the berth: who else walked off that one, and will they speak for you?"
  cue "The stranger at the dockside table names a shipmate three ports and eleven years gone, the claim is checked with two questions, and the bunk and the meal follow — the watch-holder's obligation, paid on demand."
  affordance "Crew books and the spoken-for chain let a hiring master assign berths and watches to strangers using witnessed passage records from other ports."
  pressure "A hard-passage entry loses weight when its surviving officers refuse to speak for it, and an abandoned watch can follow a spacer across every later hull."
  variation "The deepwater trades keep the full institution — books, formulas, initialed entries; the ferry and short-haul crews run a lighter word-of-dock version; and the hauler families' standing is half crew book, half household reputation, inherited and answered for together."
  variation "Ships' articles vary by trade and hull, but the standing's grammar is common — held watches, spoken-for chains, the passage-entire formula — and a spacer crossing trades carries their book into the new one at a discount every hiring floor applies the same way."
end
