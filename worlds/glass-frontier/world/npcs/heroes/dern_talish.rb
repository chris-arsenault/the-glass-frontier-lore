npc :dern_talish do
  name "Dern Talish"
  path "player/npcs/heroes/dern-talish.md"
  reviewed "2026-03-18"
  tags :governance, :resonance, :diplomacy
  prominence :recognized

  question "Degree 6, and no personal cloud: the cordon section she patrolled for twenty years, her hab of origin, a colleague from cordon operations, the convoys she turned away and who sent them. A viewpoint needs forgotten/marginal shells only she connects to."
  question "Oram Sells is a future marker in three entries — the second First Threshold who read her in before dying of Bloom exposure. He needs an entity, and his eleven-year tenure has to land inside the Council's real dates (formed 2380, took the cordons 2384, Dern is the fourth)."
  narrative_role "viewpoint"
  species "human"
  culture "hab-worlder"

  prose <<~PROSE
    *First Threshold of the Displacement Council.*

    The title is as unglamorous as the organization. "First Threshold" — the person who stands at the boundary and decides what crosses it. In practice, it means Dern Talish is responsible for every containment cordon around every Bloom Zone in the system, for the welfare of every Council operative maintaining those cordons, and for the political neutrality that keeps the Council trusted by factions that trust nothing else.

    She does not enjoy the job. She is very good at it.
  PROSE
  prose <<~PROSE, section: :public_profile, heading: "Public Profile"
    Talish is the face the Displacement Council shows the system. She appears at Accord mediations, addresses inter-settlement disputes that touch on Bloom Zone policy, and periodically tours the cordon stations to inspect operations and — more importantly — to be seen inspecting them. The Council's authority depends on the perception that it takes its work seriously and plays no favorites. Talish embodies this with a directness that some find reassuring and others find abrasive. She is in her late fifties, human, and carries the registration tattoo that all Bloom evacuees received, faded to near-invisibility on her left wrist. She has never had it removed.
  PROSE
  prose <<~PROSE, section: :public_profile, heading: "What People See"
    A quiet, compact woman who listens more than she speaks and whose silences are more informative than most people's sentences. She does not raise her voice. She does not negotiate from a position of ideology. When factions bring their grievances to the Council, Talish asks what they need, asks what they can give, and finds the gap between the two. Her authority comes from reliability rather than charisma — and from a neutrality, tested in the Bitter Reach, that nobody has been able to buy or break since.
  PROSE
  prose <<~PROSE, section: :traits, heading: "Notable Traits"
    - Never eats during meetings. Will accept water. Considers shared meals a form of political intimacy she cannot afford.
    - Keeps a collection of small objects recovered from Bloom Zone perimeters — not relics, just debris. A child's toy. A door handle. A clock that still ticks at the wrong speed.
    - Her hand tremor is worse when she's tired. She compensates by keeping her right hand in her pocket or wrapped around a cup. Most people who meet her think she's just reserved. The cordon crews know what it means.
    - Speaks three languages fluently and understands fragments of two more, including one that linguists cannot identify. She picked it up from Echo River exposure during a containment operation.
  PROSE

  # ---- Hidden (DM) truth ----
  prose <<~PROSE, section: :truth, heading: "The Arrangement", dm: true
    Talish maintains direct communication with elven operations through the shard — a pre-Glassfall artifact that the elves provided to the first First Threshold during the early Bloom response, when it became clear they needed a human counterpart. The shard cannot be replicated. If it's lost, the contact channel is lost. Talish keeps it on her person at all times, disguised as a personal keepsake.

    The cooperation is operational, not warm. The elves provide:
    - Early warning on Adversary activity in the Bloom Zones
    - Resonance countermeasures that the Council's own technicians couldn't develop
    - Occasional direct intervention during containment crises (always deniable, always after the fact)
    - Intelligence on Coremark artifact smuggling routes

    Talish provides:
    - Cover. The Council's cordon operations mask elven movements in and around the zones.
    - Access. Council credentials get elven operatives past checkpoints without scrutiny.
    - Misdirection. When containment succeeds "unexpectedly well," Talish writes reports attributing the success to equipment upgrades or favorable conditions.
  PROSE
  prose <<~PROSE, section: :truth, heading: "What She Knows", dm: true
    Talish knows the Adversary exists and is seeping through the Bloom Zone reality tears. She knows the elves are fighting a hidden war. She knows the Bloom Zones are getting worse — the tears are widening slowly, and containment is a holding action, not a solution. She knows the elves have veto power over her successor, and she understands why.

    She does not know what the Adversary is. The elves have not told her. She has asked. They declined. This is the single greatest source of friction in the relationship — Talish is risking everything on an alliance with people who will not fully explain what she's fighting.

    She has accepted this. She has not forgiven it.
  PROSE
  prose <<~PROSE, section: :truth, heading: "The Language", dm: true
    The "unidentified language" in her public profile is Elvish. She picked up fragments from her elven contacts, not from Echo River exposure — though the Echo River cover story is convenient and technically defensible, since some deep-deposit river fragments do carry elven speech. She understands enough to follow operational communications. She cannot speak it well. The elves find her pronunciation endearing, which she finds patronizing, which they find amusing. It is the closest thing to warmth in the relationship.
  PROSE
  prose <<~PROSE, section: :truth, heading: "The Hand", dm: true
    Her tremor is real — genuine Bloom Zone exposure damage. It is not, however, as bad as she lets people believe. She exaggerates it slightly because a visible frailty makes her seem more human and less threatening to the factions she mediates between. A leader who is clearly paying a physical price for the work earns a specific kind of trust. Talish is not above exploiting this.
  PROSE
  prose <<~PROSE, section: :truth, heading: "The Collection", dm: true
    The objects she keeps from the Bloom Zone perimeters are real and meaningful to her, but not for the sentimental reasons people assume. Several of them are resonance-anomalous — they behave in ways that shouldn't be possible according to standard ringglass theory. She studies them privately. They are her personal evidence that the zones are changing, that reality is degrading faster than the official reports suggest. She shares this analysis with the elves. She does not share it with the Council.
  PROSE
  prose <<~PROSE, section: :usage_notes, heading: "DM Usage Notes", dm: true
    - Talish is a potential patron, quest-giver, or reluctant ally. She will not reveal the elven secret to PCs unless extreme circumstances force it — and even then, she'll agonize.
    - Her tremor and the collection are tells. An observant PC might notice the tremor is inconsistent, or that her "keepsakes" behave strangely.
    - The communication shard is a plot device. If it's stolen or compromised, the elven contact channel goes dark. The elves would consider this a catastrophic breach.
    - Her frustration with the elves' refusal to explain the Adversary is a potential wedge. A PC who can offer answers — or claims to — would have her attention immediately.
    - She is fundamentally good, deeply tired, and holding together through discipline rather than hope. She does the right thing when she can't see why it will work, and she has been doing it long enough that the persistence itself has become her defining trait.
  PROSE
end

relate :rel_dern_talish_leads_displacement_council, :leads, :dern_talish, :displacement_council, since: 2432 do
  prose "As First Threshold she leads the #{ref :displacement_council, "Displacement Council"} — responsible for every containment cordon around every Bloom Zone in the system."
end
relate :rel_dern_talish_born_in_the_glass_frontier, :born_in, :dern_talish, :the_glass_frontier do
  prose "She was born in the mid-drift habs of the #{ref :the_glass_frontier, "Glass Frontier"} and evacuated as a child during the displacement — a Bloom refugee who grew up to run the cordons."
end
relate :rel_dern_talish_operates_in_bloom_zones, :operates_in, :dern_talish, :bloom_zones, since: 2412 do
  prose "Twenty years of cordon work put her inside more #{ref :bloom_zones, "Bloom Zones"} than almost anyone alive — and left her with the tremor to prove it."
end
relate :rel_dern_talish_cooperates_with_elves, :cooperates_with, :dern_talish, :elves, since: 2432, dm: true do
  prose "She is the single human point of contact with the hidden #{ref :elves, "elves"} — the loneliest cooperation in the system, conducted through a shard she never lets out of her reach."
end
relate :rel_dern_talish_possesses_communication_shard, :possesses, :dern_talish, :communication_shard, since: 2432, dm: true do
  prose "The #{ref :communication_shard, "communication shard"} — a pre-Glassfall artifact keyed to an impossible frequency — is her only channel to them, and irreplaceable if lost."
end

# --- history (moments) ---
moment :dern_talish_evacuated, year: 2378, of: :dern_talish do
  prose "Four years old when the #{ref :the_silent_bloom, "Silent Bloom"} took her mid-drift home, Talish was carried out in the displacement and given the registration tattoo every Bloom evacuee wore. She has no memory of the hab she lost. She has never had the tattoo removed."
  effects { set :dern_talish, standing: :bloom_evacuee }
end
moment :dern_talish_cordon_career, year: 2412, of: :dern_talish do
  prose "She gave twenty years to the Council's cordon operations, rising from perimeter patrol to zone-incursion specialist to regional operations lead — inside more #{ref :bloom_zones, "Bloom Zones"} than almost anyone alive. The work left her with a tremor in her right hand and an unshakeable conviction that the cordons must hold."
  effects { set :dern_talish, standing: :regional_operations_lead }
end
moment :dern_talish_turns_back_convoys, year: 2415, of: :dern_talish do
  prose "During the #{ref :the_bitter_reach, "Bitter Reach"}, a regional operations lead, Talish personally turned away armed convoys from three factions trying to use cordon stations as staging points. She was shot at twice. She did not return fire — she closed the cordon gates and waited. All three convoys eventually left. That neutrality became the foundation of her authority."
end
moment :dern_talish_becomes_first_threshold, year: 2432, of: :dern_talish do
  prose "After twenty years on the cordons she was named the fourth First Threshold of the #{ref :displacement_council, "Displacement Council"} — the person who stands at the boundary of every Bloom Zone and decides what crosses it. She did not want the job."
  effects { set :dern_talish, standing: :first_threshold }
end
moment :dern_talish_read_in, year: 2432, of: :dern_talish, dm: true do
  prose "Three months before he died of Bloom-exposure complications, her predecessor Oram Sells read her in — the #{ref :elves, "elves"}, the Adversary, the reality tears, the hidden war — in a single conversation in a sealed room at Cordon Station Nine. She did not believe him until he showed her the #{ref :communication_shard, "contact protocol"} and she activated it, and an elf answered. She has not slept a full night since."
end
