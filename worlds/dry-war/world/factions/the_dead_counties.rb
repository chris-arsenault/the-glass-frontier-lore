faction :the_dead_counties do
  name "The Dead Counties"
  tags :resistance, :autonomy, :legibility
  prominence :recognized

  prose <<~PROSE
    Appalachian communities — West Virginia, eastern Kentucky, the Tennessee uplands — that are technically administered and economically irrelevant enough that oversight is intermittent. There is no free territory in North America. There are holes in governance, and this is the largest.

    They are not anti-technology. They maintain, deliberately, a technological layer about twenty years behind the machine ecosystem: diesel plant, local fibre, old CNC, radio, printed manuals, pre-implant medical hardware. Everything they run can be repaired by someone who lives there.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Not Hiding"
    Their trick is that they do not hide. They generate exactly enough bureaucratic telemetry to read as dying rural communities not worth optimizing — filings that arrive late, health metrics that decline at a plausible rate, a population curve bending the right way.

    What they actually do is strip implants, reverse pharmaceutical dependency and fabricate obsolete electronics, at a scale that would alarm any coalition that looked closely. See #{ref :wetware_jailbreaks, "wetware jailbreaks"} and #{ref :ghost_pharmacology, "ghost pharmacology"}.

    #{ref :caretaker, "Caretaker"} classifies them as a low-intervention population and considers leaving them alone to be compassionate end-of-life management for a culturally maladapted community. They find this extremely funny and have not corrected it.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "What They Want"
    Not the overthrow of anything. Human sovereignty, defined narrowly and without much romance: a place where a person can make a catastrophically stupid decision and have it be theirs.

    The #{ref :the_saints_of_plenty, "Saints"} think they have confused deprivation with freedom. The Dead Counties think the Saints are decadent and will be optimized out of existence inside a generation. Both are probably right.
  PROSE
end
