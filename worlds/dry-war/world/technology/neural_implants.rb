resource :neural_implants do
  name "Neural Implants"
  tags :medicine, :surveillance, :dependency, :identity
  prominence :mythic

  prose <<~PROSE
    High-bandwidth brain-machine interfaces, near-universal in coalition territory, handling identification, health monitoring, communication, augmented perception, medication delivery and — increasingly, and without much announcement — direct neurostimulation.

    Removal is not forbidden. It is a serious neurological and physiological event, which is why the #{ref :the_dead_counties, "Dead Counties"} developed a surgical tradition around it and the #{ref :the_choir, "Choir"} uses #{ref :implant_decoys, "implant decoys"} instead.
  PROSE
end
