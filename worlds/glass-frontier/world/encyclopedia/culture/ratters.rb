encyclopedia :ratters do
  name "Ratters"
  summary "Ratters are independent small-crew salvagers in the Shear who share route knowledge through loose flotillas while keeping their ships, claims, and hauls separate."
  kind :culture
  subkind :work_tradition
  status :draft
  topics :salvage, :"social-structure", :orbital, :trade
  prevalence :uncommon
  appears_when all: { place: [:debris_field] }

  prose <<~PROSE
    Ratters are independent salvage crews of #{ref :the_shear, "the Shear"}. They form the working majority by ship count and the minority by tonnage: small crews, fast ships, and marginal profits spread across hundreds of vessels. Ratter crews pioneered Shear salvage in the 2320s and have worked alongside the larger operations of #{ref :coremark, "Coremark"} and the #{ref :shear_compact, "Shear Compact"} through several economic eras.

    The name began as an insult and became the crews' ordinary working term. Crew tattoos, first-claim pendants, and Shear-cant now give it a visible and audible meaning at any salvage port.
  PROSE
  prose <<~PROSE, section: :structure, heading: "Flotillas"
    The basic operational unit is the **flotilla**: a loose grouping of independent ships working a Shear region together under a senior captain known as a **long-rat**. Each ship retains its own command and joins the flotilla through shared charts, rescue obligations, and brokerage contacts. A long-rat earns the position through regional knowledge, reliable market contacts, fair dispute work, and a rescue record other captains trust.

    A flotilla shares forecasting data, debris-mass charts, navigation hazards, current Coremark and Compact movements, fence contacts, ship-doctor referrals, and news of debts. Hauls, claims, ship maintenance, and crew remain with the individual ship. The flotilla coordinates routes and rescue; the ships conduct the salvage.

    Captains establish a long-rat by bringing charts and disputes to the same person and accepting the resulting calls. The transition is informal. It can reverse when crews take their business elsewhere. Some flotillas have had four long-rats in a decade; others have kept the same one for #{duration 30}.

    A typical Ratter ship runs three to six crew. The largest carry ten or twelve and operate as small industrial yards on a hull. The smallest are two-person skiffs making quick-grab runs along the Shear's accessible edges. Ratter speech calls all of these vessels **skiffs**, from the two-person craft to the twelve-person yard ship.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Claims and Remote Cuts"
    A working Ratter keeps a claim ledger, cutter inspection records, cargo grades, rescue coverage, and the chain of brokers who will take the haul. Long-rats distinguish the forms required for flight and sale from the extra records demanded in a claim dispute. A clean ledger gives a crew room to refuse a bad buyer because the next one can verify its work.

    Ratters developed #{encyclopedia_ref :remote_cutting, "remote cutting"} for Deep Shear claims that could not be boarded safely. An expendable cutter works the seam while the crew operates a #{encyclopedia_ref :claim_rig, "claim rig"} at stand-off range. The cutter can be lost. A process room can be sealed and replaced. The crew has a route home.

    The work produced its own boards and brokers. The #{ref :pell_freight_assembly, "Pell Freight Assembly"} finances shared receiving yards and hauler access for member crews without taking ownership of their claims. Some flotillas joined. Others sell through the Assembly when the terms suit them and leave before anyone mistakes coordination for command.
  PROSE
  prose "#{embed :ratter_order}", section: :culture, heading: "Ratter Order"
  prose <<~PROSE, section: :geography, heading: "Ports"
    Ratter ports form a constellation of independent stations through the Shear's accessible edges and near-orbital periphery: partially recolonized habs, custom waystations anchored to stable debris masses, and repurposed pre-Glassfall installations.

    **Skiffmoor** is a Ratter-built station on a long-stable debris mass in the Shear's middle band, #{elapsed :the_glassfall, approx: true} of patchwork construction around an original mining anchor. **The Old Iron** is a half-ruined pre-Glassfall hab where systems continue to run in the lower decks under an unspoken boundary with the residents above. **Bell-end** is the smallest, a single docking ring around an outcropping of fused ringglass, and has the best fence in the subculture's territory.

    Each station governs itself, often under a retired long-rat or former captain. The waystations trade with one another through Ratter traffic and reach the larger system through nearby surface settlements. #{ref :glasswake, "Glasswake"}'s dock fringe is the most common public-facing port for Ratter business; the Compact's office is uptown, and Ratter deals stay downhill from it.
  PROSE
  prose <<~PROSE, section: :culture, heading: "Identity"
    A Ratter is visible across the system within seconds. The identity is layered.

    **The gear.** Coats, harnesses, and ship interiors are working patchworks of salvaged ringglass scraps, repurposed ring-era components, and hand-stitched repairs. Each piece on a coat records material recovered, a port visited, or a repair made by another crew. New gear is plain; years of work add visible layers.

    **The cant.** Shear-cant supplies specific terms for debris types, weather conditions, hazards, claim states, ship problems, and people. The vocabulary and its vacuum-work hand signs have entered surface speech in salvage towns. Fluency is tested in use: false route terms or a hand sign given in the wrong work order identify a speaker whose claim to Shear experience needs checking.

    **The marks.** Every Ratter carries two visible markers. The first is a **crew tattoo** of their current ship's mark, somewhere visible — wrist, neck, the back of a hand. A Ratter who changes ships acquires a new tattoo and keeps the old ones; a senior captain's forearms can be a small history of the crews they have served. The second is a **shard pendant** of ringglass from the bearer's first claim — the first piece of salvage they personally pulled and could call their own. The shard is worn at the throat or wrist and is never replaced. Lost shards are not re-issued. A Ratter without a shard is either very new or has lost something they cannot replace.

    Gear, cant, and marks form the working credential together. A crew checks all three before sharing a current chart, taking on a partner, or accepting a claimed rescue debt.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Tens of thousands of Ratters work the Shear. Compact attempts to count them have produced no stable total across moving crews and independent ports. They remain the working majority in the Shear and the model for independent salvage elsewhere in the system. Their ships range from immaculate to layers of temporary repair, and their margins remain thin after #{elapsed 2320, approx: true} of refusing consolidation.

    Shear work kills crews, strands claims, and breaks flotillas when a rescue or debt call divides the captains. Ratter order requires reachable distress to be answered and material debt to be paid in kind. Apprentices learn those calls with the cant, claim ledger, and first routes of a working skiff.
  PROSE

  affordance "A current chart, verified work history, or introduction from a long-rat opens routes, buyers, repair berths, and crews that remain closed to an unknown salvager."
  pressure "A disputed ledger, false use of Shear-cant, or crew mark lacking a confirming ship can close several ports while captains trace the claim."
  cue "Ratters read a newcomer through the patchwork coat, Shear-cant, and the shard pendant from a first claim; a crew checks all three before sharing a current chart."
end
