npc :lira_vashtenri do
  name "Lira Vashtenri"
  path "player/npcs/heroes/lira-vashtenri.md"
  reviewed "2026-03-19"
  tags :resonance, :salvage
  prominence :recognized

  log "Settled: never a Conclave member — always Coremark. The stillwater supply relationship with the Conclave is purely transactional."

  question "Still active in containment ops, but what is she doing NOW beyond maintaining the containment methodology?"
  question "Degree 5, and no personal cloud: the specific cordon section, the refinery she worked at, the mentor, the first test site. A viewpoint needs forgotten/marginal shells only she connects to."
  narrative_role "viewpoint"
  species "gnome"
  culture "sithari"

  prose <<~PROSE
    A #{ref :gnomes, "gnome"} Shear mechanic who became the architect of #{ref :bloom_zones, "Bloom Zone"} containment. #{ref :coremark, "Coremark"}-employed before the Bloom, overlooked, blue collar. The person who figured out how to stop reality from coming apart — not through theory, but through instinct refined by years of keeping ringglass arrays stable in environments that wanted to break them.
  PROSE
  prose <<~PROSE, section: :public_profile, heading: "Public Profile"
    Lira worked at a Coremark refinery — not #{ref :pyre, "Pyre"}, a different one. She maintained ringglass arrays in the deep #{ref :the_shear, "Shear"}, making adjustments by feel that weren't in any maintenance manual. Small modifications to tuning, alignment changes that she couldn't fully explain, corrections that kept the resonance ecology around her installation stable while every other deep Shear refinery fought chronic maintenance issues.
  PROSE
  prose <<~PROSE, section: :traits, heading: "Traits"
    Her gnomish biology is the foundation. The crystal-laced nervous system that every gnome carries gave her a sensory relationship with resonance that human or orc mechanics couldn't develop — she could feel when an array was drifting before instruments registered it. But gnomish attunement alone doesn't explain what she did. Plenty of gnomes work in Shear operations. Lira's specific contribution was translating instinct into a deployable technology — #{future "Lira's Wall"}.

    She is, by Coremark's standards, one piece of the corporation's partial redemption. Not enough to redeem them. But proof that the corporation wasn't uniformly rotten — that somewhere in the profit-driven machine, someone was doing careful work because careful work mattered.

    Sitharian-cultured by upbringing — the formal naming pattern, the measured speech. But her career was blue collar, her expertise was hands-on, and her contributions came from doing, not theorizing.
  PROSE
end

relate :rel_lira_designed_liras_wall, :designed, :lira_vashtenri, :liras_wall do
  prose "Lira Vashtenri designed #{ref :liras_wall, "Lira's Wall"} — the containment architecture that made the Bloom Zones survivable, built from scratch by someone who left the archives to do it."
end
relate :rel_lira_member_of_displacement_council, :member_of, :lira_vashtenri, :displacement_council, since: 2384 do
  prose "She built her containment operation into what became the #{ref :displacement_council, "Displacement Council"}, and has run inside it ever since."
end

relate :rel_lira_employed_by_coremark, :member_of, :lira_vashtenri, :coremark, till: 2378 do
  prose "Before the Bloom she maintained ringglass arrays at a #{ref :coremark, "Coremark"} refinery — overlooked, blue collar, and the most quietly competent hand in the deep #{ref :the_shear, "Shear"}."
end

# --- history (moments) ---
moment :lira_discovered, year: 2380, of: :lira_vashtenri do
  prose "When the #{ref :bloom_coalition, "Bloom Coalition"} needed containment and nothing worked, someone traced the maintenance records to the one deep-Shear refinery that had never reported the chronic failures — and found the mechanic behind it. Pulled from her regular work and given resources she'd never had, Lira realized Bloom Zone boundaries follow the crystal substrate's natural fault lines: dampen the channels, stop the flow."
  effects { set :lira_vashtenri, standing: :containment_lead }
end
moment :lira_founds_containment_ops, year: 2384, of: :lira_vashtenri do
  prose "Having proven the damping-buoy network, Lira founded the #{ref :displacement_council, "Displacement Council"}'s containment operations, scaling her instinct into a training program. She never led the Council — that was #{future "Oram Sells"}, then #{ref :dern_talish, "Dern Talish"} — but the containment methodology is hers. Securing the #{ref :stillwater, "stillwater"} her buoys needed, from a Conclave that had never heard of her, was its own long battle."
  effects { set :lira_vashtenri, standing: :containment_architect }
end
