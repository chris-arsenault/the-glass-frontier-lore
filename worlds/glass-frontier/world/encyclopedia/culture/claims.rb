encyclopedia :claims do
  name "Claims"
  summary "Claims grant bounded use, capacity, components, or priority to crews and settlements that make dangerous remnants usable again."
  kind :culture
  subkind :governance
  status :complete
  topics :rebuilding, :salvage, :governance, :trade, :"ring-era"
  prevalence :common
  appears_when any: { place: [:debris_field, :yard] }

  prose <<~PROSE
    A dead conduit, dangerous hull, or buried ring system may have an old owner and a current neighbor while remaining unusable. Reconstruction claims begin with the work that changes that condition. A crew that stabilizes the hull or settlements that close the signal path gain the first bounded use of what they recovered. Registries acknowledge prior title and pay the recorded recovery before dividing later control.

    Claims specify what the restoring party receives: first use, a named component, a share of capacity, or priority for a limited period. Open warrants invite any equipped crew when delay threatens everyone nearby. Joint restorations divide standing among the places required to complete the connection. Disputes turn on what counted as usable, which contribution closed the work, and whether the reward has grown beyond the recovery that justified it.
  PROSE

  cue "A recovered system displays the contribution marks and bounded shares of the crews or settlements that returned it to use."
  affordance "Measurements, stabilization records, contribution marks, and the working connection establish a recoverer's bounded share alongside prior title."
  variation "Emergency hull work pays in components; restored infrastructure more often grants capacity, access, or first use."
  cue "The open warrant posts at the exchange — any equipped crew, the hazard named, the bounded reward specified — and three rigs that were rivals yesterday file a joint restoration plan by the evening board."
  variation "Old-title parties keep standing through the restoration and negotiate from it — the settled compromise in most registries is title acknowledged, recovery paid first, and the working connection's operator decided by who can keep it working."
end
