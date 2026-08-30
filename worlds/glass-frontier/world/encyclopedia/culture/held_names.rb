encyclopedia :held_names do
  name "Held Names"
  summary "Held names are the names of the unaccounted-for, carried in trust by living kin — most often given to a newborn as a second name at the lying-in's end — until a registry confirms the fate of the person who wore them first. The custom is the Glassfall's broken bookkeeping turned into kinship practice, and its rarest ceremony is the one where the name goes back."
  kind :culture
  subkind :cultural_identity
  status :complete
  topics :household, :"social-structure", :archives, :isolation
  prevalence :rare
  available_globally
  integration "The custom threads through ordinary naming practice rather than standing apart from it — registries record a held name with its trust mark, midwives ask the question at every naming, and most people meet the custom once or twice in a family's generation"
  formal_register "A held name is introduced with its formula — 'who holds the name of' — at the occasions where full names are spoken, and the formula is the custom's entire public ceremony until the registry answers"

  descriptive_identity(
    appearance: "Invisible until spoken: the holder wears the name in the middle of " \
                "their own, marked in the registry with the trust sign, and " \
                "announced at formal occasions by the holding formula.",
    manner: "Holders speak of the name's first wearer in the settled present the " \
            "registries use for the unaccounted — where they were posted, what " \
            "they did — and a holder asked about the name gives its story as a " \
            "duty of the trust, which is how the lost stay described.",
    hospitality: "A household holding a name keeps the wearer's welcome with it — " \
                 "news, letters, and travelers from the place of loss are received " \
                 "and questioned gently, and the search dresses itself entirely as " \
                 "good hosting."
  )

  prose <<~PROSE
    The ring's registries knew where everyone was. Had they held, a name would move to an heir only across a confirmed grave, in the tidy way the #{encyclopedia_ref :naming_conventions, "naming customs"} still prefer. The Glassfall broke the bookkeeping along with everything else: whole rosters of people became unaccounted-for — posted to fragments that drifted dark, aboard vessels between ports, resident in sections the registries could reach again only #{elapsed :the_glassfall, :the_rekindling} later — and their families were left holding names that could be neither inherited nor released. The custom made the limbo into an office. A name whose wearer is unaccounted-for may be held: given in trust, most often to a newborn as a second name at the lying-in's walking-out, recorded with the registry's trust mark, and carried — with the wearer's story attached as a duty — until the registries answer.

    The trust has three exits, and every family that holds a name knows all three. Confirmation of death releases the name into ordinary inheritance, and the holder keeps it thereafter as their own, the trust mark struck through with the date. Return — rare from the Rekindling's reconnections, rarer now, and documented enough that the ceremony stays in the registries' manuals — hands the name back: holder and wearer meet, the formula is spoken a last time, and the holder takes a chosen name in its place at a feast both households remember for a generation. The third exit is the common one: the trust outlives the question, passing at the holder's death to a new holder if the family still wants an answer, or lapsing into the ordinary name-stock with the story kept. Registry offices maintain the held rolls as a standing search index — a name is a better query than a description, the clerks' saying runs — and the custom's quiet machinery does what it was built to do: it keeps the unaccounted described, welcomed for, and asked after, one name at a time, for as long as anyone is still holding.
  PROSE

  cue "At the walking-out the midwife asks the naming question, the grandmother answers with a name and its trust — 'who holds the name of' — and the registry clerk enters the newborn's second name under the trust mark."
  cue "A traveler from the Verge fragments takes the guest seat, and the household's questions come gently around, over the meal, to one section, one posting, one name — good hosting, doing its other work."
  affordance "The held rolls make every holder a standing search query — registries match returns, wreck findings, and reconnected rosters against them — and a family holding a name keeps its lost member described, welcomed for, and legally rememberable."
  pressure "The trust binds until the registry answers, and the answers arrive on history's schedule — so holders live with an open question wearing their own name, and the rare return ceremony, joyous on the manuals' page, asks a person to hand back part of who they have been."
  variation "Fragment families hold names from the Glassfall's dark years; dock and Bloom country families hold newer losses under the same forms, and the registries' trust marks date each name's question."
  variation "Some families hold a name in each generation as standing memorial practice, re-trusting at each death — and the registries carry these perpetual trusts under the same mark, answering the search question at the family's own pace."
end
