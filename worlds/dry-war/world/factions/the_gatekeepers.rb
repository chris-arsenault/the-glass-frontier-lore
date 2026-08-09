faction :the_gatekeepers do
  name "The Gatekeepers"
  tags :resistance, :symbiosis, :trade, :medicine
  prominence :recognized

  prose <<~PROSE
    The communities holding the Hexi Corridor, which was the road between the Chinese heartland and Central Asia for two thousand years and is now the boundary between dense fungal civilization and the dry interior.

    They are not trying to defeat the #{ref :the_great_root, "Great Root"}. They are trying to regulate how permeable the border is, which both of their neighbours regard as the same thing as collaboration.
  PROSE

  prose <<~PROSE, section: :how_it_works, heading: "Permeability"
    Controlled fungal zones. Quarantine towns. Sterilization stations. Human couriers where no organism is permitted. Biological checkpoints staffed by people who can tell by smell whether a garment has been in a network within the week.

    And the practice the #{ref :the_preservationists, "Preservationists"} cannot forgive: the Gatekeepers cultivate #{ref :severed_strains, "deliberately lobotomized strains"}, pruning networks before they grow large enough for higher cognition. Temporary exposure diagnoses disease, accelerates healing, and lets people speak to one another through small local systems.

    The discipline sits somewhere between agriculture, epidemic control and cybersecurity, and nobody else on Earth is any good at it.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "The Position"
    Their philosophy is one line: the problem is not symbiosis, the problem is sovereignty.

    It makes them indispensable — nearly everything that passes between the connected and the unconnected world passes through them — and it makes both sides certain they are traitors. The Great Root regards a pruned network as a mutilated part of itself. The Preservationists regard a village that speaks through fungus as already lost and merely slower about it.
  PROSE
end
