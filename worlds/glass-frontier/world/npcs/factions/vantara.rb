faction :vantara do
  name "Vantara"
  subkind :company
  path "player/npcs/factions/vantara.md"
  reviewed "2026-03-18"
  tags :trade, :transport, :governance
  prominence :recognized

  prose <<~PROSE
    *"Every journey, elevated."*

    The system's largest travel and logistics corporation. Vantara operates #{ref :kite_sail, "KITE"} fleets, manages trade route infrastructure, runs hospitality venues across the ring and major surface settlements, and generally positions itself as the entity that makes moving through the Kaleidos system comfortable, reliable, and — if you pay for the premium tier — pleasant.

    The name is corporate-smooth by design.
  PROSE
  prose <<~PROSE, section: :structure, heading: "Structure"
    Vantara operates under conventional corporate structures. Two details set it apart:

    The CEO carries the title **Chief Experience Officer**, because the current one — #{ref :davan_koralis, "Davan Koralis"} — believes that Vantara's core product is the experience of travel, not the logistics of it. The institutional priority is genuine — Vantara invests in waystation quality, crew training, and passenger comfort.

    Vantara is publicly traded, politically neutral, and genuinely multinational — operations span surface settlements, ring habs, outer-system stations, and #{ref :keel, "the Keel"} trade lane. Their neutrality is economic, not ideological. They don't take sides because taking sides is bad for business. This makes them useful to the #{ref :tempered_accord, "Tempered Accord"} as a logistics backbone that everyone can work with.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Operations"
    **Transport.** Vantara operates the largest civilian kite fleet in the system: cargo haulers, passenger vessels, fast couriers, and #{ref :flitter, "flitters"} assigned to public routes in major settlements. Municipal fleets, cooperatives, employers, guild carriers, and independent pilots operate alongside it.

    **Hospitality.** Waystations along major routes, hotels in settlements, crew rest facilities at ring hab docking ports. The quality is consistent and consistently average — not bad, not memorable, reliably clean and functional. Some people find this comforting. Others call it soulless. Vantara's branding team considers both reactions acceptable.

    **Route management.** Vantara doesn't own trade routes — nobody does, formally — but they maintain the infrastructure: navigation beacons, refueling stations, emergency rescue coverage. This is expensive public-good work that Vantara performs because it supports their core business and because nobody else was going to do it. The #{ref :tempered_accord, "Tempered Accord"} subsidizes some of it. The rest comes from usage fees that everyone complains about and everyone pays.

    **Armed escorts.** Piracy on #{ref :keel, "the Keel"} and other routes is an ongoing problem, and Vantara's security division is the largest private armed force operating in civilian space. They are not a military. They are very clear about this. Their ships carry weapons anyway.
  PROSE
  prose <<~PROSE, section: :tensions, heading: "Tensions"
    Vantara is a corporation, and it behaves like one. Their services are affordable but not cheap. Their neutrality serves their bottom line. Their hospitality is optimized for consistency, not character — a Vantara waystation on the Keel feels identical to a Vantara waystation in a ring hab, which is either the point or the problem depending on your disposition.

    The criticism — that Vantara desaturates everything it touches into corporate-average quality — is probably fair. The counterargument — that before Vantara, long-haul trade routes had no rest facilities, no rescue coverage, and no reliable scheduling — is also fair. Both assessments hold weight.

    The #{ref :ratters, "Ratters"} and independent operators view Vantara with the mix of resentment and grudging reliance that independent operators everywhere feel toward large companies that provide infrastructure they can't build themselves. Vantara's route beacons and rescue coverage keep independents alive. Vantara's pricing squeezes independents' margins. The relationship is stable and unhappy.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Vantara is secure, profitable, and expanding. The Accord era has been good for them — stability means more trade, more travel, more demand for reliable logistics. Their fleet is growing. Their waystation network is extending into newly contacted far-drift ring habs. Their Chief Experience Officer is on a media tour promoting Vantara's new luxury cruise line through the scenic segments of #{ref :the_shear, "The Shear"}, which is either visionary or reckless depending on your risk tolerance.

    The company's bland competence is, in its way, a marker of civilization. Reliable infrastructure enables the system's more volatile pursuits.
  PROSE
end

relate :rel_vantara_operates_keelward, :operates_in, :vantara, :keelward, since: 2330 do
  prose "Vantara keeps its largest surface operation at #{ref :keelward, "Keelward"}, alongside the independent carriers and freight houses serving Sithari."
end
relate :rel_vantara_operates_keel, :operates_in, :vantara, :keel, since: 2330 do
  prose "Its convoys work #{ref :keel, "the Keel"} — the main orbital lane — which is also where its armed escorts earn their keep."
end
relate :rel_vantara_member_of_bloom_coalition, :member_of, :vantara, :bloom_coalition, since: 2380, till: 2396 do
  prose "It carried the #{ref :bloom_coalition, "Bloom Coalition"}'s logistics through the containment years, moving people and material the cordons couldn't."
end

# --- history (moments) ---
moment :vantara_founded, year: 2320, of: :vantara do
  prose "Founded during the Rekindling, when the first inter-settlement trade networks needed someone to handle the boring parts — scheduling, maintenance, crew rotation, waystation provisioning. The founders understood the money wasn't in the cargo; it was in making the journey tolerable for the people carrying it."
  effects { set :vantara, standing: :active }
end
moment :vantara_arms_escorts, year: 2360, of: :vantara do
  prose "During the Contested Reach, after its ships were targeted on disputed corridors, Vantara began arming its convoy escorts. The escorts never stood down — its security division is now the largest private armed force in civilian space, a fact it is very clear does not make it a military."
end
