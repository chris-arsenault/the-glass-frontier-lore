resource :symbiotic_implants do
  name "Symbiotic Implants"
  tags :medicine, :symbiosis, :biotech
  prominence :recognized

  prose <<~PROSE
    Symbiotic implants are fungal structures grown through peripheral nerves, lymphatic tissue and blood vessels. They sharpen senses, regulate immunity, carry messages and alter mood or impulse.

    They also repair tissue, regrow damaged organs, suppress cancers and slow damage from ageing. A #{ref :the_joined, "Joined"} citizen receives that care throughout ordinary life.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "Grown, Not Fitted"
    A clinician introduces a seed structure and grows it along the tissue it will serve over a season. Compounds delivered through #{ref :living_textiles, "the garment"} guide the growth until it fits one body and no other.

    The mature growth has no boundary a surgeon can cut along. The #{ref :the_dead_counties, "Dead Counties"} can remove a #{ref :neural_implants, "coalition device"}, but not fungus woven through blood vessels and nerves. The #{ref :the_gatekeepers, "Gatekeepers"} instead grow implants from #{ref :severed_strains, "severed strains"}. They provide poorer treatment but cannot reach a distant network.
  PROSE

  prose <<~PROSE, section: :limits, heading: "What A Reading Is Worth"
    The same signals that tell an implant how much tumour-suppressing compound to release tell the network that a district is unwell. A clinic sends one figure for a ward or settlement into the network. It tells a #{ref :the_joined, "Joined"} patient their own reading in the room and enters it nowhere.

    #{ref :the_preservationists, "Preservationist"} households that avoid implants and keep their medicine on paper are the only population in the fungal civilization with individual health records going back a generation. #{ref :the_garden_courts, "The Garden Courts"} have twice asked the Great Root's clinics to compare those records with network medicine. The clinics use different diagnoses and have not combined the two bodies of evidence.
  PROSE
end
