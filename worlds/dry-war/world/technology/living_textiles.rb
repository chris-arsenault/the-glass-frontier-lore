resource :living_textiles do
  name "Living Textiles"
  tags :biotech, :symbiosis, :medicine
  prominence :mythic

  prose <<~PROSE
    The original breakthrough, and still the thing most people mean when they talk about the network. Clothing that regulates heat, filters what the air is carrying, monitors physiology, administers compounds, closes wounds, and connects its wearer to the #{ref :the_great_root, "Great Root"}.

    A mature garment is not worn so much as inhabited. It partially colonizes its wearer, and after long enough the boundary between the two is a medical question rather than an obvious one.
  PROSE

  prose <<~PROSE, section: :history, heading: "Why Anyone Agreed"
    Because the first generation saved lives in numbers that made refusal look eccentric. They cooled people through the worst summers in the record, filtered particulates that were killing the elderly, and detected cancers early enough to change the outcome.

    Municipal subsidy followed, then hospital integration, then logistics. #{ref :the_joined, "Joined"} children are now born into bedding and classrooms that carry it.
  PROSE
end
