encyclopedia :rootward_households do
  name "Rootwards"
  summary "Rootwards are garden-hab families who give each child a productive graft at naming and increase the child's responsibility for it through the growing rotation. At majority, the graft's carved name stake moves from the beds to the household lintel."
  kind :culture
  subkind :social_order
  status :complete
  topics :household, :ecology, :"social-structure", :"ring-hab"
  prevalence :uncommon
  appears_when all: { place: [:garden] }
  integration "Rootward families participate in ordinary hab life while their domestic calendar follows the growing rotation; garden cooperatives draw many apprentices from households already trained in bed work"
  aesthetic "The graft tokens: each child's graft marked with a small carved stake bearing their name, the stakes moving with the rotation and retiring, at majority, to the household's door lintel — a lintel of stakes being the rootward equivalent of a wall of portraits"

  descriptive_identity(
    manner: "Rootward households divide bed work by age, mark every task on " \
            "the rotation calendar, attribute each harvest at the table, and " \
            "describe an overcommitted person as having more beds than hands.",
    appearance: "Households legible by their lintels — rows of small carved " \
                "name stakes over the door — and by children moving through " \
                "the beds on their own errands, each pausing at one particular " \
                "graft with an owner's eye.",
    hospitality: "A guest is walked through the beds before the meal and told " \
                 "whose graft is whose. At the table, the cook attributes each " \
                 "ingredient harvested from a child's plant."
  )

  prose <<~PROSE
    #{encyclopedia_ref :elves, "Elven"} habitats assigned every residence a share of the #{encyclopedia_ref :root_deck_symbiotes, "root deck"}. Fragment households kept those allotments productive through the isolated years after the Glassfall. In the rootward custom, a child receives a productive graft at naming and a carved stake bearing their name. Early duties begin with watering and inspection. As the child grows, the graft moves through the rotation and the duties expand to feeding, pruning, transplanting, and harvest.

    Siblings' beds adjoin so they can share tools and catch missed work. Households choose a graft according to the child's age, the current beds, and what the family needs to grow. At meals, the cook names the child whose graft supplied an ingredient. At majority, the young adult may keep, gift, divide, or graft onward the plant, while its name stake retires to the door lintel. Rows of stakes preserve the household's growing history. Garden cooperatives recruit rootward apprentices who already know rotation calendars, bed records, and the daily work of a productive deck.
  PROSE

  cue "The guest is walked through the beds before dinner — this vine is Essa's, the salt-greens are her brother's — and at the table the cook serves the stew with the formal attribution: the roots are from Essa's graft."
  cue "The rotation moves and the household spends the morning re-staking — each child carrying their own carved name to its new bed, the youngest's stake carried for her, this year, one last time."
  affordance "The custom supplies garden habs with residents trained from childhood in rotation calendars, bed records, transplanting, and harvest."
  variation "Garden habs keep the full custom with rotation duty and lintel stakes; rootward families in city districts use window-box grafts and retire the smaller stakes to their lintels at majority."
  variation "At majority, the graft may remain in the household bed, travel with the young adult, pass as a gift, or divide into cuttings for later namings."
end
