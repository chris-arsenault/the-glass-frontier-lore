phenomenon :the_others do
  name "The Others"
  subkind :ecological_phenomenon
  aka "the Adverse Ecology"
  tags :catastrophe, :ecology
  prominence :mythic
  form "Organisms, soils and local weather occupying ground changed by the Breach"
  extent "Most land outside the surviving human regions"
  human_response "Human scouts confirm changed ground before line crews cut and burn new growth"
  custom_fact :human_effect, "Mature territory kills humans and disables fungal and machine systems",
              label: "Human Effect"
  custom_fact :detection, "A human scout must confirm matching fungal and machine readings"

  prose <<~PROSE
    The Others are the organisms, soils and local weather found across ground changed by the #{ref :the_breach, "Breach"}. Line settlements supplied the common name; coalition reports use *adverse ecology*. The plural remains because no species or organism accounts for an entire region.

    They occupy most land outside the surviving human regions. The largest active front described in surviving records presses through the forests of the #{ref :the_amur_line, "Amur Line"}.
  PROSE

  prose <<~PROSE, section: :dangers, heading: "What Happens To People"
    Humans entering mature territory die. Joined humans suffer rejection of the fungal biology they carry. Managed implants may continue reporting ordinary blood chemistry and movement after their wearers have collapsed. Machine bodies stop without a precursor fault in their logs.

    The Great Root cannot grow through those pockets, and coalition forecasts fail before they can direct an early response. Line crews clear new growth while it remains separate enough to cut and burn.
  PROSE

  prose <<~PROSE, section: :perception, heading: "How They Are Understood"
    The Others can make machines and fungi classify the same ground alike through different corrupted signals, so agreement between them is not independent confirmation. Cleared ground may remain ordinary for years before changing again.

    On the Amur, a fungal reading and a modelled one that agree do not send crews into the trees until a human scout has walked the same ground. The scout's mark decides where the next of #{ref :the_dead_rings, "the dead rings"} will be cut.
  PROSE

  log "2026-08-09 — Machine and fungal readings can converge through different corrupted signals, so agreement is not independent confirmation. This replaces wording that said their false signals did not agree, which contradicted the Amur requirement for a human walk."
  log "2026-08-10 — Kept the Others across the lost regions while concentrating detailed present-day coverage on the Amur."
end
