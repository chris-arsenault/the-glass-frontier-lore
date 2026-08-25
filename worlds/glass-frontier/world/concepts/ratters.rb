concept :ratters do
  name "Ratters"
  summary "Ratters are independent small-crew salvagers in the Shear who share route knowledge through loose flotillas while keeping their ships, claims, and hauls separate."
  subkind :practice
  path "player/concepts/ratters.md"
  status :complete
  tags :salvage, :"social-structure", :orbital, :trade
  prominence :recognized

  descriptive_identity(
    attire:
      "Coats and harnesses are working patchworks of salvaged ringglass " \
      "scraps, ring-era components, and hand-stitched repair. A new " \
      "Ratter's gear is plain; a veteran's is a biography readable across a " \
      "dock — where they have worked, what they have found, who repaired " \
      "them when they needed it.",
    tools:
      "A crew tattoo of the current ship's mark somewhere visible, with the " \
      "old marks kept; a shard pendant of ringglass from the first claim, " \
      "worn at throat or wrist and never replaced; and a claim ledger clean " \
      "enough that the next broker can verify the work.",
    manner:
      "Debts between Ratters are tracked obsessively and repaid in kind, " \
      "and a distress call in the Shear is answered no matter whose it is. " \
      "The flotilla coordinates; the haul, the claim, and the ship stay the " \
      "crew's own."
  )

  prose <<~PROSE
    The independent salvage subculture of #{ref :the_shear, "the Shear"}. Ratters are the working majority of Shear salvage by ship-count and the minority by tonnage — small crews, fast ships, marginal profits, and a working identity that has held together for #{elapsed 2320, approx: true} across hundreds of vessels and several economic eras. They pioneered Shear salvage in the 2320s. They survive #{ref :coremark, "Coremark"} by being smaller, faster, and more numerous. They tolerate the #{ref :shear_compact, "Shear Compact"} because the Compact tolerates them.

    The name is old, originally an insult, and now carried with the kind of stubborn pride that working people develop when an outsider's word for them turns out to be useful.
  PROSE
  prose <<~PROSE, section: :structure, heading: "Flotillas"
    The basic operational unit is the **flotilla**: a loose grouping of independent ships working a Shear region together under a senior captain known as a **long-rat**. The long-rat is not an employer; the flotilla's ships are not under contract. The long-rat earns the position by knowing the region better than anyone else in it, by holding the contacts that move salvage profitably, and by being someone the other captains in the flotilla can trust enough to share intel with.

    A flotilla shares: forecasting data, debris-mass charts, navigation hazards, current Coremark and Compact movements, fence contacts, ship-doctor referrals, news of who is owed what by whom. A flotilla does not share: hauls, claims, ship maintenance, or crew. Each ship is its own crew, its own business, its own command. The flotilla coordinates; the ships work.

    Long-rats are not appointed and not elected. They emerge. A captain who consistently produces useful intel, who handles disputes among flotilla members fairly, and who can be relied on to show up when another ship calls for help, becomes the long-rat by the simple fact that the other captains start treating them that way. The transition is rarely formal and never marked. Long-rats step down by the same process, in reverse. Some flotillas have had four long-rats in a decade. Some have had the same one for #{duration 30}.

    A typical Ratter ship runs three to six crew. The largest carry ten or twelve and are essentially small industrial operations on a hull. The smallest are two-person skiffs that do quick-grab runs on the Shear's accessible edges and never go deeper than their fuel allows. Ratters call their ships **skiffs** regardless of size, which non-Ratters find ridiculous and the Ratters find correct.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Claims and Remote Cuts"
    Independent does not mean unlicensed. A working Ratter keeps a claim ledger, cutter inspection records, cargo grades, rescue coverage, and the chain of brokers who will take the haul. Long-rats know which forms keep a crew flying and which exist to make a disputed claim expensive. A clean ledger gives a crew room to refuse a bad buyer because the next one can verify its work.

    Ratters developed #{ref :remote_cutting, "remote cutting"} for Deep Shear claims that could not be boarded safely. An expendable cutter works the seam while the crew operates a #{ref :claim_rig, "claim rig"} at stand-off range. The cutter can be lost. A process room can be sealed and replaced. The crew has a route home.

    The work produced its own boards and brokers. The #{ref :pell_freight_assembly, "Pell Freight Assembly"} finances shared receiving yards and hauler access for member crews without taking ownership of their claims. Some flotillas joined. Others sell through the Assembly when the terms suit them and leave before anyone mistakes coordination for command.
  PROSE
  prose <<~PROSE, section: :culture, heading: "The Code"
    There is no written Ratter code. There are two unwritten obligations that hold the subculture together across every disagreement about everything else.

    **Debt is sacred.** Owed favors and material debts between Ratters are tracked obsessively and paid in full, regardless of how long it takes. A Ratter who borrows fuel from another crew during a Shear weather event repays that fuel — not the price of the fuel, the fuel itself — when conditions permit. A Ratter who is owed a favor can call it in years later, and the favor will be honored. A Ratter who walks a debt is finished as a Ratter. No flotilla will take them. No skiff-port will service their ship. No long-rat will speak for them. Coremark hires them, sometimes, because Coremark has uses for people who have nothing left to lose.

    The system is not enforced by any institution. It is enforced by memory. Ratters remember.

    **Distress is universal.** Any Ratter in distress in the Shear gets help from any other Ratter who can reach them. Rivals, debtors, ex-crew, members of a flotilla that competes with the rescuer's own — none of it matters. A distress call is answered. The rule predates the subculture's organized form; it was the first practice of the original 2320s salvage crews and survives because the Shear has not become less dangerous. The day a Ratter declines a distress call is the day they stop being a Ratter, by their own community's reckoning and often by their own.

    The rule has been tested. There are documented cases — names attached, dates known — of Ratters answering distress calls from people they had been trying to kill the previous week. The kept rivalries resumed afterward without comment.

    Beyond these two obligations, Ratter culture is anything-goes. Claim rules are local to flotillas and frequently disputed. Coremark relationships range from open hatred to pragmatic fence-trading. Compact attitudes range from grudging respect to active sabotage. The two obligations hold. The rest is up to the crew.
  PROSE
  prose <<~PROSE, section: :geography, heading: "Ports"
    There is no Ratter capital. The subculture lives in a constellation of independent stations scattered through the Shear's accessible edges and the near-orbital periphery — old habs partially recolonized, small custom-built waystations anchored to stable debris masses, repurposed pre-Glassfall installations whose owners no longer exist to object.

    Each waystation has its own character. **Skiffmoor** is a Ratter-built station on a long-stable debris mass in the Shear's middle band, #{elapsed :the_glassfall, approx: true} of patchwork construction grown around an original mining anchor. **The Old Iron** is a half-ruined pre-Glassfall hab where the Ratters who live there have an unspoken arrangement with whatever still runs in the lower decks. **Bell-end** is the smallest, a single docking ring around an outcropping of fused ringglass, and has the best fence in the subculture's territory.

    The stations are not coordinated. Each is run by whoever runs it — usually a long-rat who has retired from active flying, or a former captain who took on the station because nobody else would. The waystations trade with each other through Ratter traffic and trade out into the larger system through whichever surface settlements are friendliest. #{ref :glasswake, "Glasswake"}'s dock fringe is the most common public-facing port for Ratter business; the Compact's office is uptown, and the Ratters keep their dealings downhill from it.
  PROSE
  prose <<~PROSE, section: :culture, heading: "Identity"
    A Ratter is visible across the system within seconds. The identity is layered.

    **The gear.** Coats, harnesses, and ship interiors are working patchworks of salvaged ringglass scraps, repurposed ring-era components, hand-stitched repairs. The patchwork is functional, not decorative — every piece of salvage on a coat is something that worked once and might work again. It is also beautiful, in a way that the subculture is comfortable acknowledging. You can read a Ratter's career off their coat: where they have worked, what they have found, who repaired them when they needed it. A new Ratter's gear is plain. A veteran's gear is a biography.

    **The cant.** Ratters speak a working argot — Shear-cant — with hundreds of specific terms for debris types, weather conditions, hazards, claim states, ship problems, and people. The vocabulary leaks into surface speech in the salvage towns. A non-Ratter who picks up a few terms is treated indulgently. A non-Ratter who tries to fake fluency is identified within a sentence and treated accordingly. The hand signs that accompany the cant — used for vacuum work, where speech is impossible — have leaked into dirtside slang and are now part of the salvage-town signing repertoire.

    **The marks.** Every Ratter carries two visible markers. The first is a **crew tattoo** of their current ship's mark, somewhere visible — wrist, neck, the back of a hand. A Ratter who changes ships acquires a new tattoo and keeps the old ones; a senior captain's forearms can be a small history of the crews they have served. The second is a **shard pendant** of ringglass from the bearer's first claim — the first piece of salvage they personally pulled and could call their own. The shard is worn at the throat or wrist and is never replaced. Lost shards are not re-issued. A Ratter without a shard is either very new or has lost something they cannot replace.

    The three layers — gear, cant, marks — are not separable. A Ratter wearing the gear but not speaking the cant is suspect. A speaker of the cant without the gear is a journalist or a tourist or a problem. The combination is the credential, and it is not easily faked.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    There are tens of thousands of Ratters. The exact figure is not knowable; the Compact has tried to count them and given up. They are the system's working majority in the Shear and the cultural template for independent salvage everywhere it happens. Their ships range from immaculate to held-together-by-rumor. Their economic position is precarious by design. Their political relevance is greater than their numbers suggest because they have, for #{elapsed 2320, approx: true}, refused to consolidate.

    The subculture is not romantic about itself. Ratters die in the Shear at rates that surface people do not believe when told. The work is hard, the margins are thin, and the long-rat structure is fragile under stress. But the structure has held. The debts get paid. The distress calls get answered. The next generation of skiff captains is already learning the cant.
  PROSE

  gm_note :triggered_by, "Any Ratter in distress in the Shear is answered by every crew that can reach them. That includes crews the caller owes, crews they walked out on, and crews they were fighting the week before; the rivalry resumes afterward without discussion."
  gm_note :complicates, "Accepting fuel, parts, or a tow from a Ratter creates a debt repaid in kind rather than in coin, and it stays callable years later. A crew that walks one gets no flotilla, no skiff-port service, and no long-rat to speak for them, which is where #{ref :coremark, "Coremark"} finds people to hire."
  gm_note :appears, "Ratters read each other off the patchwork coat, the cant, and the shard pendant from a first claim, and all three are checked at once. Wearing the gear without the argot marks a player as suspect, and faking fluency in Shear-cant is caught inside a sentence."
end

relate :rel_ratters_operates_the_shear, :operates_in, :ratters, :the_shear, since: 2320 do
  prose "Ratters work the #{ref :the_shear, "Shear"} — independent salvage crews, no corporation behind them, taking the risks for the whole take."
end
relate :rel_ratters_operates_deep_shear, :operates_in, :ratters, :deep_shear, since: 2320 do
  prose "The boldest push into the #{ref :deep_shear, "deep Shear"}, where the grade is highest, the charts run out, and a remote cut can keep a crew away from a failing claim."
end

relate :rel_ratters_operate_in_glasswake, :operates_in, :ratters, :glasswake do
  prose "#{ref :glasswake, "Glasswake"}'s dock fringe is the most common public-facing Ratter port — where flotillas put in to sell salvage, hire on, and settle debts."
end
relate :rel_ratters_designed_remote_cutting, :designed, :ratters, :remote_cutting, since: 2419 do
  prose "Deep-runners assembled the first remote cutters from claim anchors, sacrificial receiving bays, and narrow-band arrays."
end
relate :rel_ratters_cooperate_pell_assembly, :cooperates_with, :ratters, :pell_freight_assembly, since: 2416 do
  prose "Ratter crews use the Assembly's shared receiving yards while retaining their ships and claims."
  descriptive_identity(
    basis:
      "Heavy receiving bays a skiff crew could never finance alone, " \
      "paid for in cargo dues or work credits — maintenance watches, " \
      "rescue standby, an empty return leg — with one vote per member " \
      "however many hulls they run.",
    limits:
      "Membership buys yard access, not a flag. The crews that joined " \
      "did so precisely because it meant not selling their claims, and " \
      "a subculture that has refused to consolidate for over a century " \
      "is not about to do it for a freight cooperative."
  )
end
relate :rel_ratters_study_farborn, :studies, :ratters, :farborn, since: 2320 do
  prose "Ratter field names sort #{ref :farborn, "Farborn"} by the danger they pose during a live job."
end
relate :rel_ratters_maintain_choir_fragment, :maintains, :ratters, :the_choir_fragment, since: 2421 do
  prose "Two flotillas share the quarterly inspection route through #{ref :the_choir_fragment, "the Choir Fragment"}."
end
