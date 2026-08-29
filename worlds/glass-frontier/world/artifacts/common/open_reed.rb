artifact :open_reed do
  name "The Open Reed"
  summary "The Open Reed is an early free-tuned resonant instrument preserved by Tuners as a working reference. Its adjustable alloy reed demonstrated the continuous control later divided between kinetic horns and three-reed compasses."
  subkind :instrument
  type_of :resonant_instruments
  function "Produces an adjustable resonance tone through pressure applied to one free alloy reed"
  status :complete
  tags :resonance, :music
  prominence :recognized

  descriptive_identity(
    appearance: "A long alloy reed over a narrow tuned cavity, mounted in a plain frame whose pressure bar can move " \
                "continuously rather than settling into fixed stops.",
    handling: "A player changes pressure and position while holding one continuous tone. Tuners use its unmarked " \
              "range to demonstrate control without a preset band.",
    risks: "The instrument channels every instability the player produces. Nothing in its frame fixes a safe output " \
           "or prevents the tone from crossing into another band."
  )

  prose <<~PROSE
    *The Open Reed* is a working reference for resonance produced through physical vibration rather than a fixed ringglass array. Its pressure bar moves continuously across the reed. Breath and hand pressure determine the frequency, and the frame supplies no preset band to recover when the player loses it.

    Tuners preserve the instrument because its construction separates continuous control from the later devices built around it. The #{ref :load_note, "Load Note"} directs one part of that range into kinetic work. #{ref :shared_reference, "The Shared Reference"} reduces another part to stable comparison reeds.
  PROSE

  gm_note :appears, "The Open Reed enters instruction when a fixed array cannot produce the changing tone a lesson requires."
  gm_note :triggered_by, "A player can cross bands without changing instruments, but the Open Reed offers no stop or mark that will bring them back."
  gm_note :complicates, "Everyone in the room hears the work for as long as the tone holds, including the moments when the player loses control."
end
