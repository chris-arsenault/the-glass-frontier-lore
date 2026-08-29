artifact :two_word_message do
  name "The Two-Word Message"
  summary "The Two-Word Message is a short pre-Glassfall Sitharian exchange transmitted weekly by the Choir Fragment, with the middle two words of its final sentence changing each time."
  subkind :record
  type_of :pre_glassfall_transmissions
  status :complete
  tags :archives, :resonance, :"signal-freq", :"ring-era", :mystery
  prominence :recognized

  descriptive_identity(
    appearance: "A short pre-Glassfall Sitharian exchange: a location request, an acknowledgement, and a final sentence whose middle two words vary.",
    handling: "The Choir Fragment transmits it once every seven days by its own clock; Ratter inspection crews have recordings from fourteen consecutive years.",
    risks: "No receiver in the current system has answered it, and attempts to read the transmitter from outside the Fragment return only its held tone."
  )

  prose <<~PROSE, section: :description, heading: "The Weekly Signal"
    The transmitter activates on a seven-day interval measured by its own clock. It sends a short exchange in pre-Glassfall Sitharian: a location request, an acknowledgement, and a final sentence whose middle two words vary. No receiver in the current system has answered it.

    The Ratter inspection crews have recordings from fourteen consecutive years. Signal strength has not declined. Attempts to read the transmitter from outside the Fragment return only the held tone, and navigation systems on unescorted research vessels tend to route around the site before it comes into instrument range.
  PROSE

  gm_note :appears, "The transmitter fires on its own seven-day clock, giving a location request, an acknowledgement, and a closing sentence with two words changed since the previous week."
  gm_note :triggered_by, "Comparing the message with the fourteen years of Ratter recordings reveals every change in its final sentence."
  gm_note :complicates, "Attempts to read it from outside the Fragment return only the held tone, while unescorted research vessels tend to route around the site before it comes into range."
end

relate :rel_choir_fragment_carries_two_word_message, :carries, :the_choir_fragment, :two_word_message do
  prose "The Choir Fragment's southern antenna deck transmits the Two-Word Message once each week."
end

relate :rel_two_word_message_created_ring_age, :created_during, :two_word_message, :the_ring_age do
  prose "The exchange is transmitted in pre-Glassfall Sitharian from a surviving ring volume."
end

relate :rel_elc_studies_two_word_message, :studies, :echo_ledger_conclave, :two_word_message, since: 2421 do
  prose "The Conclave holds fourteen years of recordings, including every change in the weekly message."
end
