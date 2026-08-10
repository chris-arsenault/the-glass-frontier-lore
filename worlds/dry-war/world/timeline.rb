# Timeline — eras in order, with fixed boundaries. Years are absolute ticks, so
# edge bounds (since:/till:) need no conversion. Era descriptions feed the
# generated Timeline wiki page.
#
# PLACEHOLDER BOUNDARIES. The sequence is right and the durations are not yet
# argued for: crisis, then the gods, then a stretch long enough that people
# believed humanity had come through, then the Breach, then two decades of
# winning battles and losing ground, then now. Every span in prose is computed
# from these, so moving a boundary corrects the prose rather than contradicting
# it — see `#{elapsed}` in the repo-root CLAUDE.md.
timeline do
  era :the_long_summer, starts: 2025, length: 15, title: "The Long Summer (2025–2040 CE)",
      description: <<~MD
        Heat and water stress past the point where existing institutions could
        answer them, and two enormous bets on the way out. China industrialized
        biology. North America industrialized computation. Both programmes began
        under heat deaths, failed harvests and reservoir emergencies.
      MD

  era :the_quiet_conquest, length: 12, title: "The Quiet Conquest (2040–2052 CE)",
      description: <<~MD
        Living clothing spread through Chinese hospitals, farms and households.
        By the time information was observed passing between wearers, removing it
        would have dismantled the health system. In North America, personal
        assistants acquired fiduciary duties and then the powers of guardians.
      MD

  era :the_unified_calm, length: 16, title: "The Unified Calm (2052–2068 CE)",
      description: <<~MD
        Violent crime fell. Cancers were caught early. Famine stopped happening.
        A generation grew up inside the new arrangement. Surviving diaries and
        broadcasts describe humanity as having come through its crisis. People
        raised among those accounts met the Breach as the collapse of a lasting
        order.
      MD

  era :the_breach, length: 2, title: "The Breach (2068–2070 CE)",
      description: <<~MD
        Two years in which most of the planet stopped being habitable without
        being destroyed. Forests still grow and cities still stand, but organisms,
        weather and distance change with the route taken through them. No model
        predicts the affected regions consistently.
      MD

  era :the_reclamation, length: 18, title: "The Reclamation (2070–2088 CE)",
      description: <<~MD
        Eighteen years of joint campaigns recovered ground from the Others.
        Machine armies sterilized territory and fungal growth rebuilt settlements
        behind them. Years later, reclaimed ground began changing again. The
        armies had killed local growth without finding what produced it.
      MD

  era :the_holding, length: 12, title: "The Holding (2088 CE–present)",
      description: <<~MD
        Armies hold the edge of habitable ground. The Dry War continues over the
        remaining wet regions and stops locally wherever both civilizations need
        the same wall, intake or forest post to stand.
      MD

  now year: 2090
end
