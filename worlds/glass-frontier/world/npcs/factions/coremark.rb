faction :coremark do
  name "Coremark"
  subkind :company
  path "player/npcs/factions/coremark.md"
  reviewed "2026-03-19"
  tags :salvage, :ringglass, :trade, :danger
  prominence :recognized

  log "Settled: a criminal syndicate in the present day. Publicly discredited after the Bloom, went underground, now smuggles Bloom Zone artifacts through black-market channels."

  question "Who buys Bloom Zone artifacts, and what are the downstream effects of relic-magnitude items reaching the black market?"

  # --- static identity (what Coremark IS; time-varying facts live in moments) ---
  prose <<~PROSE
    A salvage corporation that became a criminal syndicate. Coremark made its name running industrial-scale extraction in the deep #{ref :the_shear, "Shear"} — pulling #{ref :ringglass, "ringglass"} out of places nobody else would go — and lost its legitimacy when its own negligence helped trigger the #{ref :the_silent_bloom, "Silent Bloom"}. What was a corporation now does the same work underground.
  PROSE
  prose <<~PROSE, section: :culture, heading: "Character"
    Profit-driven from the start, but not malicious — Coremark took good care of its people, because skilled deep-Shear operators were rare and hard to replace. Compensation was excellent and retention was strategy, but the result was the same: Coremark crews were the best in the system, and they knew it. The "move fast, profit first" culture didn't change when the company went criminal. It just stopped pretending to be legitimate. The name stuck, too — everyone still calls them Coremark, and they don't seem to mind.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Field Units"
    The syndicate operates as a tight federation of working units rather than a single unified hierarchy. Two unit types do most of the work that produces Coremark's revenue and Coremark's reputation. Both report up through regional captains to the Korvath leadership, but day-to-day operations are run at the unit level.

    ### Extraction Cells <!-- Operations -->

    The legacy operation. Industrial deep-#{ref :the_shear, "Shear"} mining crews running heavy ships in zones the #{ref :shear_compact, "Shear Compact"} has either not charted or has not certified for legitimate operation. Extraction cells are the largest single revenue source the syndicate has and the most direct continuation of the pre-criminal corporate operation. The ships are heavy, the crews are paid well, and the operational discipline is genuinely high — extraction cells inherited Coremark's pre-disgrace working culture, in which competence was selected for and rewarded because incompetence in the #{ref :deep_shear, "Deep Shear"} killed the asset.

    A standard cell consists of a primary extraction rig, two support ships handling resonance shielding and salvage transport, and a forward survey vessel scouting working zones ahead of the rig. Crews run twenty to forty people across the cell, with the larger heavy-extraction cells reaching sixty. The cells operate from hidden stations scattered through the Shear's deeper pockets, rotating personnel on quarterly cycles back to Korvath or to fence-friendly surface settlements for rest, payment, and reassignment.

    The cells produce ringglass at industrial volumes. The output is laundered through fence networks before it enters the legitimate market, and a significant fraction of the system's mid-grade ringglass supply originates in Coremark cells whether anyone wants to acknowledge this or not. The fence networks coordinate with the second unit type to move the material.

    Extraction cells will fight other crews that contest their working zones. They will not engage #{ref :shear_compact, "Shear Compact"} inspectors directly — Compact inspectors travel under standing protections that the syndicate's leadership has explicitly chosen not to violate — but cells will jam signals, falsify telemetry, and disappear into the Deep when Compact attention turns their way. The cells are professional. They will also kill an independent #{ref :ratters, "Ratter"} crew that has stumbled into a Coremark working zone, and have done so often enough that experienced Deep-runners give known Coremark territory wide berth.

    ### Black-Market Convoys <!-- Operations -->

    The logistics arm. Coremark moves contraband through the system on a routing network that the syndicate has spent decades building and that no enforcement body has been able to systematically disrupt. Convoy units handle the movement: the route planning, the escort, the fence handoff at delivery, and the operational discipline that keeps the routes from being read by hostile parties.

    A convoy unit consists of a route officer, a small fleet of cargo vessels (often disguised as legitimate haulers, sometimes openly Coremark in territory where openness is operationally cheap), and an armed escort element. The route officers are the strategic core; they hold the routing knowledge, the fence contacts at each waypoint, and the patterns of timing that keep convoys from being intercepted. A senior route officer's working knowledge is among the most valuable single assets in the syndicate.

    The cargoes are predictable: laundered ringglass moving from extraction cells to legitimate buyers, #{ref :bloom_zones, "Bloom Zone"} relics moving from Coremark recovery operations to private collectors and the #{ref :echo_ledger_conclave, "Echo Ledger Conclave"}'s gray-market consultants, #{ref :duskgrain, "duskgrain"} moving from sources nobody on the syndicate side discusses to buyers who pay extraordinary prices and ask no questions. Volume on these last two is smaller than the ringglass flow and produces a disproportionate share of the syndicate's income.

    Convoy routes use a network of hidden waystations, sympathetic ports, and fence-friendly surface settlements. The waystations are sometimes shared with extraction cells; the surface ports include several settlements whose civic leadership has, in some unrecorded conversation in the past, accepted that the syndicate's presence is a fact to be managed rather than fought. The #{ref :tempered_accord, "Tempered Accord"} has not formally challenged these arrangements. The Accord's signatories include some of the settlements in question. The conversation, if it ever happens, will be uncomfortable.

    The convoy units fight when they have to and avoid fights when they can. Their operational doctrine prioritizes route continuity over individual cargo defense — a lost cargo is a financial setback, a lost route is a structural injury. Convoys will abandon a contested cargo and re-route the next traffic before they will commit to a fight that risks exposing the route's structure.

    Convoy units and extraction cells are not on the same payroll and are not personally close. They cooperate professionally. They eat at different tables.
  PROSE
end

# --- relationships (structural connections, render as paragraphs on the page) ---
relate :coremark_on_korvath, :on_surface_of, :coremark, :korvath do
  prose "Coremark's home ground is #{ref :korvath, "Korvath"} — the surface world where its leadership sits and its fence networks run thickest."
end

# --- moments (what happened to Coremark over time; drive its `standing`) ---
moment :coremark_founded, year: 2322, of: :coremark do
  prose <<~PROSE
    Founded in the 2320s on #{ref :korvath, "Korvath"} when the Shear salvage industry was young and unregulated. Coremark's founding insight was that the deep #{ref :the_shear, "Shear"} — the dangerous, distorted, poorly charted pockets far from any hab — held the highest-grade #{ref :ringglass, "ringglass"} in the system. Everyone else was picking the accessible debris fields clean; Coremark went where the margins were lethal and the material was priceless.
  PROSE
  effects do
    set :coremark, standing: :legitimate
    set :coremark, headquartered_in: :korvath
    set :coremark, operates_in: [:the_shear, :deep_shear]
  end
end

moment :coremark_expands, year: 2338, of: :coremark do
  prose <<~PROSE
    As #{ref :ringglass, "ringglass"} demand grew through the Rekindling, Coremark expanded beyond its deep-Shear niche into mid-drift extraction — closer to inhabited habs, higher volume, lower margins. The aggressive methods it had honed where nobody else was present became destructive when applied near civilian populations. Its deep-Shear techniques were genuine, though: the #{ref :shear_compact, "Shear Compact"} later standardized several of them into industry practice.
  PROSE
end

moment :coremark_disgraced, year: 2378, of: :coremark do
  prose <<~PROSE
    #{ref :pyre, "Pyre"} was theirs — a refinery whose overload helped trigger the #{ref :the_silent_bloom, "Silent Bloom"} cascade. One catastrophe they actually caused, and it was enough. The company was publicly disgraced; its operations were seized or boycotted as the scale of the negligence became clear.
  PROSE
  effects { set :coremark, standing: :disgraced }
end

moment :coremark_goes_under, year: 2407, of: :coremark do
  prose <<~PROSE
    Through the Bitter Reach the disgraced corporation went underground. The people and infrastructure didn't disappear — they stopped being legitimate. Coremark became a criminal syndicate, doing what it had always done, now illegally: deep-Shear extraction in uncharted zones, smuggling #{ref :bloom_zones, "Bloom Zone"} relics and #{ref :duskgrain, "duskgrain"} through black-market channels, and protection rackets along the less-patrolled stretches of #{ref :keel, "the Keel"}.
  PROSE
  effects { set :coremark, standing: :criminal }
end

moment :duthrek_takes_coremark, year: 2409, of: :coremark do
  prose "By 2409 the syndicate answered to a single leader — #{ref :duthrek, "Duthrek"} — running it mafia-style out of #{ref :korvath, "Korvath"}."
  effects { set :duthrek, leads: :coremark }
end
