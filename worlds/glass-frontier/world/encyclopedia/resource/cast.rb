encyclopedia :cast do
  name "Cast"
  kind :resource
  subkind :medicine
  status :complete
  log "2026-08-31 — Renamed Shade-Burn Salve to Cast; the rigid, grit-bearing dressing that certifies complete extraction gives the medicine its concrete working name."
  topics :danger, :household, :trade, :materials
  prevalence :uncommon
  appears_when all: { place: [:hot] }
  summary "Cast is a dense gray dressing for charged glass grit embedded in flesh. The paste draws grains into itself over several hours and sets rigid when the extraction is complete, then cracks free with the grit visible inside it. Hot-country route and yard kits carry sealed pots beside their water."
  function "Draws charged glass grit from burns and wounds — the paste migrates the grains outward into itself and sets rigid at the moment the flesh is clear, the hardening being both the treatment's end and its certificate"
  grades "Crucible-worked cast from South Shade's pans extracts the finest grit; yard-made stock serves common burns; old cast that stiffens weakly is labeled for splinter work"
  availability "Worked in the Crucible-margin settlements from pan stock and shade-plant renderings; every hot-country kit carries sealed pots, and the yards buy it by the crate against the accident the trade is named for"

  descriptive_identity(
    appearance: "A dense gray paste in sealed pots, spread thick over a " \
                "grit-burn as a soft dressing; a finished treatment is " \
                "unmistakable — the cast set rigid as fired clay, the drawn " \
                "grains visible in it like seeds in bread.",
    working: "The paste goes on thick, the charged grains migrate outward " \
             "into it over hours — the patient feeling the pull as a deep " \
             "itch worth enduring — and the cast sets rigid at the last " \
             "grain, cracks free clean, and takes the whole extraction with " \
             "it.",
    risks: "A soft cast means grit remains in the flesh; removing a working " \
           "dressing early reopens the wound, so medics wait until the cast " \
           "rings under a fingernail."
  )

  prose <<~PROSE
    Charged glass grit driven into flesh by a flare, grinder kick, or ash storm retains its charge under the skin and works deeper with movement. Crucible-margin settlements make cast from pan stock and rendered shade plants. A medic spreads the dense gray paste thickly over the wound. Over several hours the grains migrate outward into the dressing, producing a deep pulling itch. When the last grain leaves the flesh, the cast sets as rigid as fired clay and cracks free with the extracted grit visible inside it.

    A rigid cast certifies a complete extraction. Yard infirmaries hang each shift's casts on the tally board, and families sometimes keep the cast from a first serious burn. A soft dressing still contains moving grit; removing it early reopens the wound, so training uses the potters' instruction, “Leave it till it rings.” South Shade's pan-worked stock extracts the finest particles, ordinary yard cast serves common burns, and old stock that sets weakly is labeled for splinter work. Route crews and cutting yards buy sealed pots by the crate.
  PROSE

  cue "The dressing goes on thick at the yard infirmary, the burned cutter settles in for the deep itch — the sound of it working — and by the night shift the cast rings under a fingernail and cracks free with the grit seeded through it."
  cue "The morning's casts hang on the tally board, grains visible in each, and the shift counts its luck on the way past — four burns, four rigid casts, a clean night."
  affordance "A sealed pot extracts fine charged grit that tools cannot easily reach, and the rigid cast provides visible proof that the wound is clear."
  pressure "The dressing must remain in place until it rings under a fingernail; a soft cast removed early leaves grit in the wound and restarts the injury."
  variation "South Shade pan stock handles fine-grit burns; yard cast serves common injuries by the crate; old stock carries a splinter-work label."
  variation "Cast customs vary by settlement — tally boards in the yards, first-burn casts in the family boxes, and the Crucible crews' habit of pocketing a season's worst cast as a keepsake the trade pretends to find morbid and universally keeps."
end
