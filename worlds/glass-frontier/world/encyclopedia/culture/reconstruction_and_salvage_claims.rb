encyclopedia :reconstruction_and_salvage_claims do
  name "Reconstruction and Salvage Claims"
  summary "Reconstruction and Salvage Claims is the body of law that grants temporary use or recovery rights to crews and settlements that make dangerous remnants usable again."
  kind :culture
  subkind :governance
  status :draft
  topics :rebuilding, :salvage, :governance, :trade, :"ring-era"
  prevalence :common
  appears_when any: { place: [:debris_field, :yard] }

  prose <<~PROSE
    A dead conduit, dangerous hull, or buried ring system may have an old owner, a current neighbor, and no party willing to make it usable. Reconstruction claims begin with the work that changes that condition. A crew that stabilizes the hull or settlements that close the signal path gain the first bounded use of what they recovered. Prior title remains relevant, but it does not erase the cost and danger of restoration.

    Claims specify what the restoring party receives: first use, a named component, a share of capacity, or priority for a limited period. Open warrants invite any equipped crew when delay threatens everyone nearby. Joint restorations divide standing among the places required to complete the connection. Disputes turn on what counted as usable, which contribution closed the work, and whether the reward has grown beyond the recovery that justified it.
  PROSE

  cue "A recovered system displays the contribution marks and bounded shares of the crews or settlements that returned it to use."
  affordance "A party can establish standing through measurements, stabilization records, and the working connection rather than an older paper title alone."
  pressure "Once the recovery proves valuable, every contributor has a reason to redefine assistance as the act that completed it."
  variation "Emergency hull work pays in components; restored infrastructure more often grants capacity, access, or first use."
end
