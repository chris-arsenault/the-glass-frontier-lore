# Entity Bank Schema

A structured inventory of entity sub-kinds, semantic axes, and density targets. The bank exists to solve the entity attribution problem: when prose needs a name, the author should reach into the bank rather than defaulting to the handful of well-known entities.

This document defines the schema. A companion file (TBD) will contain the actual stub inventory.

## Density Heuristic

Density is inversely proportional to scope:

- **Singular (1):** System-wide unique institutions. One Tempered Accord, one Shear Compact.
- **Sparse (2-3):** System-wide categories. A few system-wide trade corps, a few criminal networks.
- **Moderate (4-6):** Regional entities. Governance bodies, mercenary companies, trade hubs.
- **Dense (8+):** Local entities. Settlements, venues, neighborhood factions, personal contacts.

The heuristic: **ask "how many of these would realistically exist?" and target 10-20% as named stubs.** Fewer well-differentiated entities beat many similar ones.

## Usage Rules

1. **Before attributing to an existing entity, check the bank.** Use a stub or create one.
2. **Prefer stubs over inline descriptions.** `[future:Tesserin Compact]` beats "the local government."
3. **Artifact attribution gets special attention.** Bar: "could a player want to find this?"
4. **Stubs are names + kind + sub-kind + tags + axis position.** No prose, no relationships.
5. **The bank grows through use.** Add stubs when prose needs a name.

## Five Questions

Every sub-kind answers these five questions to ground its worldbuilding purpose:

1. **How is this used in the world?**
2. **How is it NOT used?**
3. **Of what interest is this to a player?**
4. **What tension does this create?**
5. **What distinguishes one from another?**

---

## Factions

### Criminal

Organized crime, smuggling operations, black markets, piracy.

**Axes:** Scale (local ↔ regional ↔ system-wide) × Method (covert ↔ overt)

**Density:** Sparse at system-wide. Moderate at regional. Dense at local.

**Existing:** Coremark (system-wide / overt)

1. **Used:** Smuggling networks, protection rackets, artifact fences, black market supply chains. Criminal factions control access to things the legitimate economy can't or won't provide — Bloom relics, restricted materials, passage through dangerous routes.
2. **Not used:** Criminal factions are not governments-in-waiting. They don't have political agendas beyond protecting their operations. They're economic actors operating outside the law, not revolutionaries.
3. **Player interest:** Jobs, contacts, forbidden goods, moral ambiguity. A player who needs a Bloom relic or passage through restricted space goes through criminal channels.
4. **Tension:** Criminal factions exist because legal channels fail. They're a symptom of the system's inability to distribute resources equitably. Eliminating one creates a vacuum another fills.
5. **Distinguishes:** Scale and method. A local protection racket in a ring hab operates nothing like a system-wide artifact smuggling network. Covert data thieves are a different world from overt pirate fleets.

### Political

Governments, councils, regulatory bodies, diplomatic frameworks.

**Axes:** Authority (authoritarian ↔ distributed ↔ emergent) × Scope (single installation ↔ regional ↔ system-wide)

**Density:** Singular at system-wide. Sparse at regional. Dense at local.

**Existing:** The Continuity (authoritarian / local), Tempered Accord (distributed / system-wide), Shear Compact (regulatory / domain-specific), Fermata jazz governance (emergent / local)

1. **Used:** Every settlement has governance. Political factions set rules, mediate disputes, collect taxes, organize defense, and represent their communities in inter-settlement negotiations.
2. **Not used:** Political factions are not monolithic. Even the Tempered Accord is a framework, not a government. No faction controls everything in its jurisdiction — there are always gaps, competing authorities, and informal power structures.
3. **Player interest:** Permission, obstruction, employment, overthrow. Political factions are the first thing a player bumps into when they try to do anything in a settlement — the customs office, the local magistrate, the trade permit.
4. **Tension:** Authority vs autonomy. Every political faction sits on a spectrum from "too much control" to "too little." The Contested Reach and Bitter Reach happened because governance couldn't keep up with reconnection.
5. **Distinguishes:** Authority style and scope. An authoritarian hab chair who controls docking permissions is a fundamentally different entity from a consensus-based regional coalition that can't agree on anything.

### Trade

Companies, logistics operators, commodity exchanges, market institutions.

**Axes:** Scale (local ↔ regional ↔ system-wide) × Legitimacy (regulated ↔ grey market)

**Density:** Sparse at system-wide. Moderate at regional. Dense at local for specialty operators.

**Existing:** Vantara (system-wide / regulated), Prismwell Kite Guild (regional / regulated)

1. **Used:** Moving goods between settlements. Trade factions operate convoys, maintain way-stations, set prices, enforce contracts, and provide the logistical backbone the system runs on.
2. **Not used:** Trade factions are not banks or financial institutions (those are a separate gap). They move physical goods and provide transport services. Currency, lending, and investment are adjacent but distinct.
3. **Player interest:** Passage, cargo, employment, information. Trade captains know where things are, who wants what, and which routes are dangerous. They're the player's ticket to the next location.
4. **Tension:** Profit vs safety. Trade factions balance commercial pressure against route danger, Accord regulations, and criminal interference. Grey market operators exploit the gap between what's legal and what's needed.
5. **Distinguishes:** Scale and legitimacy. A local artisan collective selling ringglass jewelry operates nothing like a system-wide logistics corp with armed convoys.

### Academic

Research institutions, archives, schools, universities.

**Axes:** Method (empirical ↔ archival) × Access (open ↔ restricted)

**Density:** Sparse at system-wide. Moderate at regional.

**Existing:** Echo Ledger Conclave (archival / restricted), Lattice Proxy Synod (empirical-AI / semi-open)

1. **Used:** Preserving knowledge, training specialists, advancing understanding of resonance and the system's history. Academic factions are where the system's intellectual capital lives — the people who understand how things work and why.
2. **Not used:** Academic factions don't govern. They advise, teach, and research, but they don't make policy. The Synod architects governance structures but doesn't govern.
3. **Player interest:** Knowledge, training, access to restricted information, research quests. An academic faction can explain what a Bloom relic does, teach a skill, or send the player to find something.
4. **Tension:** Knowledge is power, and some institutions hoard it. The gap between what's known and what's shared drives conspiracies, access disputes, and factional rivalry.
5. **Distinguishes:** Method and access. An open university that publishes everything serves the world differently from a secretive archive that gatekeeps pre-Glassfall knowledge.

### Religious

Spiritual orders, philosophical traditions, resonance cults, memorial organizations.

**Axes:** Structure (organized order ↔ diffuse tradition) × Orientation (devotional ↔ philosophical ↔ commemorative)

**Density:** Sparse. Should emerge carefully — a few named traditions, not a pantheon.

**Existing:** None.

1. **Used:** Providing meaning. A civilization that survived a cataclysm and lost an entire species has spiritual responses — memorial traditions for the Glassfall dead, resonance-based meditation practices, philosophical schools debating what the elves owed their creations.
2. **Not used:** There is no dominant organized religion. No gods, no prophets, no scripture-based faiths. Spirituality in this setting is practice-based (meditation, memorial, resonance attunement) and philosophical, not doctrinal.
3. **Player interest:** Lore, perspective, moral frameworks, faction quests. Religious orders are the people who ask "why" instead of "how" — they offer context and meaning that technical factions don't.
4. **Tension:** Doctrine vs experience. Organized orders try to systematize what individuals experience directly through resonance. Memorial traditions argue about what to remember and what to let go.
5. **Distinguishes:** Structure and orientation. A monastic resonance order with formal initiation is nothing like a diffuse tradition of leaving offerings at Bloom Zone boundaries.

### Military

Armed forces, patrol fleets, mercenary companies, settlement defense.

**Axes:** Loyalty (state-aligned ↔ independent) × Scale (local militia ↔ regional patrol ↔ fleet)

**Density:** Sparse at system-wide. Moderate at regional. Dense at local.

**Existing:** None.

1. **Used:** Defending settlements, patrolling routes, enforcing cordons, escorting convoys. Military factions exist because the system is dangerous — the Shear, the Bloom Zones, piracy, and unresolved territorial disputes all require armed response.
2. **Not used:** No standing armies in the modern sense. The Accord doesn't have a military. Military force is fragmented, factional, and often mercenary. Nobody has a monopoly on violence.
3. **Player interest:** Employment, opposition, allies, equipment. Military factions are the people who can help you survive dangerous areas or the people trying to stop you from entering them.
4. **Tension:** Who do they serve? Mercenary companies serve whoever pays. State militias serve their settlement. Patrol fleets serve the routes. When those interests conflict, military factions become unpredictable.
5. **Distinguishes:** Loyalty and scale. A hab militia defending its docking ring from pirates has nothing in common with a mercenary fleet hired to break a trade blockade.

### Labor

Trade guilds, certification bodies, worker cooperatives, professional networks.

**Axes:** Specialization (generalist ↔ narrow craft) × Organization (loose network ↔ formal guild)

**Density:** Moderate. Every major profession should have at least one named guild.

**Existing:** None. Ratters (shell) are a subculture, not a guild.

1. **Used:** Setting standards, training apprentices, negotiating working conditions, controlling access to specialized labor. In a world that runs on resonance technology, the people who maintain that technology have structural power.
2. **Not used:** Labor factions are not governments. They negotiate with governance bodies but don't replace them. They're economic actors representing workers, not political movements (though the line blurs).
3. **Player interest:** Training, certification, employment, access. A player who wants to learn tuning, get certified to operate in the Shear, or find work goes through a guild.
4. **Tension:** Guild power vs access. Formal guilds can gatekeep — refusing certification means you can't legally work. Loose networks lack that power but also lack accountability.
5. **Distinguishes:** Specialization and organization. A formal tuner certification board with exams and apprenticeships is a different entity from an informal network of Shear salvage operators who share tips.

### Advocacy

Reform movements, dissident groups, separatist factions, refugee organizations.

**Axes:** Method (diplomatic ↔ direct action) × Cause (reform ↔ separatist)

**Density:** Sparse. Each major grievance produces one, not a menu of interchangeable groups.

**Existing:** None.

1. **Used:** Representing the people the system fails. Bloom refugees who want their habs back. Shuttered hab communities who want to be left alone. Workers in unregulated Shear operations who want safety standards.
2. **Not used:** Advocacy factions are not criminal. Direct action may include civil disobedience but not organized crime. The line between "advocacy" and "resistance" is blurry, but criminal operations belong in the Criminal sub-kind.
3. **Player interest:** Moral complexity, faction quests, political consequences. Advocacy factions give the player causes to support, oppose, or navigate — choices with no clean answer.
4. **Tension:** Legitimacy. Every advocacy faction believes it's right. The Accord may disagree. The tension between "working within the system" and "the system doesn't work" drives their internal and external conflicts.
5. **Distinguishes:** Method and cause. A diplomatic reform group lobbying the Accord for Bloom Zone reclamation rights is nothing like a separatist movement in a far-drift hab refusing all outside contact.

---

## NPCs

Sub-kinds are profession/archetype oriented — what a person does and how they exist in the world.

### Leader

Faction heads, governors, settlement chairs, commanders, crime bosses.

**Axes:** Scope (local ↔ regional ↔ system-wide) × Legitimacy (elected ↔ appointed ↔ seized ↔ inherited)

**Density:** Dense at local. Sparse at system-wide.

**Existing:** Dern Talish (system / appointed), Shei Lush (local / emergent), Duthrek (system / seized)

1. **Used:** Making decisions that affect others. Leaders are the human face of factions — the person who says yes or no, who signs the order, who takes the blame.
2. **Not used:** Leaders are not necessarily the most powerful or competent. Some are figureheads. Some are reluctant. Some are terrible at the job. The sub-kind is about the role, not the quality.
3. **Player interest:** Permission, obstruction, quests, negotiation. Leaders are who you talk to when you need something done — or who you work around when they say no.
4. **Tension:** Responsibility vs capability. Every leader is in over their head in some way. The job is always bigger than the person.
5. **Distinguishes:** Scope and legitimacy. An elected hab chair accountable to voters faces different pressures than a crime boss who seized control through violence.

### Specialist

Engineers, resonance tuners, doctors, navigators, smiths, KITE mechanics.

**Axes:** Approach (theoretical ↔ practical) × Rarity (common skill ↔ rare expertise)

**Density:** Moderate. Named specialists attach to specific installations or factions.

**Existing:** Lira Vashtenri (practical / rare), Ol'dent (practical / common)

1. **Used:** Keeping things running. Specialists are the people who maintain the resonance arrays, repair the KITE sails, treat the sick, navigate the dangerous routes. The system depends on them.
2. **Not used:** Specialists are not interchangeable. A resonance tuner can't do a surgeon's job. A KITE mechanic can't navigate the deep Shear. Specialization matters.
3. **Player interest:** Services, training, information, repair. A specialist is the person who can fix your ship, explain what a relic does, or teach you a skill.
4. **Tension:** Expertise vs demand. Rare specialists are overworked, poached, and pressured. Everyone wants the best tuner; nobody wants to pay for training new ones.
5. **Distinguishes:** Approach and rarity. A theoretical resonance researcher who's never touched a real array is nothing like a practical tuner who can fix anything but can't explain why.

### Soldier

Warriors, cordon operators, mercenaries, patrol captains, guards.

**Axes:** Alignment (institutional ↔ freelance) × Experience (green ↔ veteran ↔ legendary)

**Density:** Moderate. Concentrated in conflict eras.

**Existing:** None.

1. **Used:** Fighting, guarding, patrolling, escorting. Soldiers exist because the system is dangerous and contested. They stand on cordons, crew patrol ships, guard convoys, and fight in the disputes that define the Contested Reach and Bitter Reach.
2. **Not used:** Soldiers are not political actors. They follow orders or contracts. Individual soldiers may have political opinions, but the sub-kind is about the profession, not the ideology.
3. **Player interest:** Combat allies, opposition, training, war stories. Soldiers are the people who've been to the dangerous places and survived — they know what's out there.
4. **Tension:** Loyalty vs conscience. Institutional soldiers follow orders they may disagree with. Freelance soldiers pick their contracts but live with the consequences.
5. **Distinguishes:** Alignment and experience. A green hab militia guard who's never fired a weapon is nothing like a legendary cordon operator who's survived twenty years in the Bloom Zone perimeter.

### Merchant

Traders, ship captains, shopkeepers, commodity dealers.

**Axes:** Scale (local ↔ regional ↔ system-wide) × Specialty (general cargo ↔ rare goods)

**Density:** Moderate. Named merchants are the human face of trade routes.

**Existing:** None.

1. **Used:** Buying, selling, transporting, brokering. Merchants connect settlements — they're the reason goods move from where they're produced to where they're needed.
2. **Not used:** Merchants are not factions. A single merchant captain is an individual, not an organization. They may work for trade factions or independently, but the sub-kind is about the person.
3. **Player interest:** Passage, goods, information, jobs. Merchants know what's valuable where, who's buying, and which routes are open. They're the player's first contact in a new settlement.
4. **Tension:** Profit vs ethics. Do you carry Bloom relics because they're profitable? Do you trade with settlements under blockade? Every merchant draws the line somewhere.
5. **Distinguishes:** Scale and specialty. A local shopkeeper in a ring hab has nothing in common with a system-wide trade captain hauling ringglass between planets.

### Scholar

Historians, archivists, researchers, educators, philosophers.

**Axes:** Output (teaches ↔ publishes ↔ hoards) × Era focus (pre-Glassfall ↔ post-Rekindling ↔ present-day)

**Density:** Moderate. Each major institution should have named scholars.

**Existing:** Renn Duvasi (publishes / pre-Glassfall, shell)

1. **Used:** Understanding the past and present. Scholars are the people who study the elves, catalog resonance phenomena, teach the next generation of tuners, and try to make sense of what happened and why.
2. **Not used:** Scholars are not adventurers. They study things; they don't usually go find them personally. Some do — field researchers, expedition scholars — but the default is sedentary expertise.
3. **Player interest:** Knowledge, context, quest hooks. A scholar can explain what the player found, point them toward something more, or ask them to retrieve a specific item from a dangerous place.
4. **Tension:** What to share. Scholars who publish advance civilization. Scholars who hoard protect dangerous knowledge. The tension between access and safety drives academic politics.
5. **Distinguishes:** Output and era focus. A pre-Glassfall historian who hoards knowledge about elven engineering is nothing like a present-day educator who openly teaches resonance theory to apprentices.

### Artist

Musicians, visual artists, writers, performers, craftspeople.

**Axes:** Reach (local ↔ system-wide) × Relationship to resonance (resonance-integrated ↔ non-resonance)

**Density:** Dense at local. Sparse at system-wide.

**Existing:** None.

1. **Used:** Making the world beautiful, meaningful, and bearable. Artists are the people who perform at Fermata Station's Sessions, paint murals in Glasswake's market, compose memorial music for the Glassfall dead, and craft ringglass jewelry that sings.
2. **Not used:** Artists are not decorative. In a world where resonance is physics, art that incorporates resonance has real effects — a performed piece can literally shift the resonance landscape of a room. Art is functional, even when it doesn't mean to be.
3. **Player interest:** Atmosphere, culture, information, beauty. Artists define how a settlement feels. They're also the people who encode history in song, hide messages in performance, and notice resonance anomalies through artistic sensitivity.
4. **Tension:** Art vs function. Is a resonance-integrated sculpture art or infrastructure? When a performance shifts the resonance landscape, who's responsible for the consequences?
5. **Distinguishes:** Reach and resonance integration. A local musician who plays non-resonance folk songs in a hab tavern is nothing like a system-famous resonance sculptor whose installations are infrastructure-grade.

### Hermit

Loners, exiles, wanderers, prospectors, deep-Shear operators.

**Axes:** Reason (choice ↔ exile ↔ function) × Location (surface ↔ deep ring ↔ outer system)

**Density:** Sparse. Each named hermit is a potential quest hook.

**Existing:** None.

1. **Used:** Existing outside the system. Hermits are the people who live where nobody else does — deep in the Shear, in shuttered habs, in outer system outposts that lost contact decades ago. They know things nobody else knows because they're the only ones there.
2. **Not used:** Hermits are not crazy. Some chose isolation for good reasons. Some were exiled and made peace with it. Some do jobs that require being alone. The sub-kind is about separation from civilization, not mental state.
3. **Player interest:** Unique knowledge, uncharted locations, personal stories. A hermit in a deep-drift hab has seen things nobody else has. They're the quest giver at the end of the road.
4. **Tension:** Connection vs solitude. Every hermit has a relationship with the civilization they left. Some want to be found. Some don't. The player's arrival disrupts equilibrium.
5. **Distinguishes:** Reason and location. A prospector who chose the deep Shear for profit is nothing like a political exile living in an abandoned hab because they can't go home.

### Criminal

Smugglers, fences, fixers, con artists, pirates. Individual operators.

**Axes:** Independence (faction-affiliated ↔ freelance) × Method (violence ↔ deception ↔ connection)

**Density:** Moderate. Ground-level contacts players interact with.

**Existing:** None individually.

1. **Used:** Getting things done outside the law. Criminal NPCs are the people who move Bloom relics, forge documents, provide passage to restricted areas, and connect people who can't afford to be seen together.
2. **Not used:** Criminal NPCs are not evil. They're people who work outside legal systems, often because those systems failed them. Some are predatory, some are practical, some are principled. The sub-kind is about the profession.
3. **Player interest:** Services, moral ambiguity, information, jobs. Criminal NPCs are the people the player goes to when legitimate channels can't help — and they always want something in return.
4. **Tension:** Trust. Every criminal relationship is transactional. Loyalty is earned, not assumed. The question is always: what happens when interests diverge?
5. **Distinguishes:** Independence and method. A Coremark-affiliated smuggler who uses violence is nothing like a freelance fixer who connects people through charm and favors.

---

## Installations

### Settlement

Named places where people live.

**Axes:** Size (outpost ↔ town ↔ city) × Location (surface ↔ ring hab ↔ orbital ↔ outer system)

**Density:** Dense. 8-12 ring habs, 4-6 surface settlements, 3-4 outer system, 2-3 orbital.

**Existing:** Sithari (city / surface), Fermata Station (city / ring hab), Glasswake (town / surface)

1. **Used:** Where people live, work, trade, argue, and build. Settlements are the primary unit of civilization — each one is a community with its own governance, economy, culture, and problems.
2. **Not used:** Settlements are not interchangeable. A ring hab is a sealed environment dependent on ringglass infrastructure. A surface settlement on Kaleidos deals with weather, geography, and ground-level resonance. An outer system colony faces isolation. The location defines the character.
3. **Player interest:** Everything. Settlements are where players spend most of their time — shopping, gathering information, finding jobs, meeting NPCs, getting in trouble.
4. **Tension:** Every settlement is a pressure cooker. Limited resources, diverse populations, unresolved history, external threats. The specific pressure defines the settlement.
5. **Distinguishes:** Size and location. An outpost of thirty people on an outer system moon has nothing in common with a city of hundreds of thousands on Kaleidos's surface.

### Industrial

Refineries, factories, shipyards, processing plants, farms.

**Axes:** Product (ringglass ↔ food ↔ manufacturing ↔ energy ↔ stillwater) × Scale (workshop ↔ regional ↔ major complex)

**Density:** Moderate. Named facilities anchor economic geography.

**Existing:** Pyre (ringglass / major, destroyed)

1. **Used:** Producing and processing the materials civilization needs. Industrial installations are where ringglass is refined, food is grown, ships are built, and energy is generated. They're the economic engine.
2. **Not used:** Industrial installations are not settlements (though they often have attached worker housing). They're defined by what they produce, not by who lives there.
3. **Player interest:** Resources, employment, sabotage targets, environmental hazards. Industrial installations are where valuable things come from and where dangerous things can go wrong.
4. **Tension:** Production vs safety. Every industrial installation balances output against worker welfare, environmental impact, and resonance ecology. The Bloom started at an industrial installation that pushed too hard.
5. **Distinguishes:** Product and scale. A stillwater production facility employing delicate resonance techniques is nothing like a massive ringglass refinery with heavy industrial processes.

### Infrastructure

Communication relays, transport nodes, defense installations, containment structures.

**Axes:** Era (pre-Glassfall ↔ post-Rekindling) × Contested (uncontested ↔ disputed ↔ fought-over)

**Density:** Sparse. We name the distinctive or contested ones.

**Existing:** Span Nine (pre-Glassfall / uncontested), The Keel (post-Rekindling / historically fought-over), Lira's Wall (post-Rekindling / uncontested)

1. **Used:** Connecting and protecting. Infrastructure is the system's nervous system — the relays that carry messages, the routes that carry cargo, the cordons that contain the Bloom, the defenses that protect settlements.
2. **Not used:** Infrastructure is not a destination. Players pass through it, depend on it, fight over it, and occasionally break it. Nobody lives at a relay tower (usually).
3. **Player interest:** Chokepoints, strategic objectives, pre-Glassfall mysteries. Pre-Glassfall infrastructure is the most interesting — elven engineering that still works, that nobody fully understands, and that may be more than it appears.
4. **Tension:** Control. Whoever controls a communication relay controls information. Whoever controls a trade route controls commerce. Infrastructure is power, and power is contested.
5. **Distinguishes:** Era and contestation. A pre-Glassfall relay of incomprehensible elven engineering is nothing like a post-Rekindling trade waystation. An uncontested containment cordon is nothing like a route that changed hands three times during the Contested Reach.

### Venue

Taverns, shops, theaters, temples, arenas, specific corridors, sewers. The places players actually spend time in.

**Axes:** Character (reputable ↔ disreputable ↔ sacred ↔ dangerous) × Visibility (public ↔ hidden)

**Density:** Dense. Every named settlement should have 2-5 named venues.

**Existing:** None.

1. **Used:** Scene-setting. Venues are where scenes happen — the tavern where a deal goes down, the theater where a performance reveals a secret, the sewer where a smuggling route runs, the temple where a memorial ceremony takes place.
2. **Not used:** Venues are not settlements. They exist inside settlements. They don't have their own governance or economy — they're part of a larger community.
3. **Player interest:** Atmosphere, encounters, services, secrets. Venues are where players meet NPCs, gather information, buy things, and stumble into trouble. A named venue with character is worth more than a paragraph describing a city.
4. **Tension:** Every venue reflects its community. A disreputable tavern exists because the settlement has a criminal underclass. A hidden temple exists because the faith isn't welcome. The venue tells you about the settlement.
5. **Distinguishes:** Character and visibility. A reputable public auction house where ringglass is traded openly is nothing like a hidden sewer-level den where Bloom relics change hands.

---

## Geographic Locations

### Region

Named areas on planetary surfaces or large orbital zones.

**Axes:** Habitability (settled ↔ frontier ↔ hostile) × Body (Kaleidos ↔ other)

**Density:** Moderate for Kaleidos (4-6 named regions). Sparse for others.

**Existing:** Sable Crescent (settled / Kaleidos), The Shear (hostile / orbital)

1. **Used:** Organizing geography. Regions are how people talk about where things are — "the Sable Crescent" is a known place with a character, a climate, and a reputation.
2. **Not used:** Regions are not political divisions. A region can contain multiple settlements with different governance. The Sable Crescent is a geographic area, not a jurisdiction.
3. **Player interest:** Orientation, travel, reputation. Knowing a region's character tells the player what to expect — settled means services, frontier means opportunity and danger, hostile means don't go alone.
4. **Tension:** Territorial claims. Regions don't have borders in the legal sense, but factions claim them, patrol them, and fight over them. "Who controls the Sable Crescent" is a political question with geographic dimensions.
5. **Distinguishes:** Habitability. A settled region with trade routes and patrols is nothing like a hostile region where resonance ecology has gone wrong and nobody lives.

### Drift Sector

Named areas of the ring or orbital space, defined by position and condition.

**Axes:** Ring position (near-surface ↔ mid-drift ↔ far-drift ↔ deep-drift) × Condition (intact ↔ damaged ↔ bloom-affected ↔ shuttered)

**Density:** Moderate. Named sectors give prose specificity about orbital locations.

**Existing:** Bloom Zones (mid-drift / bloom-affected)

1. **Used:** Navigating the ring. Drift sectors are how people talk about orbital space — "mid-drift sector seven" or "the far-drift frontier." Each sector has a character based on its condition and position.
2. **Not used:** Drift sectors are not settlements. They contain ring habs, debris fields, and empty space. The sector is the neighborhood; the habs and stations are the buildings.
3. **Player interest:** Exploration, danger levels, navigation. Far-drift sectors are unexplored frontier. Bloom-affected sectors are restricted. Intact sectors are where most ring life happens.
4. **Tension:** Access. Bloom-affected sectors are cordoned. Shuttered sectors refuse contact. Far-drift sectors are unmapped. Every restricted sector is a reason for someone to want in.
5. **Distinguishes:** Position and condition. A near-surface intact sector with active trade is nothing like a deep-drift damaged sector that hasn't been surveyed since the Glassfall.

### Natural Feature

Volcanoes, hot springs, canyons, caves, unusual formations, river systems.

**Axes:** Significance (navigational landmark ↔ resource site ↔ hazard ↔ sacred) × Accessibility (easy ↔ difficult ↔ lethal)

**Density:** Moderate. Each named region should have 2-4 named features.

**Existing:** None.

1. **Used:** Grounding geography. Natural features are what makes a region feel real — the volcano visible from Glasswake, the hot springs where tuners go to recalibrate, the canyon that's the only land route between two settlements.
2. **Not used:** Natural features are not destinations in themselves (usually). They're part of the landscape that settlements and routes exist in relation to. A volcano matters because the settlement is built near it, not in isolation.
3. **Player interest:** Exploration, resource gathering, navigation, atmosphere. Natural features are what the player sees when they look out the window — the visual and experiential texture of the world.
4. **Tension:** Resources vs hazard. A hot spring with resonance properties is valuable and dangerous. A cave system with ringglass deposits is lucrative and unstable. The best resources are in the worst places.
5. **Distinguishes:** Significance and accessibility. A navigational landmark visible for miles is nothing like a lethal cave system that only experienced prospectors enter.

### Ruin

Abandoned infrastructure, destroyed installations, pre-Glassfall sites, collapsed habs.

**Axes:** Era (pre-Glassfall ↔ Contested Reach ↔ Bloom-era) × State (stable ↔ decaying ↔ active hazard)

**Density:** Moderate. Ruins are exploration content — dungeons, in game terms.

**Existing:** None (Pyre is close but classified as installation).

1. **Used:** Exploration and history. Ruins are the physical record of the past — pre-Glassfall elven sites nobody understands, Contested Reach battlefields, Bloom-era habitats abandoned during the Displacement. They contain artifacts, knowledge, and danger.
2. **Not used:** Ruins are not settlements. They're abandoned. If people live there, it's a settlement with ruins underneath (like Sithari), not a ruin.
3. **Player interest:** Exploration, loot, lore, danger. Ruins are the classic adventure content — go somewhere nobody else goes, find something valuable, survive the hazards.
4. **Tension:** Risk vs reward. The most valuable ruins are the most dangerous. Pre-Glassfall sites may have active resonance systems nobody understands. Bloom-era ruins may be contaminated.
5. **Distinguishes:** Era and state. A stable pre-Glassfall site with intact but dormant systems is nothing like an actively hazardous Bloom-era ruin with reality distortion.

---

## Artifacts

Sub-kinds are organized by what the object IS. Origin (elven, bloom-generated, constructed) is an axis on each, not a sub-kind. See `review-guidance/writing-guidance.md` section 6 for artifact design philosophy.

### Weapon

Blades, ranged weapons, resonance-channeled offensive tools.

**Axes:** Origin (elven ↔ bloom-generated ↔ constructed) × Scale (personal ↔ vehicle-mounted ↔ installation-scale)

**Density:** Sparse for named unique weapons (4-6 total).

**Existing:** None.

1. **Used:** Killing, threatening, defending. Weapons in this setting range from conventional arms to resonance-channeled devices that weaponize the crystal substrate itself. Elven weapons, if they exist, would be resonance-integrated at a level nobody can replicate.
2. **Not used:** Weapons are not the primary technology of the setting. This is not a war-focused world. Weapons exist because conflict exists, but the civilization's technological emphasis is on infrastructure, resonance manipulation, and transport.
3. **Player interest:** Power, danger, quest objectives. A named weapon is something a player wants to find, fears encountering, or needs to destroy. Every named weapon should be a story.
4. **Tension:** Possession. Who has this weapon? Who wants it? What happens if it's used? Named weapons change the balance of power wherever they appear.
5. **Distinguishes:** Origin and scale. A bloom-generated personal blade with unpredictable resonance effects is nothing like an elven installation-scale defense system that could sterilize a hab.

### Instrument

Resonance tools, tuning devices, musical instruments with resonance properties, diagnostic equipment.

**Axes:** Origin (elven ↔ bloom-generated ↔ constructed) × Purpose (creative ↔ technical ↔ diagnostic)

**Density:** Moderate. In a world where resonance is physics, instruments blur the line between tools and art.

**Existing:** Resonant Instruments (concept entry, not individuals)

1. **Used:** Tuning, performing, diagnosing, amplifying. Instruments are the primary interaction tool for resonance work — how tuners do their job, how musicians perform, how engineers diagnose array problems.
2. **Not used:** Instruments are not weapons (even though some could be weaponized). The sub-kind is about tools designed for constructive purposes — even if they're dangerous in the wrong hands.
3. **Player interest:** Skills, performance, resonance interaction. An instrument is the player's interface with the resonance system — the tool that lets them do things other people can't.
4. **Tension:** Attunement. The best instruments attune to their users over time. Losing one is losing part of yourself. Finding a pre-Glassfall instrument that attunes to you is finding something that chose you.
5. **Distinguishes:** Origin and purpose. A constructed diagnostic tuning fork is nothing like an elven creative instrument that shapes resonance into art with effects that linger for days.

### Armor

Shields, barriers, containment devices, personal protection, structural reinforcement.

**Axes:** Origin (elven ↔ bloom-generated ↔ constructed) × Scale (personal ↔ structural ↔ zone)

**Density:** Sparse. Named protective artifacts are rare and significant.

**Existing:** Lira's Wall (constructed / zone-scale)

1. **Used:** Protection. Armor in this setting ranges from personal resonance-dampening gear to zone-scale containment systems like Lira's Wall. The best protection works with resonance rather than against it — redirecting frequencies rather than blocking them.
2. **Not used:** Armor is not just for combat. Containment systems, environmental protection, and structural reinforcement are all "armor" in the sense of protecting something from something else.
3. **Player interest:** Survival, containment missions, Bloom Zone operations. Named armor is what lets you go where others can't — into Bloom Zones, into pre-Glassfall ruins with active resonance, into deep-Shear environments.
4. **Tension:** Limits. Every protection has a threshold. Lira's Wall contains the Bloom but can't reverse it. Personal resonance dampeners protect against exposure but degrade over time. Named armor defines what's possible and what isn't.
5. **Distinguishes:** Origin and scale. A constructed personal dampening suit is nothing like an elven structural reinforcement that's kept a building standing for centuries.

### Record

Treaties, charters, academic works, maps, journals, encoded transmissions.

**Axes:** Scope (personal ↔ institutional ↔ systemic) × Status (active ↔ historical ↔ lost ↔ suppressed)

**Density:** Sparse. Named records should be plot-relevant.

**Existing:** Compact Charter (institutional / active, shell), Vashtenri Thesis (institutional / historical, shell)

1. **Used:** Preserving and transmitting knowledge, authority, and history. Records are the written memory of civilization — the treaties that define borders, the research that changed understanding, the maps that show where things are.
2. **Not used:** Records are not generic books. A named record is a specific document with specific significance. The entry for "the Compact Charter" is about that particular document, not about charters in general.
3. **Player interest:** Information, authority, quest objectives. A lost map to a pre-Glassfall site is a quest. A suppressed research paper about elven engineering is leverage. An active treaty is the law the player has to work within or around.
4. **Tension:** Access and authenticity. Who has the original? Is this copy genuine? What happens if this record is destroyed or revealed? Named records are information that someone wants controlled.
5. **Distinguishes:** Scope and status. A personal journal of a Glassfall survivor is nothing like an active system-wide treaty. A suppressed academic thesis drives different stories than a lost navigational chart.

### Key

Objects that open, unlock, activate, or grant permission. Access tokens, activation crystals, identity proofs.

**Axes:** Origin (elven ↔ bloom-generated ↔ constructed) × What it accesses (location ↔ artifact ↔ knowledge ↔ authority)

**Density:** Sparse. Named keys are quest objects by nature.

**Existing:** Communication Shard (elven / knowledge+authority, DM)

1. **Used:** Accessing things that are locked. In a world with pre-Glassfall sealed chambers, Bloom Zone containment perimeters, and faction-restricted archives, keys are the objects that get you through doors — literal and metaphorical.
2. **Not used:** Keys are not weapons or tools. They have one function: granting access. Their value comes entirely from what they open, not from what they do independently.
3. **Player interest:** Exploration, access, quest progression. Keys are the classic adventure object — find the key, reach the locked place, discover what's inside.
4. **Tension:** Possession and intent. A key to a pre-Glassfall sealed chamber is valuable to archaeologists, dangerous to the uninformed, and coveted by anyone who wants what's inside. Who should have this key?
5. **Distinguishes:** Origin and access. An elven activation crystal that opens a sealed laboratory is nothing like a constructed identity token that grants Accord diplomatic credentials.

### Container

Storage devices, sealed archives, reliquaries, cargo modules with history.

**Axes:** Origin (elven ↔ bloom-generated ↔ constructed) × Contents (known ↔ unknown ↔ sealed ↔ empty)

**Density:** Sparse. Named containers are mystery boxes.

**Existing:** None.

1. **Used:** Holding things. Containers are artifacts defined by what's inside — or by the mystery of what might be inside. A sealed elven reliquary, a Bloom-Zone cargo pod with unknown contents, an empty case that once held something important.
2. **Not used:** Containers are not buildings or locations. They're objects — portable (usually), specific, and defined by their contents rather than their location.
3. **Player interest:** Mystery, discovery, risk. A sealed container is a promise: something is inside. Opening it is a decision with consequences.
4. **Tension:** Do you open it? Sealed containers from unknown sources carry risk. The contents might be valuable, dangerous, or both. The act of opening may trigger something.
5. **Distinguishes:** Origin and contents. A known Bloom-relic cargo pod is a specific kind of danger. An empty elven reliquary raises the question: what was in here, and where did it go?

---

## Creatures

### Fauna

Wildlife, animals, domesticated species, herd animals.

**Axes:** Habitat (surface ↔ ring ↔ orbital ↔ Shear ↔ Bloom Zone) × Relation (domesticated ↔ hunted ↔ avoided ↔ symbiotic)

**Density:** Moderate. Each major habitat should have 2-3 named species.

**Existing:** Cthonic Beasts (Shear / avoided)

1. **Used:** Ecology. Fauna are part of the living systems that make the world feel real — the animals people farm, hunt, avoid, and depend on. In a world with resonance-active crystal substrate, some fauna have evolved resonance sensitivity.
2. **Not used:** Fauna are not monsters (usually). They're animals — part of the ecosystem, not antagonists. Some are dangerous the way bears are dangerous, not the way villains are dangerous.
3. **Player interest:** Resources, hazards, mounts, companions, environmental storytelling. Fauna tell you about the environment — what lives here tells you what the environment is like.
4. **Tension:** Disruption. When the resonance ecology shifts (Bloom, overextraction), fauna respond first. Behavioral changes in local wildlife are an early warning system the system mostly ignores.
5. **Distinguishes:** Habitat and relation. A domesticated herd animal on Kaleidos's surface is nothing like a resonance-sensitive predator in the deep Shear that navigates by crystal vibration.

### Anomaly

Strange phenomena with apparent life or agency — Bloom Zone entities, resonance-animated objects, things that defy classification.

**Axes:** Origin (bloom-generated ↔ resonance-natural ↔ elven remnant ↔ unknown) × Behavior (territorial ↔ migratory ↔ dormant ↔ reactive)

**Density:** Sparse. Each named anomaly is a potential encounter.

**Existing:** None.

1. **Used:** Mystery and danger. Anomalies are the things that don't fit — the Bloom Zone phenomenon that behaves like it's alive, the resonance pattern that moves through crystal substrate like a living thing, the pre-Glassfall construct that wakes up when someone enters the room.
2. **Not used:** Anomalies are not supernatural. They're explicable (or potentially explicable) through resonance mechanics. They may be deeply strange, but they follow rules — rules nobody fully understands yet.
3. **Player interest:** Wonder, danger, investigation, quests. Anomalies are the things that make the world feel strange and worth exploring — the reason someone sends you into a Bloom Zone.
4. **Tension:** Understanding. Is this thing alive? Is it dangerous? Can it be communicated with? Can it be contained? Anomalies raise questions that don't have easy answers.
5. **Distinguishes:** Origin and behavior. A bloom-generated territorial entity that defends a specific area is nothing like a dormant elven remnant that activates when specific resonance frequencies are present.

---

## Transport

### Warship

Military vessels, patrol ships, armed escorts.

**Axes:** Affiliation (faction navy ↔ mercenary ↔ pirate ↔ independent) × Scale (fighter ↔ patrol vessel ↔ capital ship)

**Density:** Sparse. Named warships are significant — flagships, legendary vessels.

**Existing:** None.

1. **Used:** Projecting force. Warships patrol trade routes, enforce cordons, escort convoys, and fight in the conflicts that define the Contested Reach and Bitter Reach eras.
2. **Not used:** Warships are not the dominant vessel type. This is a trade and exploration setting, not a military one. Warships exist because threats exist, but most traffic is civilian.
3. **Player interest:** Allies, threats, prizes, employment. A named warship is a moving settlement with its own crew, captain, reputation, and agenda.
4. **Tension:** Allegiance. Warships are powerful and mobile — they go where their captain points them. When allegiances shift, warships shift with them.
5. **Distinguishes:** Affiliation and scale. A faction patrol vessel enforcing trade regulations is nothing like an independent pirate frigate raiding Shear salvage operations.

### Civilian

Trade ships, passenger transports, exploration vessels, personal craft.

**Axes:** Notability (workhorse class ↔ famous individual ship) × Range (local ↔ system-wide)

**Density:** Moderate for classes. Sparse for individual famous ships (4-6).

**Existing:** None.

1. **Used:** Moving people and goods. Civilian vessels are the setting's blood supply — the ships that connect settlements, carry cargo, transport passengers, and explore new routes.
2. **Not used:** Civilian vessels are not warships, even when they're armed. Vantara arming escorts is notable because it's unusual. Most civilian ships are commercial, practical, and unglamorous.
3. **Player interest:** Transport, home base, employment. The player's ship (if they have one) is a civilian vessel. Famous ships are aspirational — the vessel everyone knows by name.
4. **Tension:** Vulnerability. Civilian ships are soft targets. Every trade route has dangers. The gap between civilian vulnerability and the threats they face drives demand for escorts, insurance, and regulation.
5. **Distinguishes:** Notability and range. A famous exploration vessel that mapped the far-drift frontier is nothing like a local cargo hauler shuttling ringglass between two ring habs.

---

## Incidents

### Battle

Named fights, raids, sieges, standoffs.

**Axes:** Scale (skirmish ↔ battle ↔ campaign) × Era (Contested Reach ↔ Silent Bloom ↔ Bitter Reach ↔ Accord)

**Density:** Moderate for conflict eras (4-6 named each).

**Existing:** Shardfall (skirmish / Contested Reach), Coriolis Breach (incident / Contested Reach)

1. **Used:** History. Named battles are the events that shaped eras — the flashpoints people remember, the turning points in conflicts, the moments that changed who controlled what.
2. **Not used:** Battles are not wars. A battle is a discrete event within a larger conflict. The Contested Reach is a conflict; Shardfall is a battle within it.
3. **Player interest:** History, reputation, consequences. Named battles matter because their consequences are still visible — the territory that changed hands, the wreckage that's still there, the grudges that still burn.
4. **Tension:** Legacy. Who won? Who lost? Who remembers it differently? Battles create narratives that factions use to justify present-day grievances.
5. **Distinguishes:** Scale and era. A skirmish between two salvage crews in the Contested Reach is nothing like a multi-site campaign during the Bitter Reach that reshaped regional power.

### Disaster

Catastrophic events — industrial accidents, structural failures, resonance cascades.

**Axes:** Cause (natural ↔ industrial ↔ deliberate) × Scale (local ↔ regional ↔ system-wide)

**Density:** Sparse. Each named disaster should have lasting visible effects.

**Existing:** The Glassfall (deliberate? / system-wide), The Bloom (industrial / regional), Displacement (industrial consequence / regional)

1. **Used:** Consequences. Named disasters are the bad things that happened — the events that created ruins, displaced populations, changed landscapes, and traumatized communities.
2. **Not used:** Disasters are not ongoing (those are conflicts or phenomena). A disaster happened, ended, and left consequences. The Bloom ignition is a disaster; the Bloom Zones are a phenomenon.
3. **Player interest:** Exploration, investigation, consequences. Disaster sites are exploration content. The cause of a disaster may be unknown — investigating it is a quest.
4. **Tension:** Blame. Who caused this? Could it have been prevented? Who profited? Disasters create accountability questions that drive political tension.
5. **Distinguishes:** Cause and scale. A local structural failure in one ring hab is nothing like a system-wide cataclysm that ended a civilization.

### Agreement

Treaties, accords, compacts, trade deals. Named agreements between parties.

**Axes:** Scope (bilateral ↔ multilateral ↔ system-wide) × Status (active ↔ expired ↔ violated)

**Density:** Sparse at system-wide. Moderate at local.

**Existing:** Verathi arbitration (system-wide / active, shell)

1. **Used:** Structuring relationships. Agreements are how factions formalize cooperation, end conflicts, divide resources, and set rules. They're the political infrastructure of the system.
2. **Not used:** Agreements are not governance (those are political factions). An agreement is a document and a commitment, not an institution.
3. **Player interest:** Rules to follow or break, leverage, political context. Active agreements define what's legal and what isn't. Violated agreements are quest hooks.
4. **Tension:** Enforcement. Who enforces this agreement? What happens when it's broken? The gap between what was agreed and what actually happens drives political storylines.
5. **Distinguishes:** Scope and status. A bilateral trade deal between two ring habs is nothing like a violated system-wide accord that everyone pretends is still in force.

### Rupture

Schisms, betrayals, declarations of independence, faction splits.

**Axes:** Cause (ideological ↔ personal ↔ resource-driven) × Scale (internal faction split ↔ inter-faction break ↔ system-wide realignment)

**Density:** Sparse. Ruptures are dramatic and consequential.

**Existing:** None.

1. **Used:** Creating new factions and new conflicts. Ruptures are the moments when alliances break, factions split, and the political landscape changes. The Bloom Coalition dissolving is a rupture.
2. **Not used:** Ruptures are not battles. They're political events — the moment trust breaks, not the violence that follows.
3. **Player interest:** Political consequences, choosing sides, understanding history. Ruptures explain why factions that should be allies aren't — the specific betrayal or disagreement that divided them.
4. **Tension:** Irreversibility. Can the break be healed? Should it be? Ruptures create camps that may never reconcile.
5. **Distinguishes:** Cause and scale. An internal faction split over ideology is nothing like a system-wide realignment triggered by resource scarcity.

---

## Conflicts

Ongoing large-scale tensions, distinct from discrete incidents.

### Territorial

Disputes over land, routes, orbital zones, resource-rich areas.

**Axes:** Scale (local border ↔ regional zone ↔ system-wide claim) × Status (active ↔ frozen ↔ resolved)

**Density:** Moderate. Each era should have 2-3 named territorial conflicts.

**Existing:** The Corridor Disputes (regional / resolved)

1. **Used:** Driving political and military action. Territorial conflicts are why factions maintain militaries, why trade routes are contested, and why settlements build walls.
2. **Not used:** Territorial conflicts are not ideological. They're about space, resources, and control. The parties may have ideological differences, but the conflict is about who controls what.
3. **Player interest:** Taking sides, navigating contested zones, mercenary work, diplomacy. Territorial conflicts create borders the player has to cross and loyalties they have to navigate.
4. **Tension:** Legitimacy. Both sides have claims. Both sides have grievances. There's rarely a clear right answer — just power and precedent.
5. **Distinguishes:** Scale and status. An active local border dispute between two ring habs is nothing like a frozen system-wide claim over deep-drift frontier zones.

### Ideological

Disputes over governance philosophy, rights, values, resource distribution.

**Axes:** Issue (governance model ↔ species rights ↔ resource access ↔ knowledge control) × Intensity (political debate ↔ civil unrest ↔ armed conflict)

**Density:** Sparse. Named ideological conflicts should be the defining tensions of their era.

**Existing:** None.

1. **Used:** Defining the political landscape. Ideological conflicts are why the Accord exists (compromise between incompatible visions), why shuttered habs refuse contact (sovereignty vs integration), and why the Displacement Council is stretched thin (containment vs reclamation).
2. **Not used:** Ideological conflicts are not abstract. They're grounded in specific material conditions — who gets access to ringglass, who speaks for newly contacted habs, whether Bloom Zones should be reclaimed or permanently cordoned.
3. **Player interest:** Moral complexity, faction alignment, political consequences. Ideological conflicts force the player to choose what they believe and live with the results.
4. **Tension:** Irreconcilable values. Some disagreements have no compromise. The player can't satisfy everyone.
5. **Distinguishes:** Issue and intensity. A political debate about governance model is nothing like an armed conflict over species rights.

---

## Rumors

Investigatable hooks with uncertain truth.

### Anomalous Signal

Strange transmissions, unexplained readings, equipment behaving oddly.

**Axes:** Source (deep Shear ↔ Bloom Zone ↔ pre-Glassfall site ↔ outer system) × Credibility (credible ↔ dubious ↔ wild)

**Density:** Moderate. 3-4 named signal rumors active at any time.

**Existing:** None.

1. **Used:** Quest generation. Anomalous signals are the reason someone hires the player — "we detected something strange, go find out what it is."
2. **Not used:** Signals are not confirmed facts. They're leads. The investigation may reveal the source is mundane, or it may open something bigger.
3. **Player interest:** Exploration, mystery, discovery. Following a signal into unknown territory is a classic adventure hook.
4. **Tension:** Risk vs curiosity. Following the signal means going somewhere dangerous based on uncertain information.
5. **Distinguishes:** Source and credibility. A credible signal from a pre-Glassfall site is a research opportunity. A wild signal from deep in the Bloom Zone is a death wish that someone will still want to follow.

### Legend

Stories about lost things, hidden places, secret knowledge.

**Axes:** Subject (lost artifact ↔ hidden location ↔ secret knowledge ↔ missing person) × Age (recent ↔ Bloom-era ↔ pre-Glassfall)

**Density:** Moderate. 4-6 named legends in active circulation.

**Existing:** None.

1. **Used:** Cultural memory and quest hooks. Legends are the stories people tell — the elven vault that was never found, the Bloom Zone that contains a functional pre-Glassfall installation, the First Threshold who disappeared instead of dying.
2. **Not used:** Legends are not history. They may be based on real events, but they've been distorted by retelling. The truth behind a legend is always different from the story.
3. **Player interest:** Long-arc quests, treasure hunts, lore discovery. Legends are the big quest hooks — the things that drive entire story arcs.
4. **Tension:** Truth vs story. Is this legend based on something real? Following it could lead to treasure or to nothing — or to something worse than what the legend describes.
5. **Distinguishes:** Subject and age. A recent legend about a missing person is an investigation. A pre-Glassfall legend about a hidden elven vault is an expedition into the unknown.

### Conspiracy

Theories about hidden truths, secret actors, suppressed knowledge.

**Axes:** Target (faction ↔ event ↔ species ↔ technology) × Proximity to truth (paranoid fantasy ↔ kernel of truth ↔ mostly accurate)

**Density:** Sparse. 2-3 named conspiracy theories that players will encounter.

**Existing:** None.

1. **Used:** Political tension and investigation hooks. Conspiracies are what people believe when the official story doesn't add up — the Glassfall was sabotage, the elves aren't really gone, the Accord is controlled by the Synod's AIs.
2. **Not used:** Conspiracies are not DM truths. Some are close to the truth. Some are completely wrong. The player doesn't know which. (DM entries track which conspiracies are accurate.)
3. **Player interest:** Investigation, political navigation, paranoia. Conspiracies give the player threads to pull on — and the pulling has consequences.
4. **Tension:** Belief. Who believes this? Who benefits from the belief? Conspiracy theories are weapons — factions spread them to discredit rivals and justify their own actions.
5. **Distinguishes:** Target and proximity. A paranoid fantasy about AI mind control is nothing like a mostly-accurate theory about Coremark's role in the Bloom.

---

## Edicts

### Law

Formal legislation, enforceable rules with defined penalties.

**Axes:** Scope (installation ↔ regional ↔ system-wide) × Enforcement (strictly enforced ↔ nominally enforced ↔ widely ignored)

**Density:** Sparse. Named laws are the ones that create friction.

**Existing:** None.

1. **Used:** Constraining action. Laws define what's legal in a jurisdiction — trade regulations, residency requirements, salvage permits, containment zone access restrictions.
2. **Not used:** Laws are not universal. Each settlement, region, and faction has its own laws. The Accord provides a framework, but enforcement is local.
3. **Player interest:** Rules to follow, break, or exploit. Named laws are the specific regulations that affect what the player can do — the salvage permit they need, the trade restriction they want to circumvent.
4. **Tension:** Enforcement gap. The difference between what the law says and what actually happens creates space for corruption, negotiation, and creative interpretation.
5. **Distinguishes:** Scope and enforcement. A strictly enforced system-wide Bloom Zone access restriction is nothing like a nominally enforced local residency requirement that everyone works around.

### Taboo

Social prohibitions, cultural restrictions, unwritten rules.

**Axes:** Scope (cultural ↔ species-specific ↔ universal) × Severity (mild social disapproval ↔ strong ostracism ↔ violence)

**Density:** Sparse. Named taboos should be the ones players accidentally violate.

**Existing:** None.

1. **Used:** Cultural texture. Taboos are the rules nobody wrote down but everyone knows — don't discuss elven engineering in certain ring habs, don't bring ringglass into a gnomish memorial space, don't ask a Sitharian their family's Famine-era history.
2. **Not used:** Taboos are not laws. There's no formal penalty. The consequence is social — disapproval, exclusion, reputation damage. In extreme cases, violence — but that's the exception.
3. **Player interest:** Cultural navigation, social consequences, worldbuilding detail. Taboos are how the player learns that cultures are different — by accidentally violating a rule they didn't know existed.
4. **Tension:** Insider vs outsider. Taboos protect cultural boundaries. Breaking one marks you as an outsider. Respecting one earns trust.
5. **Distinguishes:** Scope and severity. A mild cultural preference about how to address a hab chair is nothing like a species-wide taboo about resonance exposure in sacred spaces that triggers violent response.

### Regulation

Trade rules, operational standards, technical requirements, professional certifications.

**Axes:** Scope (installation ↔ domain-specific ↔ system-wide) × Origin (Accord-mandated ↔ faction-imposed ↔ guild-standard)

**Density:** Sparse. Named regulations are the ones that affect commerce and operations.

**Existing:** None.

1. **Used:** Structuring commerce and industry. Regulations are how the system prevents another Bloom — extraction limits, equipment standards, containment protocols, trade quotas.
2. **Not used:** Regulations are not laws in the criminal sense. Violating a regulation incurs fines, license revocation, or trade restrictions — not imprisonment. The consequence is economic.
3. **Player interest:** Compliance costs, circumvention opportunities, faction leverage. Regulations determine what the player can legally trade, where they can operate, and what certifications they need.
4. **Tension:** Safety vs profit. Every regulation exists because someone died or something went wrong. Loosening regulations increases profit and risk. Tightening them increases safety and cost.
5. **Distinguishes:** Scope and origin. An Accord-mandated system-wide extraction limit is nothing like a guild-standard certification requirement for Shear salvage operators.

---

## Reference Kinds (lighter treatment)

### Species

Already well covered. Axis: biological origin (native ↔ arrived ↔ engineered).

### Culture

**Axes:** Origin (planetary ↔ ring hab ↔ diaspora) × Character (formal ↔ pragmatic ↔ artistic ↔ martial)

**Density:** Moderate.

**Existing:** Sitharian Culture, Hab-Worlder

### Mineral Resource

Crystal, metal, stone, geological materials.

**Axes:** Rarity (common ↔ scarce ↔ unique) × Processing (raw ↔ refined ↔ synthesized)

**Density:** Sparse.

**Existing:** Ringglass, Microcavities

### Biological Resource

Crops, organisms, biological products.

**Axes:** Rarity (common ↔ scarce) × Cultivation (wild ↔ farmed ↔ engineered)

**Density:** Sparse.

**Existing:** Duskgrain

### Refined Resource

Processed materials, energy stores, data storage media.

**Axes:** Input (what it's made from) × Application (industrial ↔ medical ↔ resonance ↔ data)

**Density:** Sparse.

**Existing:** Stillwater

### Resonance Phenomenon

Effects, disruptions, and behaviors specific to the resonance system.

**Axes:** Scale (personal ↔ local ↔ regional) × Danger (benign ↔ hazardous ↔ lethal)

**Density:** Moderate. The resonance system should have enough named phenomena to feel like a real physical system.

**Existing:** Echo Rivers (regional / benign), Bloom Zone distortion (regional / lethal)

### Environmental Phenomenon

Weather, ecology, geological events not specific to resonance.

**Axes:** Predictability (regular ↔ seasonal ↔ rare) × Impact (inconvenience ↔ hazard ↔ catastrophic)

**Density:** Sparse.

**Existing:** Shuttered Habs (social phenomenon — may need reclassifying)

### Ability

Natural or technological capabilities.

**Axes:** Source (resonance ↔ biological ↔ technological) × Accessibility (common skill ↔ rare talent ↔ unique)

**Density:** Sparse.

**Existing:** None standalone.
