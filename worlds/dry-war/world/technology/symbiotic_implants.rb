resource :symbiotic_implants do
  name "Symbiotic Implants"
  tags :medicine, :symbiosis, :biotech
  prominence :recognized

  prose <<~PROSE
    Biological rather than mechanical: engineered fungal structures grown through peripheral nerves, lymphatic tissue and vasculature. They provide sensory augmentation, immune regulation, communication, and modulation of mood and impulse.

    The medicine they enable is the reason ordinary integration is not resented. Tissue repair, organ regeneration, cancer suppression and the management of ageing damage are all far beyond what the machine civilization achieves by replacement, and a #{ref :the_joined, "Joined"} citizen knows it.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "Grown, Not Fitted"
    An implant is not placed. A seed structure is introduced and then grown along the tissue it will serve, over a season, guided by compounds delivered through #{ref :living_textiles, "the garment"} — so the fitting is a course of treatment and the article is specific to one body by the time it works.

    Removal is therefore a different problem here than across the line. A #{ref :neural_implants, "coalition implant"} is a device that can be taken out at a cost; a symbiotic implant has no boundary to cut along, and the #{ref :the_dead_counties, "Dead Counties"} surgical tradition does not extend to them. The #{ref :the_gatekeepers, "Gatekeepers"} instead grow implants from #{ref :severed_strains, "severed strains"}. They provide poorer treatment but cannot reach a distant network.
  PROSE

  prose <<~PROSE, section: :limits, heading: "What A Reading Is Worth"
    An implant reports, and the reporting is not separable from the medicine — the compound that suppresses a tumour is dosed off the same signalling that tells the network a district is unwell. A clinic sends one figure for a ward or settlement into the network. It tells a #{ref :the_joined, "Joined"} patient their own reading in the room and enters it nowhere.

    #{ref :the_preservationists, "Preservationist"} households that avoid implants and keep their medicine on paper are the only population in the fungal civilization with individual health records going back a generation. #{ref :the_garden_courts, "The Garden Courts"} have twice asked the Great Root's clinics to compare those records with network medicine. The clinics rejected both requests because the paper uses different diagnoses. The Courts answer that a comparison is useful only if the records differ.
  PROSE
end
