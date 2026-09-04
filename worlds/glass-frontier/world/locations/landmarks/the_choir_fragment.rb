installation :the_choir_fragment do
  name "The Choir Fragment"
  summary "The Choir Fragment is a fallen ring section on the outer Pell routes whose surviving transmitter sends a changing pre-Glassfall message each week."
  playable_as :chronicle_location
  context_tags :orbital, :debris_field, :damaged_signal, :ringglass_rich
  subkind :landmark
  culture :rolls
  tags :orbital, :"ring-era", :resonance, :archives, :mystery, :salvage
  prominence :recognized

  descriptive_identity(
    setting:
      "A fallen ring section adrift on the outer Pell routes, big enough " \
      "that crews name its regions — the long deck, the plate rooms, the " \
      "cold galleries, the southern antennae. Pale-green emergency lights " \
      "mark the inspected route through otherwise dark corridors, the " \
      "interior holds cold-storage temperature whatever the sun is doing, " \
      "and a tone below ordinary hearing sits in every panel and wall.",
    activity:
      "Once a week, on its own clock, the southern antenna deck sends a " \
      "short pre-Glassfall exchange with two words changed since the last " \
      "one; Ratter crews have fourteen years of recordings. Every quarter " \
      "two flotillas walk the clear route, replacing lights and marking " \
      "structural movement.",
    access:
      "Pilots who treat the Fragment as an ordinary maintenance run reach " \
      "the southern deck reliably; expeditions built around proving a " \
      "theory report diversions, contradictory ranges, and missed burns " \
      "before they arrive. The maintained route covers about nine percent " \
      "of the intact volume.",
    hazards:
      "Off the inspected route the closed sections hold pressure in some " \
      "rooms and vacuum in others, with no passage where the surviving " \
      "plans show one. Salvage is prohibited along the maintenance route, " \
      "and beyond it the claim is unsettled."
  )

  prose <<~PROSE
    A fallen ring fragment on the outer Pell routes whose transmitting volume still has partial power. Once each week it sends #{ref :two_word_message, "the Two-Word Message"} through an intact southern antenna deck.

    #{encyclopedia_ref :ratters, "Ratter"} crews named the fragment for the held resonance tone inside its active corridors. The tone sits below ordinary hearing. #{encyclopedia_ref :resonant_tuner, "Tuners"} describe it as a voice waiting for another part to enter.
  PROSE
  prose <<~PROSE, section: :description, heading: "Inside"
    The Fragment is large enough that crews divide it into the long deck, the plate rooms, the cold galleries, and the southern antennae. Pale-green emergency lights remain active along the inspected route. Corridors outside it are dark.

    The interior stays at cold-storage temperature regardless of the Fragment's position in sunlight. Deck panels and walls carry the low tone. Non-Tuners often lower their voices without knowing why. A Tuner touching the wall feels the note continue beyond the mapped structure, including through bulkheads with no passage on the surviving plans.
  PROSE
  prose <<~PROSE, section: :operations, heading: "The Weekly Signal"
    #{embed :two_word_message, :description}
  PROSE
  prose <<~PROSE, section: :geography, heading: "Maintenance Route"
    Two flotillas share a quarterly walk-through. They replace lights, mark structural movement, and keep the clear route open to the southern deck. The arrangement began as a debt to the crew that found the signal and continued because nobody wants to discover its failure a week late.

    The walk-through covers about nine percent of the intact volume. Closed sections retain pressure in places and expose vacuum in others. Salvage is prohibited along the maintenance route. Beyond it, the claim remains unsettled and the Fragment has more unopened rooms than mapped ones.
  PROSE
  prose <<~PROSE, section: :significance, heading: "Relationship to Span Nine"
    The transmitter shares one behavior with #{ref :span_nine, "Span Nine"}: instruments have more trouble approaching it when the crew has already decided what the reading should mean. Pilots who treat the Fragment as an ordinary maintenance destination reach it reliably. Expeditions organized around proving a theory report diversions, contradictory ranges, and missed burns.

    The correspondence remains observational. The weekly signal continues whether anyone reaches the deck or not.
  PROSE

  gm_note :appears, "The transmitter fires on its own seven-day clock, so any visit that crosses the interval includes the exchange: the location request, the acknowledgement, and a closing sentence with two words changed since last week."
  gm_note :triggered_by, "Expeditions organized around proving a theory about the Fragment report diversions, contradictory ranges and missed burns on approach. Pilots treating it as an ordinary maintenance run reach the southern deck without incident."
  gm_note :complicates, "Salvage is barred along the maintenance route, and the route covers about nine percent of the intact volume. Everything worth taking lies in unmapped sections where the claim is unsettled and pressure alternates with vacuum room by room."
end

relate :rel_choir_fragment_located_in_shear, :located_in, :the_choir_fragment, :the_shear do
  prose "The Choir Fragment drifts along the outer Pell routes through #{ref :the_shear, "the Shear"}."
end
relate :rel_choir_fragment_resonates_span_nine, :resonates_with, :the_choir_fragment, :span_nine do
  prose "Its approach produces the same observer-dependent navigation failures recorded around #{ref :span_nine, "Span Nine"}."
end
