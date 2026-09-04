encyclopedia :marrow do
  name "Marrow"
  kind :resource
  subkind :medicine
  status :complete
  topics :"outer-system", :danger, :trade, :household
  prevalence :uncommon
  appears_when all: { place: [:cold, :road] }
  summary "Marrow is a dense, bitter route medicine brewed from storage roots grown on the outer runs. A warm dose suppresses resonance fever and keeps a patient conscious through one Lithren, Vastine, Pelhari, or Vitrael route leg."
  function "Damps the body's coupling to the resonance bands, slowing resonance fever long enough for travel to an infirmary"
  grades "First-cut root brews route grade for a full leg; second growth brews settlement grade for early fevers and children's doses; exhausted root brews the weak comfort grade"
  availability "Cut from hereditary bog-terrace strips, dried in wall stacks, and brewed along the cold routes; outer-run medical kits carry sealed doses, and waystations keep a warm crock"

  descriptive_identity(
    appearance: "A dense, near-black draught with a bitter mineral finish, " \
                "carried in small sealed doses stamped with the cutting " \
                "family's mark and the root's strip and season.",
    working: "The patient drinks a warm dose at the fever's first grade and " \
             "repeats it on the route schedule. Band coupling falls within " \
             "the hour, preserving clear thought and controlled movement for " \
             "one route leg.",
    risks: "The fever resumes when the dose wears off, and treatment still " \
           "requires an infirmary. Damping also mutes band perception, so route " \
           "law assigns a dosed traveler passenger status until it clears."
  )

  prose <<~PROSE
    Resonance fever begins when a traveler's coupling to the local bands rises beyond the body's ability to settle it. The fever rises with the coupling and progresses into delirium. The treatments that break it are kept in settlement infirmaries, often several cold route legs away.

    Marrow damps that coupling within an hour. A patient who drinks it warm at the first fever grade remains conscious and able to travel for one route leg. The fever resumes as the dose wears off, so kit cards set the next dose by the route schedule and captains count the sealed doses against the remaining distance. Damping also mutes the patient's perception of band weather. Route law assigns a dosed traveler passenger status until the effect clears, removing them from piloting, reading, and watch duties.

    Marrow-root is the dense storage root of cold bog plants grown along the #{ref :vastine, "Vastine"} and #{ref :lithren, "Lithren"} runs. Families cut hereditary terrace strips on a seasonal rotation with narrow marrow-spades, then dry the root in open wall stacks during the short bright weeks. Strip law reserves each family's first cutting for household kits; surplus enters trade. First-cut root produces route grade, second growth produces settlement grade, and exhausted root is sold as comfort grade.

    Dose seals carry the cutting family's mark, strip, and season. Waystations keep a warm crock for immediate use, while outer-run crews carry sealed doses in their medical kits. Empty seals return through the route houses and are saved by the cutting families as a record of where their crop was used.
  PROSE

  cue "At the first fever grade, the waystation pours a warm near-black dose and the route captain reassigns the patient from reading and watch duty to passenger status."
  cue "A cutting family works its marked bog strip with narrow marrow-spades while root dries in wall stacks and returned dose seals hang beside the door."
  affordance "One sealed route-grade dose preserves consciousness and controlled movement for a route leg, giving a crew time to carry the patient to an infirmary."
  pressure "The fever resumes when a dose wears off, so a long crossing requires enough seals for every remaining leg while passenger status removes the patient from route work."
  variation "Route grade comes from first-cut root; settlement grade serves early fevers and children; waystations also stock the weak comfort grade."
  variation "Family, strip, and season marks affect price because assay houses measure stronger doses from the older cutting strips; marriages that join strip rights alter the local trade."
end
