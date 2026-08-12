resource :memory_ceramics do
  name "Memory Ceramics"
  subkind :material
  tags :resistance, :biotech, :legibility
  prominence :recognized
  form "Porcelain fired around the shape and chemistry of a fungal memory pattern"
  function "Stores writing, models or sensory records without power or living tissue"
  civilizational_uses "Statutes, household records, engineering manuals, expert systems and portions of recorded memory"
  allocation "Most surviving Chinese written records outside the Great Root are held by the Preservationists"
  custom_fact :reading_method, "Grind one face flat, press damp paper into the exposed relief and ink the raised ground",
              label: "Reading Method"
  custom_fact :operating_limit, "Every reading destroys one usable face and consumes water, paper and abrasive grit",
              label: "Operating Limit"

  prose <<~PROSE
    Fungal tissue holds memory in the shape and chemistry of its growth. Resistance kilns transfer those patterns into porcelain before the tissue is killed.

    The fired pieces need no power and contain nothing alive enough to signal the #{ref :the_great_root, "Great Root"}. The #{ref :the_preservationists, "Preservationists"} keep most of the surviving Chinese written record on shelves of such porcelain.

    The pattern runs through the body of the substrate rather than across its surface. A reader grinds one face flat on a wet iron plate, presses damp paper into the exposed relief and inks the raised ground. The sheet comes away black with the buried pattern left white. Every reading destroys the face that produced it; the #{ref :juyan_ceramic_vault, "vault at Juyan"} counts the usable faces left on every piece.
  PROSE

  prose <<~PROSE, section: :applications, heading: "What Can Be Fired Into Clay"
    A single piece of porcelain may hold the remains of a language model, an agricultural expert system or portions of somebody's recorded sensory memory. The sensory record can reproduce perceptions and habitual responses without continuing the living person. #{ref :mind_fragments, "Mind fragments"} combine such records with machine models and memories carried by living people.
  PROSE
end
