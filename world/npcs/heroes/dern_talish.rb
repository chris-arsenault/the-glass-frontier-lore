npc :dern_talish do
  name "Dern Talish"
  path "player/npcs/heroes/dern-talish.md"
  tags :governance, :resonance, :diplomacy
  prominence :recognized
  narrative_role "viewpoint"
  species "human"
  culture "hab-worlder"

  prose <<~PROSE
    *First Threshold of the Displacement Council.*

    The title is as unglamorous as the organization. "First Threshold" — the person who stands at the boundary and decides what crosses it. In practice, it means Dern Talish is responsible for every containment cordon around every Bloom Zone in the system, for the welfare of every Council operative maintaining those cordons, and for the political neutrality that keeps the Council trusted by factions that trust nothing else.

    She has held the position for six years. She is the fourth First Threshold. She does not enjoy the job. She is very good at it.
  PROSE
  prose <<~PROSE, section: :public_profile, heading: "Public Profile"
    Talish is the face the Displacement Council shows the system. She appears at Accord mediations, addresses inter-settlement disputes that touch on Bloom Zone policy, and periodically tours the cordon stations to inspect operations and — more importantly — to be seen inspecting them. The Council's authority depends on the perception that it takes its work seriously and plays no favorites. Talish embodies this with a directness that some find reassuring and others find abrasive.

    She is in her late fifties. Human. Born in the mid-drift habs before the Bloom, evacuated as a child during the displacement. She has no memory of her original home — she was four years old — but she carries the registration tattoo that all Bloom evacuees received, faded to near-invisibility on her left wrist. She has never had it removed.

    Before becoming First Threshold, she served twenty years in the Council's cordon operations, working her way from perimeter patrol to zone incursion specialist to regional operations lead. She has been inside more Bloom Zones than almost anyone alive. The experience left her with a slight tremor in her right hand — a common side effect of prolonged exposure to the zones' reality distortion — and a deep, unshakeable conviction that the cordons must hold.
  PROSE
  prose <<~PROSE, section: :public_profile, heading: "What People See"
    A quiet, compact woman who listens more than she speaks and whose silences are more informative than most people's sentences. She does not raise her voice. She does not negotiate from a position of ideology. When factions bring their grievances to the Council, Talish asks what they need, asks what they can give, and finds the gap between the two. Her authority comes from reliability rather than charisma.

    Her neutrality during the Bitter Reach is the foundation of her authority. The Council refused to take sides. Talish, then a regional operations lead, personally turned away armed convoys from three different factions who tried to use cordon stations as staging points. She was shot at twice. She did not return fire. She closed the cordon gates and waited. All three convoys eventually left.
  PROSE
  prose <<~PROSE, section: :traits, heading: "Notable Traits"
    - Never eats during meetings. Will accept water. Considers shared meals a form of political intimacy she cannot afford.
    - Keeps a collection of small objects recovered from Bloom Zone perimeters — not relics, just debris. A child's toy. A door handle. A clock that still ticks at the wrong speed.
    - Her hand tremor is worse when she's tired. She compensates by keeping her right hand in her pocket or wrapped around a cup. Most people who meet her think she's just reserved. The cordon crews know what it means.
    - Speaks three languages fluently and understands fragments of two more, including one that linguists cannot identify. She picked it up from Echo River exposure during a containment operation.
  PROSE

  # ---- Hidden (DM) truth ----
  prose <<~PROSE, section: :truth, heading: "The Read-In", dm: true
    Talish was read in by her predecessor, Oram Sells, three months before he died of complications from prolonged Bloom Zone exposure. Sells had held the position for eleven years. He told her everything in a single conversation in a sealed room at Cordon Station Nine. The elves. The Adversary. The reality tears. The hidden war.

    She didn't believe him. He showed her the contact protocol — a resonance-tuned ringglass shard keyed to a frequency that shouldn't exist in any modern instrument. She activated it. An elf answered.

    That was six years ago. She has not had a full night's sleep since.
  PROSE
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
