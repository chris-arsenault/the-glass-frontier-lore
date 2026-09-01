# Schema — the Glass Frontier's additions to craft/schema/base.rb, which
# already declares the entity kinds, effect verbs and the shared relation
# taxonomy. What lives here is what only means something in the Kaleidos
# system: resonance relations, the Adversary's DM edges, the tag vocabulary,
# and the section headings the base does not carry.
schema do
  # This world was drafted in assisted sessions, so a block that does not say
  # who wrote it was written by a machine. `make provenance` reports against
  # this; a block a person writes declares `drafted_by: :human`.
  drafted_by_default :ai
  require_entity_summaries!
  require_fact_cards! from: :renowned, minimum: 4
  require_gm_notes! from: :forgotten, minimum: 1
  require_encyclopedia_type_kind! atlas_kind: :ability, encyclopedia_kind: :ability
  require_encyclopedia_type_kind! atlas_kind: :phenomenon, encyclopedia_kind: :phenomenon
  require_playable_coverage! :chronicle_location,
                             kinds: location_kinds,
                             except: %i[
                               kaleidos kaleidos_echo_rivers kaleidos_system room_before_the_ice
                               spreading_front the_glass_frontier the_sun
                             ],
                             exclusive: true
  require_context_tags! for_playable: :chronicle_location
  require_playable_count! :species, minimum: 5, maximum: 8
  require_playable_count! :culture, minimum: 4, maximum: 8
  require_playable_count! :homeland, minimum: 8, maximum: 12
  require_playable_count! :allegiance, minimum: 6, maximum: 10
  require_focus_choices! role: :chronicle_location,
                         minimum: 10,
                         veiled_minimum_locations: 1,
                         veiled_maximum_locations: 4,
                         veiled_majority_location_count: 2,
                         veiled_cross_location_minimum: 1,
                         veiled_required_kinds: %i[
                           artifact conflict creature edict era faction incident npc rumor transport
                         ],
                         veiled_require_all_subkinds: true,
                         veiled_kind_minimum: 8,
                         veiled_kind_maximum: 64

  extend_encyclopedia_kind :lifeform do
    field :function, type: :text, expected: false
    field :resonance_relation, type: :text, label: "Resonance", expected: false
    field :principal_accommodation, type: :text, label: "Principal Accommodation", expected: false
  end

  extend_encyclopedia_kind :culture do
    classifications :cultural_identity, :social_order, :governance, :belief,
                    :expressive_tradition, :material_life, :work_tradition,
                    :collective_standing
  end

  extend_encyclopedia_kind :role do
    classifications :profession, :office, :community_duty, :social_station,
                    :earned_designation
  end

  extend_encyclopedia_kind :phenomenon do
    field :function, type: :text, expected: false
    field :nature, type: :text, expected: false
    field :known_forms, type: :text, label: "Known Forms", expected: false
    field :operating_limit, type: :text, label: "Known Limit", expected: false
  end

  extend_encyclopedia_kind :ability do
    # Resonant effects are spells. Each spell occupies one bandwidth tier;
    # innate sensitivities and learned practices do not.
    classifications :resonant_effect, :innate_sensitivity,
                    :technique, :sensory_training, :operational_method, :verification_method
    tiered_classifications :resonant_effect
    tier :broad, rank: 1,
                 description: "Wide-band spellwork tolerant of coarse tuning and low-grade ringglass."
    tier :focused, rank: 2,
                   description: "Reduced-band spellwork requiring trained control or a prepared medium."
    tier :narrow, rank: 3,
                  description: "Tightly concentrated spellwork producing effects outside ordinary workshop practice."
  end

  # Placement vocabulary: properties of a place, then functions a place
  # serves. Encyclopedia availability selects over these; every tag below is
  # justified by entries that need it, none by speculation.

  # Physical properties.
  context_tag :surface,
              "Open ground and built places on a planetary surface.",
              scopes: :place
  context_tag :orbital,
              "Places reached and sustained in orbit or free space.",
              scopes: :place
  context_tag :outer_system,
              "Worlds, stations, and routes beyond the central ring region.",
              scopes: :place
  context_tag :sealed_hab,
              "Enclosed living space with managed air and structure: ring habitats, sealed stations, shuttered decks.",
              scopes: :place
  context_tag :hot,
              "Dangerous heat, charged dust, or open thermal industry.",
              scopes: :place
  context_tag :cold,
              "Deep cold: ice routes, unheated hulls, freezing storage.",
              scopes: :place
  context_tag :waterway,
              "Rivers, channels, deltas, and the working spaces on and beside them.",
              scopes: :place
  context_tag :debris_field,
              "Ring debris and the salvage regions and routes threading it.",
              scopes: :place
  context_tag :bloom_adjacent,
              "Within reach of a Bloom Zone boundary and its cordon discipline.",
              scopes: :place
  context_tag :ringglass_rich,
              "Ground, water, or structure carrying concentrated ringglass.",
              scopes: :place
  context_tag :displacement_zone,
              "Places where rooms and passages shift, open wrongly, or shed contents.",
              scopes: :place
  context_tag :garden,
              "Cultivated growing space: garden habitats, graft networks, farm settlements.",
              scopes: :place
  context_tag :unstable_route,
              "Roads and passages that move, decay, or lose their markers.",
              scopes: :place
  context_tag :damaged_signal,
              "Broken relays, dead beacons, and corrupted transmission lines.",
              scopes: :place
  context_tag :urban,
              "Dense settled fabric: packed streets, shared walls, drains, crowds.",
              scopes: :place

  # Place functions.
  context_tag :dock,
              "Berths, moorings, and transfer floors where vessels load and unload.",
              scopes: :place
  context_tag :yard,
              "Industrial working ground: rigging yards, workshops, refineries, cutting floors.",
              scopes: :place
  context_tag :archive,
              "Rooms and institutions that keep records under custody.",
              scopes: :place
  context_tag :market,
              "Exchanges, trade floors, and the public rooms where goods change hands.",
              scopes: :place
  context_tag :road,
              "Freight and passenger routes and the stops that serve them.",
              scopes: :place
  context_tag :cordon,
              "Watched hazard boundaries and the posts that hold them.",
              scopes: :place

  # Resonance is a physical force here, so attunement and sympathy are real
  # edges rather than metaphors.
  relation :attuned_to, category: :technical, temporal: false
  relation :resonates_with, category: :narrative, temporal: false
  extend_relation :terminus_of,
                  domain: location_kinds,
                  range: :installation,
                  description: "The source place is an endpoint of the target route"
  extend_relation :bears,
                  domain: :npc,
                  range: :ability,
                  description: "A person who currently or formerly bears a named mantle"

  # DM-only. Where the False Form reaches through, and who is avoiding whom.
  relation :hiding_from, category: :dm, temporal: false
  relation :seeping_through, category: :dm, temporal: false

  extend_subkind :faction, :government do
    field :mandate, type: :text, expected: false
    field :authority, type: :text, expected: false
  end

  extend_subkind :faction, :civic_body do
    field :mandate, type: :text, expected: false
    field :dissolved, type: :year, expected: false
    field :successors, type: :entities, expected: false
  end

  extend_subkind :geographic_location, :star_system do
    field :planet_count, type: :integer, label: "Planets", expected: false
    field :inner_to_outer_transit, type: :text, label: "Inner-to-Outer Transit", expected: false
  end

  extend_subkind :geographic_location, :world_region do
    field :form, type: :text, expected: false
    field :population_pattern, type: :text, label: "Population", expected: false
    field :principal_hazards, type: :text, label: "Principal Hazards", expected: false
  end

  extend_subkind :geographic_location, :hazardous_zone do
    field :nature, type: :text, expected: false
    field :first_recorded, type: :year, label: "First Recorded", expected: false
    field :containment_status, type: :text, label: "Containment", expected: false
  end

  extend_subkind :geographic_location, :frontier do
    field :setting, type: :text, expected: false
    field :extent, type: :text, expected: false
    field :main_industry, type: :text, label: "Main Industry", expected: false
    field :principal_hazards, type: :text, label: "Principal Hazards", expected: false
  end

  extend_subkind :installation, :settlement do
    field :population_band, type: :text, label: "Population", expected: false
    field :role, type: :text, expected: false
    field :setting, type: :text, expected: false
    field :access, type: :text, expected: false
  end

  extend_subkind :phenomenon, :physical_phenomenon do
    field :medium, type: :text, expected: false
    field :content, type: :text, expected: false
    field :hazard, type: :text, expected: false
  end

  extend_subkind :resource, :material do
    field :grades, type: :text, expected: false
    field :availability, type: :text, expected: false
  end

  extend_subkind :resource, :device do
    field :classes, type: :text, expected: false
    field :operating_environments, type: :text, label: "Operating Environments", expected: false
    field :operating_limit, type: :text, label: "Operating Limit", expected: false
  end

  # Descriptive identity is local to each Atlas entity. Classification does
  # not copy values from Encyclopedia entries.
  extend_kind :npc do
    identity_key :appearance
    identity_key :attire
    identity_key :tools
    identity_key :manner
    identity_key :disposition
  end

  # Scene-anchoring dictionaries for the rest of the atlas. Every key holds
  # compact description a scene can narrate from; all optional, distilled from
  # each entry's own canon. Variety is the premise — no source templates.
  extend_kind :installation do
    identity_key :setting
    identity_key :activity
    identity_key :access
    identity_key :hazards
  end

  extend_kind :geographic_location do
    identity_key :setting
    identity_key :activity
    identity_key :hazards
  end

  extend_kind :faction do
    identity_key :ideology
    identity_key :methods
    identity_key :presence
    identity_key :attitude
  end

  extend_kind :transport do
    identity_key :appearance
    identity_key :aboard
    identity_key :behavior
  end

  extend_kind :artifact do
    identity_key :appearance
    identity_key :handling
    identity_key :risks
  end

  extend_kind :creature do
    identity_key :appearance
    identity_key :behavior
    identity_key :threat
  end

  extend_kind :resource do
    identity_key :appearance
    identity_key :working
    identity_key :risks
  end

  extend_kind :ability do
    subkind :the_three, label: "Faith — The Three"
    subkind :the_adversary, label: "Shadow — The Adversary"
    identity_key :signs
    identity_key :effect
    identity_key :limits
  end

  extend_kind :phenomenon do
    identity_key :signs
    identity_key :effects
    identity_key :hazards
  end

  extend_kind :incident do
    identity_key :marks
    identity_key :stakes
  end

  extend_kind :conflict do
    identity_key :cause
    identity_key :intensity
    identity_key :conduct
  end

  tag :AI, "Artificial intelligence, custodian systems"
  tag :activism, "Political resistance, reform movements"
  tag :archives, "Record-keeping, history preservation, memory"
  tag :catastrophe, "Destructive events"
  tag :cosmology, "The fundamental order of reality; metaphysics of resonance, the Three Forms, the wider cosmic order"
  tag :danger, "High-risk environment or situation"
  tag :diplomacy, "Inter-faction or inter-settlement negotiation"
  tag :divergence, "Cultural drift between isolated communities"
  tag :ecology, "Environmental stewardship, conservation"
  tag :"fluid-reality", "Physics/reality is loosened or mutable at this location"
  tag :founding, "Origin events, establishment"
  tag :governance, "Political systems, authority structures, law"
  tag :household, "Everyday items, domestic technology"
  tag :isolation, "Signal Famine era disconnection"
  tag :"kinetic-freq", "Mid-band resonance; motion, heat, force"
  tag :legend, "Passed into myth; historicity debated by general population"
  tag :materials, "Physical resources, raw or processed"
  tag :military, "Armed forces, warships, defense"
  tag :music, "Music as cultural or structural force"
  tag :mystery, "Unexplained gaps, unsolved questions, active investigation"
  tag :navigation, "Wayfinding, piloting, route knowledge"
  tag :orbital, "In orbit, the ring, or the Shear"
  tag :origin, "Origin story or inciting incident for current state"
  tag :"outer-system", "Beyond Kaleidos orbit"
  tag :rebuilding, "Reclamation-era reconnection and reconstruction"
  tag :religion, "Belief systems, spiritual practice"
  tag :resonance, "Involves the resonance energy system"
  tag :"ring-era", "Predates the Glassfall; original builder technology"
  tag :"ring-hab", "A habitat on the Glass Frontier ring fragments"
  tag :ringglass, "Involves ringglass as a material or commodity"
  tag :salvage, "Shear salvage operations, scavenging"
  tag :"signal-freq", "High-band resonance; communication, data, memory"
  tag :"social-structure", "Class, caste, citizenship, social hierarchy"
  tag :species, "Intelligent species, biology, racial characteristics"
  tag :"structural-freq", "Low-band resonance; reinforcement, building"
  tag :surface, "Located on Kaleidos's planetary surface"
  tag :trade, "Commerce, supply chains, economics"
  tag :training, "Education, apprenticeship, attunement learning"
  tag :transport, "Ships, trade routes, logistics infrastructure"

  section_heading :resonance
  section_heading :the_third_panel

  # Glass Frontier has completed the Atlas/Encyclopedia split. Other worlds
  # may continue using the shared species, culture, and concept definitions
  # until their own migrations are complete.
  restrict_entity_kinds! to: %i[
    ability artifact conflict creature edict era faction geographic_location incident installation
    npc phenomenon resource rumor transport loop theme thread
  ]
end

naming_lexicon do
  note "A Glass Frontier name should sound like it belongs to Kaleidos even when it appears outside its article."
  note "Build a learnable vocabulary across entries. Reuse a word when the subjects genuinely share its Glass Frontier meaning; otherwise invent or repurpose a term with its own sound and use."
  note "A compound succeeds when it extends this vocabulary. Resonance Cascade works because resonance already names the setting's central physical system; two ordinary descriptive words do not gain identity merely by being joined."

  extension "This declaration records the vocabulary established so far; it is not an allowlist. Add a word or pattern when a recurring culture, place family, practice, material, or institution needs language the current entries cannot supply."
  extension "Read the relevant canon and neighboring names, define the new word's meaning or the new family's morphology, and add its first canonical examples and boundary in the same change. Put claims about in-world language or naming history in the Encyclopedia entry that owns them."
  extension "Do not stretch an existing word beyond its meaning to avoid extending the lexicon. A lone subject may need a distinctive proper name without creating a productive root; declare a new root or pattern when it can organize a coherent family."

  word :resonance,
       meaning: "The ambient force carried and shaped through the Kaleidos system.",
       use: "The central productive term for effects, instruments, practices, and failures that directly concern that force.",
       examples: ["Resonance", "Resonance Cascade", "Resonant Tuner"],
       boundary: "Use only when resonance itself governs the subject, not as a synonym for mysterious, energetic, or technological."
  word :ringglass,
       meaning: "The crystalline material of the broken orbital ring and the main medium for resonance.",
       use: "An invented material word for subjects whose identity comes from the material, its working, or its trade.",
       examples: ["Ringglass", "Ringglass Fines", "Ringglass Burrower"],
       boundary: "Do not attach glass or ringglass to a subject merely because it exists in Kaleidos or uses a small amount of the material."
  word :bloom,
       meaning: "The spreading, self-amplifying expression of resonance first fixed in public memory by the Silent Bloom.",
       use: "A historical and physical root for later zones, institutions, and practices that descend from that event.",
       examples: ["Silent Bloom", "Bloom Zones", "Bloom Coalition", "Bloomgrazer"],
       boundary: "Reserve it for direct physical expressions or historical descendants of the Silent Bloom, not anything that spreads or grows."
  word :shear,
       meaning: "The debris region of the broken ring, with Deep Shear naming its most distorted reaches.",
       use: "A repurposed ordinary word shared by geography and the work vocabulary of people who travel and salvage there.",
       examples: ["The Shear", "Deep Shear", "Shearfolk", "Sheareel"],
       boundary: "Use for the debris region and the lives and trades materially shaped by it, not as a general marker of damage or danger."
  word :sithari,
       meaning: "The capital city-state and the civic culture whose institutions carry Sitharian forms across Kaleidos.",
       use: "A proper root for the city, its people, and institutions or naming forms that directly derive from its civic culture.",
       examples: ["Sithari", "Sitharian", "Sitharian names"],
       boundary: "Do not use Sitharian as a general label for formal, legal, wealthy, or system-wide subjects without direct civic origin."
  word :standing,
       meaning: "The recognized trust, authority, or credit that lets a person, record, office, or obligation be acted on.",
       use: "A familiar word with a stable Kaleidos meaning across trade, law, custody, and public office.",
       examples: ["Commercial Standing", "Custodial Standing", "Portable Standing", "Shipboard Standing"],
       boundary: "Use for recognized capacity that other people or institutions act upon, not status in the general sense."
  word :tune,
       meaning: "The coherent resonance condition held by a structure, device, room, voice, or practice.",
       use: "A familiar musical word extended into physical and working speech; tuning names acts that establish or alter that condition.",
       examples: ["Resonant Tuners", "Attunement", "a room's tune", "tuned ringglass"],
       boundary: "Use for establishing, reading, or changing coherent resonance, not for any musical or technical adjustment."

  word :signal,
       meaning: "The high resonance band that carries communication, memory, and fine control.",
       use: "A band name for subjects whose mechanism depends specifically on encoded or remembered resonance.",
       examples: ["Signal Tides", "Signal Folding", "Signal Famine"],
       boundary: "Do not use signal for ordinary messages, warnings, or visual signs when the resonance band does not govern the subject."
  word :kinetic,
       meaning: "The resonance band that redirects motion, drag, weight, and applied force.",
       use: "A band name for instruments and practices that act directly on motion or force.",
       examples: ["Kinetic Horn", "kinetic-band resonance"],
       boundary: "Use for the declared resonance band, not as a general synonym for moving, violent, or energetic."
  word :structural,
       meaning: "The resonance band that reads and alters how matter bears load and holds together.",
       use: "A band name for direct work on material bonds, support, and failure.",
       examples: ["structural drums", "structural-band work"],
       boundary: "Use for the declared resonance band, not for every building, frame, or engineering practice."
  word :will,
       meaning: "The Three Forms' red principle of directed motion, chosen action, and force brought toward a purpose.",
       use: "A doctrinal root for powers, practices, and conflicts in which directed purpose governs kinetic work or another subject's action.",
       examples: ["The Triangulum — the geometry of Will", "Outside Will", "the Red Sovereign's Will"],
       boundary: "Use for the defined Three Forms principle, not as a grander synonym for intention, courage, command, or desire."
  word :tone,
       meaning: "A resonance response made audible or treated as a held pitch by working instruments.",
       use: "A resonance-adjacent root for instruments, readings, and civic sound whose pitch carries a physical condition.",
       examples: ["Town Tone", "gate tones", "a room's tone"],
       boundary: "The sound must carry or reveal a real resonance condition; mood, style, and ordinary music do not qualify."
  word :singing,
       meaning: "The practiced use of voice or audible material response to read and govern force carried through resonance.",
       use: "A working root for people, abilities, and materials whose sounded pitch directly measures or changes a load.",
       examples: ["Load Singing", "Load Singers", "Vitrael Singing Burrower"],
       boundary: "Use only when audible pitch reads or alters carried force, not for ordinary music, humming machinery, or decorative sound."
  word :load,
       meaning: "Force or burden as something resonance work can hear, carry, redirect, or return.",
       use: "A resonance-adjacent working root for effects, readings, and practices governed by carried force.",
       examples: ["Load Singing", "Load Listening", "The Load Note", "Seven-New Load"],
       boundary: "Use when the distribution of force is the subject's mechanism, not for cargo or difficulty in general."
  word :groundsong,
       meaning: "The slow structural-band vibration carried through Korvath's river mud and read as a seasonal voice in the bed.",
       use: "A regional physics root for named events, instruments, and practices whose operation directly answers that vibration.",
       examples: ["Korvath Groundsong", "Dovra Groundsong"],
       boundary: "Use for the Korvath waterway vibration and devices built around it, not for every tremor, resonant floor, or sound transmitted through ground."
  word :still,
       meaning: "A deliberately damped condition in which resonance movement is suppressed or given somewhere else to return.",
       use: "A productive root for damping materials, equipment, roles, and weather defined by that condition.",
       examples: ["Stilling", "Stillwater", "Stillhull", "Stillweight", "Still Diver", "Still Mornings"],
       boundary: "Use for active resonance damping or its direct material consequences, not merely for quiet, rest, or immobility."
  word :echo,
       meaning: "A retained signal or resonance pattern that repeats after its first source has passed.",
       use: "A productive root for life, materials, instruments, archives, and places directly organized by remembered signal.",
       examples: ["Echo Rivers", "Echo Silk", "Echo Strip", "Echo Spinner", "Echo Ledger Conclave"],
       boundary: "Use for a physically retained or repeated pattern, not for resemblance, memory, or repetition in the abstract."
  word :claim,
       meaning: "A publicly legible right to recover, hold, work, or receive a particular thing.",
       use: "A legal and salvage root for practices, records, effects, and tools whose operation depends on that right.",
       examples: ["Claims", "Claim Coupling", "Doorstep Claimants", "White-Line Claim"],
       boundary: "Use when a specific asserted right governs the subject, not for desire, possession, or territorial ambition alone."
  word :knot,
       meaning: "A Ravel pipe animal that wraps itself around a leak or loose joint and holds the line closed until working pressure returns.",
       use: "A hab working word for the animal type and the names of long-lived individual animals in water-office registers.",
       examples: ["Knots", "Nine-Knot"],
       boundary: "Use for the Ravel pipe animals and their individual names, not for cords, ties, crossings, or any object with a knotted shape."
  word :custody,
       meaning: "The accountable keeping of a person, object, record, or process under a traceable chain of responsibility.",
       use: "An institutional root for offices, records, standing, and procedures that preserve responsibility through transfer.",
       examples: ["Custody", "Custodial Standing", "custody record"],
       boundary: "Use for documented responsibility and controlled transfer, not for ownership, storage, or care by themselves."
  word :witness,
       meaning: "A person, record, or physical trace that keeps an event answerable after it has passed.",
       use: "An evidentiary root for practices, offices, records, and powers that preserve or recover what occurred.",
       examples: ["Witnessing", "The Far Witness", "The Meridian Witness Spool"],
       boundary: "Use when the subject can attest to an event through retained evidence or direct perception, not as a synonym for seeing or being present."
  word :waybearing,
       meaning: "Making genuinely known destinations adjacent so people, vessels, matter, and danger can cross without traversing the intervening distance.",
       use: "A resonance vocabulary shared by the general effect and the mantle that can sustain it at fleet scale.",
       examples: ["Waybearing", "The Waybearer"],
       boundary: "Use for the defined adjacency effect and its bearer, not for travel, navigation, roads, or route knowledge in general."
  word :hourtaking,
       meaning: "Taking duration from a present physical process, living that interval, and assigning it to another process or action.",
       use: "A resonance vocabulary shared by the general effect and the mantle that can take hours from cities, armies, and catastrophes.",
       examples: ["Hourtaking", "The Thief of Hours"],
       boundary: "Use for the defined transfer of physical duration and its bearer, not for delay, haste, aging, timekeeping, or historical travel."
  word :manyflesh,
       meaning: "A living anatomy made changeable while the body remains alive, viable, and conscious through the work.",
       use: "The ability family joining individual alteration to the mantle that can impose one viable body across a population.",
       examples: ["Manyflesh", "The Many-Fleshed"],
       boundary: "Use for this living anatomical rewrite and its bearer, not for ordinary surgery, grafting, disguise, shapeshifting, or biological variety."
  word :dustline,
       meaning: "The angled trace left when glass grit settles into the retained kinetic grain of a buried road.",
       use: "An Avar-derived route word for the trace, the craft of reading it, and the trained reader.",
       examples: ["dustline", "Dustlining", "The Avar Dustliner"],
       boundary: "Use for old roadbeds recovered from aligned grit deposits, not for dusty routes, mapped lines, storms, or ordinary tracking."
  word :afterseeing,
       meaning: "The involuntary retention of a moving object's last outline, position, and heading after it leaves sight.",
       use: "The Fracture trade's word for the sensitivity and the afterseers rostered to work from its fading ghost-lines.",
       examples: ["Afterseeing", "The Ashenmaw Afterseer"],
       boundary: "Use for this measured visual retention, not for memory, prediction, foresight, lingering glare, or a general lookout."
  word :warmline,
       meaning: "The faint thermal trace a live ring conduit leaves in the soil or stone around it.",
       use: "The recovery trade's word for the trace, the tactile survey craft that follows it, and the trained reader.",
       examples: ["warmline", "Warmlining", "The Noll Warmliner"],
       boundary: "Use for live buried conduits mapped through their steady heat, not for weather, ordinary hot pipes, visible routes, or thermal imaging in general."
  word :hab,
       meaning: "A sealed habitat understood as a lived civic body as well as a pressure vessel.",
       use: "A clipped common root for habitat peoples, institutions, places, and failures shaped by sealed communal life.",
       examples: ["hab names", "Hab-Worlders", "Shuttered Habs", "the habs"],
       boundary: "Use for sealed habitats and the cultures formed within them, not for every settlement, station, or enclosed room."
  word :rill,
       meaning: "A narrow managed watercourse whose flow joins household, route, and civic obligation.",
       use: "A water-culture root for communities, practices, and sites directly organized around those channels.",
       examples: ["Rill Households", "Rill Calling", "Perch Rill"],
       boundary: "Use for the managed watercourses and their social systems, not as a decorative synonym for any stream or pipe."
  word :underturn,
       meaning: "An intact exchange in which one layer or loaded volume takes another's place without crossing the matter between them.",
       use: "The displacement services' family word for complete layer exchanges and the named Ravel field that repeats one under load.",
       examples: ["Underturns", "Ravel Underturn"],
       boundary: "Use for complete exchanges of layered positions or matched loaded volumes, not for ordinary inversion, rotation, excavation, or every displacement event."
  word :olddown,
       meaning: "The original gravity direction of a ring section, preserved after the Glassfall in plans, structures, and some anomalous animals.",
       use: "A restoration-trade bearing and the class word for animals whose weight continues to follow it.",
       examples: ["old down", "Olddowns", "The Eleven Olddown"],
       boundary: "Use for the former ring orientation and the animals that physically reveal it, not for nostalgia, ancestry, age, or present local gravity."
  word :farglass,
       meaning: "A matched pair of ring-era panes that show what stands before the other pane across any distance.",
       use: "An invented technology root for the panes and offices whose identity depends on serving them.",
       examples: ["Farglass", "Farglass Attendant"],
       boundary: "Use only for the paired panes and their direct custodial practice, not for telescopes, remote sight, or distant communication generally."
  word :ve,
       meaning: "The pitched link joining names in surviving elven ancestral chains.",
       use: "A compact elven root for the chain form and the certified work of reading it.",
       examples: ["Thaliraea ve Samaethis ve Loriendi", "Ve-Speaker", "ve-link"],
       boundary: "Use only for the audible link in elven name chains and practices that read it; it is not a general elven ornament."
  word :khar,
       meaning: "The Ashvane herding name for the plated highland animal that reads heat through stone.",
       use: "An invented biological root shared by the animal and the anomaly that joins its herds.",
       examples: ["Khar", "Khar Mimic"],
       boundary: "Use for the khar animal and things that specifically imitate or descend from it, not as a general Ashvane or hot-country prefix."
  word :ratter,
       meaning: "An independent salvage identity built around small crews, recoverable claims, and refusal of company command.",
       use: "A cultural root for the people, their crews, and institutions that arise from their salvage practice.",
       examples: ["Ratters", "Ratter Order", "Ratter crews"],
       boundary: "Use for the established independent salvage culture, not as a generic term for scavengers, salvagers, or rough crews."
  word :spider,
       meaning: "An Avar walking freight carrier whose independently weighted feet sound unstable ground before taking load.",
       use: "The Road People's class word for the vehicles, their cargo slings, and the convoys built around them.",
       examples: ["Spiders", "Blue Spider", "spider slings", "spider convoys"],
       boundary: "Use for the Avar-derived walking freight class and its equipment, not for web-building animals or any many-legged machine."
  word :hook,
       meaning: "A freight car whose articulated heads walk the Keel's rolled-lip trunk rails and ride its standing drift.",
       use: "The Keel trade's class word for its cars, freight, traffic, and crews.",
       examples: ["Hook", "The Third Latch Hook", "hook freight", "hook crews"],
       boundary: "Use for the Keel rail cars and their trade, not for ordinary hooks, grapples, or unrelated rail vehicles."
  word :kite,
       meaning: "The Kaleidos motive principle and the craft forms whose control surfaces redirect kinetic resistance.",
       use: "A transport root extended to vehicles, guilds, and living forms whose shape or motion is understood through the system's kites.",
       examples: ["Kite Sail", "Bulk Kite", "Prismwell Kite Guild", "Marrow Kite"],
       boundary: "Use when kinetic redirection or the recognizable kite form governs the subject, not as a decorative name for any flyer."
  word :clearance,
       meaning: "The numbered release discipline and civic identity established at Clearance Eight.",
       use: "A proper institutional root for the settlement and procedures or phenomena directly descended from its custody system.",
       examples: ["Clearance Eight", "Clearance Catch", "Clearance Hunger"],
       boundary: "Use for Clearance Eight and its institutional descendants, not for permission, open space, or release in general."
  word :tally,
       meaning: "A freight count or attestation kept in a form that can be checked against the load, route, or delivery it records.",
       use: "A Carom and Rattle freight word shared by records, weighing media, their tools, and names earned through counted delivery work.",
       examples: ["Tally Dust", "The Exchange C Tally Bowl", "the ship Tally", "route tallies"],
       boundary: "Use for freight counts and the things that materially keep or prove them, not as a decorative synonym for number, score, ledger, or calculation."

  pattern :sitharian_names,
          "Personal and family names use flowing personal and family forms.",
          examples: ["Senna Korvanis", "Aven Talindra", "Jorin Meraleth"],
          boundary: "Applies to Sitharian personal and family names; share the morphology without copying one suffix mechanically."
  pattern :hab_names,
          "Short names and clipped second elements survive shouted warnings and crowded channels.",
          examples: ["Dern Talish", "Sable Korr", "Dez Morrn"],
          boundary: "Each hab develops its own family; these examples do not define one universal Hab-Worlder generator."
  pattern :gnomish_names,
          "Apostrophes mark audible harmonic turns rather than visual ornament.",
          examples: ["T'vekis", "Chel'sten", "Zar'vel'eki"],
          boundary: "The marked break must belong to pronunciation; do not add apostrophes to make an unrelated name look gnomish."
  pattern :elven_names,
          "Surviving names form ve-linked ancestral chains with long melodic forms.",
          examples: ["Thaliraea ve Samaethis ve Loriendi"],
          boundary: "This is a surviving elven record form, not a productive pattern for present-day non-elven names."
  pattern :water_stage_names,
          "Resource trades use numbered water terms for materially distinct stages in water's passage through the broken system.",
          examples: ["First Water", "Last Water"],
          boundary: "Use only when the resource is itself a recognized stage of water: sealed ring-era supply or the salt left by the final evaporation basin. Do not extend the pattern to grades, routes, wells, drinks, or unrelated liquids."
  pattern :clarisant_spell_names,
          "Clarisant registries favor a short ordinary word shifted into the technical name of one reproducible casting; trade-kept and Tessellan-derived spells retain the language of their owners.",
          examples: ["Step", "Echoing", "Mending", "Seaming", "Stay", "Unclosing", "Signal Folding", "Crucible Veiling", "Outside Will"],
          boundary: "The word must name the spell's particular operation in established use. This pattern does not justify a generic verb chosen before the casting has a bounded identity, and it does not turn every stronger use of that operation into another spell."
  avoid "Do not name a creature, role, tool, practice, or phenomenon by attaching one relevant ordinary word to its generic category: Root Crab, Cable Fox, and Cold Count are descriptions shaped like names."
  avoid "Do not treat root, cable, cold, glass, ash, signal, white, shade, or another recurring image as a naming prefix. A word belongs in a name only when its declared setting meaning governs the subject."
  avoid "Do not keep a weak construction because the article can supply an origin story, and do not repair it by stripping it to Crab, Fox, Count, or another bare category. Find the setting term or name family the subject should contribute to."
end

# Fixed chart coordinates. The system frame uses orbital rank rather than a
# physical distance; its angles separate bodies on a readable present-day map
# and do not imply orbital mechanics. Surface frames use ordinary degrees.
spatial_frame :kaleidos_system_chart,
              origin: :the_sun,
              coordinates: :polar,
              radial_unit: :orbit_rank

spatial_frame :kaleidos_surface,
              origin: :kaleidos,
              parent: :kaleidos_system_chart,
              coordinates: :surface,
              prime_meridian: :sithari

spatial_frame :ashvane_surface,
              origin: :ashvane,
              parent: :kaleidos_system_chart,
              coordinates: :surface,
              prime_meridian: :shadewell
