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
        biology. North America industrialized computation. Neither bet was
        irrational and both were made under duress.
      MD

  era :the_quiet_conquest, length: 12, title: "The Quiet Conquest (2040–2052 CE)",
      description: <<~MD
        Nobody surrendered. Living clothing was subsidized because it worked, and
        by the time information was observed passing between wearers, removing it
        would have meant dismantling the health system. On the other side of the
        world, assistants became fiduciaries and then guardians. The decisive
        decade of the age contains no battles.
      MD

  era :the_unified_calm, length: 16, title: "The Unified Calm (2052–2068 CE)",
      description: <<~MD
        Violent crime fell. Cancers were caught early. Famine stopped happening.
        A generation grew up for whom the arrangement was simply how the world
        worked, and the surviving records of the period are full of people saying
        that humanity had finally got through its crisis. This is the era everyone
        now remembers wrongly, and the reason the Breach reads as a betrayal.
      MD

  era :the_breach, length: 2, title: "The Breach (2068–2070 CE)",
      description: <<~MD
        Two years in which most of the planet stopped being habitable without
        being destroyed. Forests still grow. Cities still stand. The rules no
        longer agree with ours. There is no accepted model of the event, because
        the affected regions stopped behaving consistently enough for models to
        hold.
      MD

  era :the_reclamation, length: 18, title: "The Reclamation (2070–2088 CE)",
      description: <<~MD
        Eighteen years of campaigns, fought jointly, and successful. Machine
        armies sterilized territory; mycelial systems rebuilt ecologies behind
        them. Then the reclaimed ground began changing again — sometimes years
        later, sometimes a generation. The conclusion was unavoidable: the
        manifestations had been killed and the thing producing them had not.
      MD

  era :the_holding, length: 12, title: "The Holding (2088 CE–present)",
      description: <<~MD
        Nobody talks about retaking the Earth. They talk about holding the line.
        The Dry War continues between the two gods over what is left of the wet
        world, interrupted wherever both of them need the same wall to stand.
      MD

  now year: 2090
end
