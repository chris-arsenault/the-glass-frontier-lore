encyclopedia :rind do
  name "Rind"
  summary "Rinds are large Deep Shear animals that follow sustained resonance gradients. Pale shells enclose their bodies, and trailing filaments can disrupt tuned ringglass on contact."
  kind :lifeform
  subkind :animal
  status :draft
  topics :ecology, :resonance, :orbital, :danger, :mystery
  prevalence :uncommon
  appears_when all: { place: [:debris_field] }

  descriptive_identity(
    appearance: "Roughly the size of a small courier kite, most of the body enclosed in an opaque pale-grey carapace whose irregular crystal inclusions catch bands of light for Tuners and look dull to everyone else. Dozens of hair-fine filaments trail ten to fifteen meters behind the shell.",
    behavior: "A rind advances along a sustained resonance gradient at walking speed or slower, holds position while the source stays steady, and circles outward hunting the line when the source weakens. Deep-runners redirect one with a counter-tone placed beyond the route they want it to take.",
    threat: "A filament brushing active ringglass sets up a sympathetic response through both materials. The animal is unharmed, the array mount can remain out of calibration for hours, and striking the shell scatters the filaments into more contacts."
  )

  prose <<~PROSE
    Rinds are large animals of the #{ref :deep_shear, "Deep Shear"} that follow sustained resonance gradients. Deep-runners named them for the pale shell enclosing most of the body.

    They move slowly past ships and people, holding course toward a stable signal. Their trailing filaments make that scale dangerous: a rind seeks the same signals that hold tuned structures in calibration, and contact can disrupt active ringglass.
  PROSE
  prose <<~PROSE, section: :description, heading: "Body"
    A rind is roughly the size of a small courier kite. An opaque pale-grey carapace encloses most of the body. Irregular crystal inclusions catch bands of light visible to #{encyclopedia_ref :tuners, "Tuners"} and appear dull to everyone else.

    Dozens of hair-fine filaments trail ten to fifteen meters behind the shell. They drift independently, producing a harmonic at the edge of hearing. A filament touching active ringglass sets up a sympathetic response through both materials. The animal survives the contact while the array mount can remain out of calibration for hours.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Gradient Following"
    A rind advances along a resonance gradient at walking speed or slower. It can hold position for days when the source remains steady. If the source weakens, it circles outward until it finds the line again.

    Deep-runners redirect them with a counter-tone placed beyond the desired route. The work takes patience and a clear field. Striking the shell scatters the filaments and creates more contacts, so experienced crews keep weapons cold unless the animal is already inside a structure.
  PROSE
end
