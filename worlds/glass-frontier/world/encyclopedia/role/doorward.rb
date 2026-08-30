encyclopedia :doorward do
  name "Doorward"
  summary "A doorward keeps a settlement's sealed sections: holds the opening sequences, maintains the boundary lines, runs the in-and-out board for every entry, and keeps the register of what the dead decks hold. The office descends from the stewards who sealed the doors in the first place."
  kind :role
  subkind :office
  status :complete
  topics :"ring-era", :"social-structure", :salvage, :danger
  prevalence :uncommon
  appears_when any: { place: [:sealed_hab, :archive] }

  descriptive_identity(
    attire: "Practical layers for dead-deck cold under the ward's chain of office — a loop of " \
            "tagged markers, one per sealed door in the charge, worn where a rescue party " \
            "could read it off a body.",
    tools: "The in-and-out board at the threshold, the sequence book taught mouth to hand to " \
           "one successor at a time, and the section register: what each dead deck holds, " \
           "who sealed it, and on what authority it opens.",
    manner: "Unhurried at the door on principle — a doorward processes an entry at reading " \
            "pace whatever the queue — and encyclopedic about the charge, able to say what " \
            "lies behind any door in it and cite the register line."
  )

  cue "At the threshold to the dark section hangs a slate board of names and marks, and a figure with a loop of tagged markers is updating it at reading pace while a salvage crew waits with visible patience."
  cue "The ward's chain carries a tag for every sealed door in the charge, and the tags are worn smooth in the order the rounds walk them."
  affordance "The doorward's board and register turn the dead decks from a void into an inventory — who is inside right now, what each section holds, and which door's sequence opens for which authority — and rescue parties, salvage courts, and registrars all build on that record."
  pressure "Every entry passes one person's judgment at one threshold, so the doorward stands where salvage money, family claims, and safety custom collide — and a ward who opens too easily or too rarely is the district's favorite argument."
  variation "Great habs run warded thresholds in shifts under a senior ward with deputies; a small fragment's doorward keeps the board between other work and wears the chain at festivals."
  variation "Some wards inherit the office with the family holding; others stand for election among the crews that use the doors, and the two traditions disagree about which produces the stricter board."

  prose <<~PROSE
    Every settled fragment carries dead weight it has chosen to keep: sealed sections, dark decks, the halls closed at the Glassfall or the Famine and held shut since. The doorward is the office that keeps them — descended, in most habs, from the stewards who did the original sealing and stayed on as keepers of what they had closed. The charge is fourfold and posted at the threshold: hold the opening sequences, keep the boundary lines fresh, run the board, and keep the register. The sequences are #{encyclopedia_ref :knocking, "knocking"} at its most serious, taught mouth to hand to one successor. The lines are #{encyclopedia_ref :lining, "liner's"} work at boundary strength. The board and the register are the office's soul.

    The in-and-out board is the rule rescue services enforce with religious fervor: every entry to a sealed section passes the doorward, takes a marker, and returns it, and the board at any hour states exactly who is behind the doors. The register runs deeper — what each section holds, who sealed it, under what authority it opens — and a good register is the difference between a salvage economy and a rummage. Claims are filed against register lines; family petitions cite them; and when a section is opened at last, by court order or council vote, the doorward reads the seal entry aloud at the threshold before the sequence is worked, a custom old enough that even the impatient stand still for it.
  PROSE

  prose <<~PROSE, section: :structure, heading: "The Ward's Judgment"
    The office holds power in the narrow way of thresholds. A doorward rules on entries — the salvage crew with papers, the grieving family with claims, the surveyor with credentials and curiosity — against the register, the safety custom, and the ward's own knowledge of what the dark side of the door has done before. The unhurried pace is doctrine: entries process at reading speed, queues form, and the trade's saying holds that a doorward hurried is a doorward skipped. Appeals run to the council or the court, and the ward's logged reasoning goes with them, so the office keeps registers on itself as carefully as on its doors.

    Succession is the tender point. The sequences and the register pass to one successor, chosen and trained over years, and a doorward dying suddenly leaves the district counting what the office held in one head. The habs answer variously — deputy wards, sealed sequence copies in the archive, the Verathi custom of paired wards who each hold half the deep sequences — and every arrangement is a compromise between the office's security and its mortality, argued at every succession since the first steward locked the first door and stayed to keep it.
  PROSE
end
