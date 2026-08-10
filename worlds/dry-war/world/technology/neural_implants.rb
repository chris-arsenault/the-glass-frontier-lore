resource :neural_implants do
  name "Neural Implants"
  subkind :device
  tags :medicine, :surveillance, :dependency, :identity
  prominence :mythic
  function "Identifies and monitors a resident, carries communication, alters perception and delivers medication through the nervous system."

  prose <<~PROSE
    Neural implants connect nearly every coalition resident to their advocate and local services. They identify the wearer, monitor health and location, carry speech and images, alter perception and release medication. Newer models also stimulate the brain directly to damp panic, sharpen attention or interrupt pain.

    Removal cuts through healed nerves and ends medication on which the body may depend. The #{ref :the_dead_counties, "Dead Counties"} train surgeons for the work. The #{ref :the_choir, "Choir"} leaves the device in place and feeds it #{ref :implant_decoys, "false readings"} instead.
  PROSE
end
