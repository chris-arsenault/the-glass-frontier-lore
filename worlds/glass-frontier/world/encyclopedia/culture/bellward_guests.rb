encyclopedia :bellward_guests do
  name "Bellward Guests"
  summary "Bellward Guests are travelers lodged under the Bellward custom who repay a household by carrying one message onward toward Sithari or the Keel. The custom chains hospitality into a postal system, and a guest's carried message is a debt of honor with an address on it."
  kind :culture
  subkind :social_order
  status :complete
  topics :household, :"social-structure", :trade, :navigation
  prevalence :uncommon
  appears_when all: { place: [:road] }

  descriptive_identity(
    manner: "Bellward households ask a guest's direction before their name — the direction " \
            "decides which of the message box's letters can travel — and guests learn to " \
            "announce their route at the door the way other travelers announce their " \
            "trade.",
    hospitality: "The lodging is owed and given plainly: bed, meal, and the beast seen to. " \
                 "The message is accepted at breakfast, read aloud once by the household " \
                 "for the guest's memory, and handed over sealed."
  )

  prose <<~PROSE
    Along the surface roads that feed toward Sithari and the Keel, an old custom runs the mail. A household under the Bellward custom lodges travelers as an obligation — bed, meal, the beast seen to — and the traveler repays with carriage: one message from the household's box, taken onward in the guest's direction of travel, to be handed to the next Bellward house along the way or delivered outright if the road runs true. The chain does the rest. A letter posted in a foothill kitchen walks to the capital in relays of strangers' pockets, each carrier fed and bedded for the leg, and the roads' whole slow postal system runs on the arithmetic of hospitality repaid one message at a time.

    The custom's discipline is the reading. A message accepted at a Bellward breakfast is read aloud once by the household before sealing, so the guest hears what they carry. The sealed letter travels with a witness in the carrier's memory, and the guest may decline after the reading if the errand sounds false or dangerous. Carried messages outrank weather. Letters recovered from carriers who died on the road continue with the next Bellward guest; after delivery, copies return to the carrier's home route and are framed beside the message box with the account of the final journey.
  PROSE

  cue "At the door the household asks the traveler's direction before their name, and the message box is already open on the breakfast table when the guest sits down."
  cue "The morning's letter is read aloud once to the carrier before sealing, and household and guest treat the reading with the plain formality of a signature."
  affordance "The Bellward chain is the surface roads' postal system — a letter walks to the capital in relays of lodged strangers — and for the traveler it is a bed and meal every stage, priced at one pocket and one errand."
  pressure "The reading makes both parties answerable for the message: the household owns the words, the guest owns their exact carriage, and a refusal before sealing stays in the message-box record."
  variation "Houses near the trunk routes run thick boxes and sort by direction like clerks; the lonely high-road houses may wait a season for a guest heading right, and their letters open with apologies for the news being old."
  variation "Storm-carried letters delivered after their carrier's death are framed beside the message box with the story attached, and reading the frames is the guest's polite first-evening entertainment."
end
