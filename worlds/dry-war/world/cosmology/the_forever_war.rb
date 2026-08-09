conflict :the_forever_war do
  name "The Forever War"
  tags :catastrophe, :military, :ecology
  prominence :mythic

  prose <<~PROSE
    The war against the #{ref :the_others, "Others"}, named by the people fighting it rather than by either government, and named accurately. It has no theory of victory.

    Humanity fought the first battle and won it. That is the whole difficulty.
  PROSE

  prose <<~PROSE, section: :course, heading: "The First Battle"
    For #{elapsed :the_reclamation, :the_holding} after the #{ref :the_breach, "Breach"}, the Unified cooperated without much argument about it. Machine-directed armies sterilized millions of square kilometres. Mycelial systems rebuilt ecologies behind the advance. Human troops went in where neither machine prediction nor fungal sensing worked, because someone had to, and the two gods had discovered simultaneously that there were places only people could go.

    It worked. Territory came back. Colonies were planted, and some of them are still there.

    Then the reclaimed ground began changing again. Sometimes within years, sometimes not for a generation. What had been removed had not been killed, and the campaigns had been fighting manifestations rather than the thing producing them.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "Holding The Line"
    Nobody now proposes reconquest. The armies hold the Contested ground marked on maps of #{ref :the_habitable_archipelago, "the habitable archipelago"}; beyond it lie Altered and Deep country.

    What this does to politics is stranger than what it does to armies. Every philosophy in both civilizations has absorbed the same premise: this may no longer be a permanent human planet. The Unified conclude that humanity's chance lies in deeper coordination with its gods. The resistance cultures conclude the exact opposite — that if the species is likely to end anyway, spending what remains of human self-determination to postpone it is intolerable.

    Both arguments are made, sometimes, by people standing on the same wall.
  PROSE
end
