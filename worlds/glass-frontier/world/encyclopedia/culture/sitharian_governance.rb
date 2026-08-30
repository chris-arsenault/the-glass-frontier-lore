encyclopedia :sitharian_governance do
  name "Sitharian Governance"
  summary "Sitharian Governance is the capital's system of elected ward authority, independent administration, public record, and reusable legal standards. Its skeleton is the ring's provincial civil service, kept alive through the Famine by clerks who ran a city while the government above them vanished."
  kind :culture
  subkind :governance
  status :complete
  topics :governance, :archives, :diplomacy, :"social-structure", :surface
  prevalence :common
  available_globally

  formal_register "Proceedings run in the stable legal language other settlements adopt wholesale, and a Sitharian hearing can be followed, form by form, by any clerk in the system who has read the standards"

  descriptive_identity(
    manner: "Sitharian officials cite the form before the merits and treat the habit as a " \
            "virtue: the counter clerk's first question is which record you are, and the " \
            "question is meant kindly, as directions are meant kindly."
  )

  prose <<~PROSE
    Sithari elects ward representatives and chooses an executive from the governing majority, but much of the city's continuity sits outside either office. Courts, utilities, schools, archives, and professional registries are maintained by a civil service that preserves work through changes of personnel and refuses unlawful instruction as a matter of published duty. A party governs the city; the city, as its officials say with varying degrees of humility, remains the city.

    The arrangement's ancestry is legible in its bones. Sithari was a provincial administration of the intact ring — its wards, registries, and hearing forms are the ring's civic pattern localized — and the Famine years made the pattern load-bearing: the government above the city vanished with the elves and the relays, and the clerks kept the courts sitting, the water running, and the records straight through the dark on the service's own discipline. The Rekindling constitution ratified what the emergency had proven, wrapping elected authority around a service that had governed without it, and the city's political culture still carries the memory as doctrine — the elected decide, the service continues, and each side recites the Famine as the reason the other must exist.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Wards, Forms, and the Standing Duties"
    The ward is the working unit, and ward life runs on standing duties of the settled, unglamorous kind: the water watch, the span rounds, the fire rota, each assessed on the households that benefit and each with its elected wardens, its inspection walks, and its ledger. Ward assemblies bargain exceptions before votes; the city assembly sets standards; and the boundary between the two is patrolled by both with a vigor visitors mistake for crisis.

    Sitharian law favors forms that another office can read and another settlement can adopt. Contracts, cargo classes, archive custody, professional records, and hearing procedure use stable language and leave a public trail, which makes the system dependable and gives trained officials power over every exception. A claimant with the right record moves across jurisdictions; a claimant whose case sits outside the form waits while everyone agrees, on the record, that the underlying claim is sound. The system's critics and its clerks describe this identically and disagree only about the tone.
  PROSE

  cue "A public counter displays the governing form, the office that owns it, the appeal route, and the record number of the last decision."
  cue "The ward's water warden walks the morning inspection with a ledger under one arm, and householders come out to stand beside their section of pipe as the walk passes."
  affordance "A party that can turn its evidence into an accepted record gains access to courts and offices far beyond Sithari, and the ward duty rosters give any resident a public, appealable statement of exactly what the city owes them and they it."
  pressure "An urgent case can remain stationary because every official agrees it matters and the record does not yet fit the form — and the exception's path runs through the same service whose discipline is the reason the forms are trusted."
  variation "Ward offices bargain over exceptions before assembly votes; system-wide bodies preserve the same legal language while disputing Sithari's assumptions."
  variation "The service's internal honors go to continuity — the Famine-era clerks are its saints, and a registrar's highest professional compliment remains 'the office did not notice the transition.'"
end
