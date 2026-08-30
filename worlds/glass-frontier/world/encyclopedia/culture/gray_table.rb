encyclopedia :gray_table do
  name "Gray Table"
  kind :culture
  subkind :belief
  status :complete
  topics :"ring-era", :religion, :household, :"social-structure"
  prevalence :rare
  available_globally
  summary "The Gray Table is the rare, quiet custom of setting places for the vanished: once a year, a household or hall lays its table with seats, cups, and portions for the elves its line once worked beside, and serves the meal through as though the guests were late rather than gone."
  aka "the gray places", "keeping places"

  descriptive_identity(
    manner: "Table-keeping households speak of the custom in the practical register they " \
            "use for any standing obligation — the places are 'kept,' the guests are " \
            "'expected' — and deflect theology about it with a host's firmness: it is " \
            "dinner, and the places are set.",
    hospitality: "A guest invited to a Gray Table meal is being shown the household's " \
                 "deepest cupboard; the courtesy is to eat well, ask the names, and " \
                 "listen to the answers."
  )

  prose <<~PROSE
    In a scattering of households, halls, and old workshops across the system, one meal a year is laid with too many places. The Gray Table is the custom of setting for the vanished: seats, cups, and full portions laid for the #{encyclopedia_ref :elves, "elves"} a line once worked beside — the master who taught the founding apprentice, the provisioner whose registry number is still on the family's proof crock, the colleagues whose names survive in a shop's oldest ledger — and the meal served through as though the guests were late rather than gone. The portions are served and later given away, by most tables' custom, to a stranger or a traveler; the seats stay empty; the names are spoken with the courses, each place's guest named and, in the older keepings, given the year's news.

    The custom descends from the Famine's first winters, when households that had eaten beside elven neighbors for generations continued to lay their places. Table-keepers remain a small minority and recognize one another through the old ledgers, proof crocks, and guest lists passed down with the rite. Communion houses do not administer the keeping, and households disagree over whether it is devotion, remembrance, or an ordinary duty of hosts. The one liturgical sentence most tables share is the toast that closes the meal, old enough that its dialect varies: the places are kept, the work is kept, and the door is unbarred.
  PROSE

  cue "The table is laid with four places more than the family, each extra place set with a full portion and a name spoken as the seat is passed, and the meal proceeds with the particular ease of a very old habit."
  cue "After the meal, the untouched portions are carried out and given to a traveler at the door, with a courtesy that suggests the traveler is doing the household the favor."
  affordance "A kept table is a living register of a line's elven connections — names, registry numbers, the work shared — and the keepers' informal network holds Famine-era household memory that the archives borrow from and cannot replace."
  pressure "Each inheriting household decides whether to keep the same guests, add another place from the family records, or close a seat and preserve its name only in the ledger."
  variation "Most tables keep annually on a household date — the founding, the last entry in the old ledger — while the great workshop keepings seat forty and serve the portions out to the whole street."
  variation "The closing toast survives in regional dialects, and collectors of the variants note that every version keeps the same third clause: the door is unbarred."
end
