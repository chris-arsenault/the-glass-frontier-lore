npc :lira_vashtenri do
  name "Lira Vashtenri"
  summary "Lira Vashtenri is a former Coremark Shear mechanic and the containment architect whose stillwater networks held the first Bloom boundary."
  subkind :specialist
  specialty "Bloom containment"
  path "player/npcs/heroes/lira-vashtenri.md"
  reviewed "2026-03-19"
  tags :resonance, :salvage
  prominence :recognized
  occupation "Displacement Council containment architect"

  log "Settled: never a Conclave member — always Coremark. The stillwater supply relationship with the Conclave is purely transactional."

  log "2026-08-21 — Named Crowncut Refinery, her foreman Pera Soll, and the first wall site at Cinder Gap. Her present work retires saturated damping buoys before their stored load fails into the cordon."
  narrative_role "viewpoint"
  species "gnome"
  identity_source :species, :gnomes
  identity_source :culture, :sitharian_culture
  descriptive_identity disposition:
    "Asked why the containment holds, Lira walks the questioner to a mount " \
    "and has them feel a load cycle through it instead of explaining. Any " \
    "errand that would take her off the cordon gets weighed aloud against " \
    "a buoy saturating on its own schedule."
  culture "sithari"

  prose <<~PROSE
    A #{ref :gnomes, "gnome"} Shear mechanic who became the architect of #{ref :bloom_zones, "Bloom Zone"} containment. #{ref :coremark, "Coremark"}-employed before the Bloom, overlooked, blue collar. The person who figured out how to stop reality from coming apart — not through theory, but through instinct refined by years of keeping ringglass arrays stable in environments that wanted to break them.
  PROSE
  prose <<~PROSE, section: :public_profile, heading: "Public Profile"
    Lira worked at #{ref :crowncut_refinery, "Crowncut Refinery"}, where foreman #{ref :pera_soll, "Pera Soll"} let her record adjustments that were not in any maintenance manual. Small changes to tuning and alignment kept the refinery's local resonance stable while other deep-Shear plants fought chronic failures.
  PROSE
  prose <<~PROSE, section: :traits, heading: "Traits"
    Her gnomish biology is the foundation. The crystal-laced nervous system that every gnome carries gave her a sensory relationship with resonance that human or orc mechanics couldn't develop — she could feel when an array was drifting before instruments registered it. But gnomish attunement alone doesn't explain what she did. Plenty of gnomes work in Shear operations. Lira's specific contribution was translating instinct into a deployable technology: #{ref :liras_wall, "Lira's Wall"}.

    She is, by Coremark's standards, one piece of the corporation's partial redemption. Not enough to redeem them. But proof that the corporation wasn't uniformly rotten — that somewhere in the profit-driven machine, someone was doing careful work because careful work mattered.

    Sitharian-cultured by upbringing — the formal naming pattern, the measured speech. But her career was blue collar, her expertise was hands-on, and her contributions came from doing, not theorizing.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Cinder Gap"
    Lira now works at #{ref :cinder_gap, "Cinder Gap"}, where the oldest damping buoys have absorbed decades of uneven boundary load. Her crews can replace a buoy. They cannot safely release the resonance stored in one that has begun to saturate.

    She is developing a retirement sequence that transfers the load through neighboring mounts before the old buoy leaves the wall. The first full attempt will happen on the same cordon section where her original field array held. A failed transfer would not create a portable barrier; it would open Cinder Gap at its oldest seam.
  PROSE

  gm_note :appears, "Resonance trouble reaches Lira before it reaches the instruments: she names the drifting array while the gauges still read clean, and they catch up minutes later. A crew that waits for the instrument to agree spends that interval on the wrong repair."
  gm_note :triggered_by, "Ask Lira why the containment holds and she walks the questioner to a mount and has them feel it through a load cycle. Players who want it written down get pointed at #{ref :vashtenri_thesis, "the thesis built from her refinery books"}, which she did not write."
  gm_note :complicates, "Lira's time is mortgaged to the oldest damping buoys at #{ref :cinder_gap, "Cinder Gap"}, which have absorbed decades of uneven load and cannot be safely emptied. Any errand that takes her off that cordon gets weighed against a buoy saturating on its own schedule, and she will say so."
end

relate :rel_lira_designed_liras_wall, :designed, :lira_vashtenri, :liras_wall do
  prose "Lira Vashtenri designed #{ref :liras_wall, "Lira's Wall"} — the containment architecture that made the Bloom Zones survivable, built from scratch by someone who left the archives to do it."
end
relate :rel_lira_member_of_displacement_council, :member_of, :lira_vashtenri, :displacement_council, since: 2384 do
  prose "She built her containment operation into what became the #{ref :displacement_council, "Displacement Council"}, and has run inside it ever since."
  descriptive_identity standing:
    "She founded the containment operations and never led the Council — " \
    "the office went to Oram Sells and then Dern Talish while the " \
    "methodology remained hers, passed on through the training program " \
    "she built."
end

relate :rel_lira_employed_by_coremark, :employed_by, :lira_vashtenri, :coremark, till: 2378 do
  prose "Before the Bloom she maintained ringglass arrays at a #{ref :coremark, "Coremark"} refinery — overlooked, blue collar, and the most quietly competent hand in the deep #{ref :the_shear, "Shear"}."
  descriptive_identity standing:
    "Her employment shows in the record rather than in any title: " \
    "Crowncut was the one deep-Shear refinery that never reported the " \
    "chronic failures, and nobody above her asked why until the Bloom " \
    "Coalition traced the maintenance sheets to her hands."
end
relate :rel_lira_operated_crowncut, :operates_in, :lira_vashtenri, :crowncut_refinery, till: 2378 do
  prose "She maintained Crowncut's coupled arrays under Pera Soll."
end
relate :rel_lira_located_cinder_gap, :located_in, :lira_vashtenri, :cinder_gap, since: 2433 do
  prose "Her current field work is based at #{ref :cinder_gap, "Cinder Gap"}."
end

# --- history (moments) ---
moment :lira_discovered, year: 2380, of: :lira_vashtenri do
  summary "The Bloom Coalition recruited Lira Vashtenri as its containment lead in 2380 after tracing Crowncut's stable arrays to her maintenance work."
  prose "When the #{ref :bloom_coalition, "Bloom Coalition"} needed containment and nothing worked, someone traced the maintenance records to the one deep-Shear refinery that had never reported the chronic failures — and found the mechanic behind it. Pulled from her regular work and given resources she'd never had, Lira realized Bloom Zone boundaries follow the crystal substrate's natural fault lines: dampen the channels, stop the flow."
  effects { set :lira_vashtenri, standing: :containment_lead }
end
moment :lira_founds_containment_ops, year: 2384, of: :lira_vashtenri do
  summary "Lira Vashtenri founded the Displacement Council's containment operations in 2384 after her buoy network held at Cinder Gap."
  prose "Having proven the damping-buoy network at #{ref :cinder_gap, "Cinder Gap"}, Lira founded the #{ref :displacement_council, "Displacement Council"}'s containment operations, scaling her instinct into a training program. She never led the Council — #{ref :oram_sells, "Oram Sells"} later held that office, followed by #{ref :dern_talish, "Dern Talish"} — but the containment methodology is hers. Securing the #{ref :stillwater, "stillwater"} her buoys needed, from a Conclave that had never heard of her, was its own long battle."
  effects { set :lira_vashtenri, standing: :containment_architect }
end
