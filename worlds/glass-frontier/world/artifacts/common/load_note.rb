artifact :load_note do
  name "The Load Note"
  summary "The Load Note is a Clarisant kinetic horn used to train Tuners in holding moving cargo and damaged frames. Its broad working bell and scarred deck brace preserve the response marks of several rescue commissions."
  subkind :instrument
  type_of :kinetic_horn
  technology :resonant_instruments
  function "Applies directed kinetic force while its player holds a matched tone"
  status :complete
  tags :resonance, :music, :"kinetic-freq", :training, :transport
  prominence :recognized

  descriptive_identity(
    appearance: "A folded alloy horn around a rigid center bar, with a broad working bell, a small rear bell, and a " \
                "deck brace scored by Clarisant response marks.",
    handling: "The player begins below the target response and climbs until the harness tightens. A second Tuner " \
              "watches the load while the note holds.",
    risks: "A divided beat in the rear bell means several objects are answering. Playing past numb lips or a " \
           "vibrating harness directs the returning force into the brace and player."
  )

  prose <<~PROSE
    Clarisant keeps *The Load Note* for training, rescue commissions, and instrument certification. Tuners learn to steady a damaged frame or suspended load against its deck brace before taking the horn into a working vessel.

    The horn descends from the free-tuned construction demonstrated by #{ref :open_reed, "the Open Reed"}. Its collars narrow the working field for metal, stone, fluid, or a vessel frame, while the rear bell exposes tones the body cannot hold safely.
  PROSE

  gm_note :appears, "Clarisant lends the Load Note only with a player it has certified against the same brace marks."
  gm_note :triggered_by, "A second beat in the rear bell means more than one object is answering and the player must stop before the horn chooses between them."
  gm_note :complicates, "The note lasts only while the player holds it, fixing one Tuner to the horn whenever the load must remain controlled."
end

relate :rel_kinetic_horn_derived_resonant_instruments, :derived_from, :load_note, :open_reed do
  prose "The Load Note descends from the Open Reed's free-tuned construction."
end
relate :rel_clarisant_possesses_kinetic_horns, :possesses, :clarisant, :load_note do
  prose "Clarisant keeps the Load Note for training and rescue commissions."
end
