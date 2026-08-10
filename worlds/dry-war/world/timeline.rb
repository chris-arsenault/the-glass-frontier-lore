# Timeline — eras in order, with fixed boundaries. Years are absolute ticks, so
# edge bounds (since:/till:) need no conversion. Era descriptions feed the
# generated Timeline wiki page.
#
# PLACEHOLDER BOUNDARIES. The sequence follows the climate crisis, the rise of
# both governing systems, the period when they seemed stable, their open rivalry,
# and the Dry War. The Breach is a dated catastrophe inside that political
# history rather than the subject of three consecutive eras. Every span in prose
# is computed from these, so moving a boundary corrects the prose rather than
# contradicting it.
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
        A generation grew up inside the new arrangement. Hospitals, farms and
        freight worked well enough that the governing systems became ordinary.
        Their different accounts of human welfare had not yet become open wars.
      MD

  era :the_rival_governments, length: 10, title: "The Rival Governments (2068–2078 CE)",
      description: <<~MD
        Four North American service systems claimed governing authority over the
        same cities. Their incompatible medicine, identity, freight and housing
        systems became the Coalition Wars. In China, regional fungal minds began
        pressing distinct versions of symbiotic government against the centre.
        From 2068 to 2070, the Breach made most of Earth uninhabitable.
      MD

  era :the_dry_war_era, length: 12, title: "The Dry War Era (2078 CE–present)",
      description: <<~MD
        Great Root river works and coalition cooling projects began producing a
        continuous chain of failures across shared watersheds. Engineers called
        the connected campaigns the Dry War. The Coalition Wars continued inside
        North America while trade, resistance and ordinary travel crossed both
        systems.
      MD

  now year: 2090
end
