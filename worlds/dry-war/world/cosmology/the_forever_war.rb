conflict :the_forever_war do
  name "The Forever War"
  subkind :war
  tags :catastrophe, :military, :ecology
  prominence :mythic
  fact :methods, "Sterilizes Contested ground, rebuilds behind the advance and holds each position until the surrounding ecology overtakes it"

  prose <<~PROSE
    Line crews named the continuing defence against the #{ref :the_others, "Others"}. Armies cut back Contested ground, hold the walls and abandon each position when the surrounding ecology can no longer be killed.

    The first campaigns recovered millions of square kilometres. Years later, some of that ground began changing again.
  PROSE

  prose <<~PROSE, section: :course, heading: "The First Battle"
    For #{elapsed :the_reclamation, :the_holding} after the #{ref :the_breach, "Breach"}, machine and fungal armies shared fronts. Machine-directed forces sterilized millions of square kilometres. Mycelial growth rebuilt settlements behind the advance. Human troops crossed the ground where machine prediction and fungal sensing both failed.

    Territory came back. Colonies were planted, and some of them are still there.

    Then the reclaimed ground began changing again. Sometimes within years, sometimes not for a generation. What had been removed had not been killed, and the campaigns had been fighting manifestations rather than the thing producing them.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "Holding The Line"
    Current armies defend the Contested ground marked on maps of #{ref :the_habitable_archipelago, "the habitable archipelago"}; beyond it lie Altered and Deep country.

    Every major faction now begins from the possibility that this will not remain a human planet. The Unified seek deeper coordination with their gods. Resistance cultures answer that a likely extinction does not justify spending the self-determination people have left.

  PROSE
end
