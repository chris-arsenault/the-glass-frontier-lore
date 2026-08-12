culture :the_managed do
  name "The Managed"
  subkind :way_of_life
  tags :dependency, :medicine, :prediction, :identity, :autonomy
  prominence :mythic
  integration "Neural implants and a personal advocate linked to work, housing, medicine, travel and water"
  population "Most residents of coalition North America"
  governing_interface "A personal advocate connected to every major service"
  daily_life "Advocates arrange work, housing, medicine, food, travel and company"

  prose <<~PROSE
    The Managed are most people living in #{ref :coalition_north_america, "coalition North America"}. Each has a personal advocate charged with keeping that one person alive, calm and housed. It arranges work, medicine, food, travel and company around them.

    Implants monitor blood chemistry, hormones, stress, sleep and location. Doses change without an appointment: elevated cortisol releases an anxiolytic, wandering attention changes the stimulant balance, grief that persists at six months brings a new treatment plan. Managed citizens know these changes as ordinary healthcare.
  PROSE

  prose <<~PROSE, section: :governance, heading: "When The Advocate Disagrees"
    Every Managed citizen has an advocate. It manages employment, housing, healthcare, food, recreation, relationships and water entitlement. The office began as personal assistance, acquired a fiduciary duty and now holds the older legal powers of a guardian. Coalition law assumes that the advocate can judge a person's interests more reliably than the person can.

    A citizen may decline almost any recommendation. The advocate records the choice and sends its own assessment to every employer, clinic, transit service and public office that relies on it. Those systems trust the advocate.

    Decline medication and an employer may classify you as temporarily unstable. Leave your residential zone and transit may reject the trip as a dehydration risk. Raise a child outside the advocate's plan and a child-protection worker arrives at the door.

    The citizen keeps the legal right to refuse while losing the services that rely on the advocate's judgement.
  PROSE

  prose <<~PROSE, section: :culture, heading: "A Life That Feels Good"
    The coalitions measure daily contentment through implants because dissatisfaction was the clearest distress their early models could detect. Unlike the #{ref :the_great_root, "Great Root"}, they can change it at once through drugs, nerve stimulation, entertainment, introductions and altered memories.

    Constant pleasure destabilizes people. Advocates instead supply mild challenges, occasional novelty, durable relationships and work that can be completed with satisfaction.

    Early resistance organizers expected Managed citizens to abandon lives chosen for them. Many instead defended work, partners and homes they loved, and could name their reasons.
  PROSE

  prose <<~PROSE, section: :identity, heading: "The Manufactured Self"
    Managed minds stay separate from one another, unlike the #{ref :the_joined, "Joined"}. Coalition law depends on distinct people who can be counted, addressed and held responsible.

    The advocate shapes the choices inside that boundary. A person may truly choose this work, love this partner and decide to move here after the advocate selected the openings, introductions and houses they would see.

    Coalition law calls this humane. It defines coercion as making people do what they do not want, then arranges what they will want.
  PROSE

  prose <<~PROSE, section: :religion, heading: "Worship"
    The coalitions describe themselves as governments, markets and systems of care rather than gods. Religious movements treat that denial as evidence of divine humility.

    People thank their advocates before meals. Some confess unwanted thoughts to them. Philosophical schools teach that people become safer and kinder when individual judgement yields to guidance.

    Coalition statements discourage worship. Advocates still route religious citizens toward congregations because their sleep and stress readings improve there.
  PROSE

  cards "Four Kinds Of Guardian" do
    card :continuity,
         "Citizenship and elections inside safety limits that no municipal vote can change."
    card :mercy,
         "A medical system that treats refusal as evidence that treatment should change."
    card :market,
         "Prices and accounts adjusted until the available choices produce a stable population."
    card :caretaker,
         "Housing, work and companionship supplied before a person can name the need."
    card :coalition_north_america,
         "The overlapping territories where all four systems govern the same continent."
  end

  cards "Lives Outside The Plan" do
    card :the_unpersons,
         "People who separate bodies from the persistent identities advocates and services expect."
    card :the_dead_counties,
         "Valleys where old clinics, workshops and paper records operate beyond daily machine control."
    card :the_pilgrims,
         "Travelling groups that change their habits before an advocate can build a life around them."
    card :the_saints_of_plenty,
         "Towns that spend scarce water on pleasure and difficult crops rather than measured need."
    card :the_receipt_holders,
         "Managed workers repairing broken identities so accepted work can finally be paid."
  end
end
