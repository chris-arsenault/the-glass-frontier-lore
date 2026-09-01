encyclopedia :blue_yard_pitch do
  name "Ringglass Pitch"
  aka "pitch", "blue pitch"
  kind :resource
  subkind :material
  status :complete
  log "2026-08-31 — Renamed Blue Yard Pitch to Peel; the trade's quality test and the material's defining release behavior supply its working name."
  log "2026-08-31 — Renamed Peel to Ringglass Pitch. Peel is the seam audit, not the material; ringglass is the established material root and directly governs the pitch's vibration-dependent cure."
  topics :materials, :ringglass, :"structural-freq", :trade
  prevalence :uncommon
  appears_when all: { place: [:yard] }
  summary "Ringglass pitch is the working sealant of the glass trades: a dense blue-black paste that hardens around vibrating ringglass and releases cleanly the moment the vibration stops. Yards pay seams with it, casters bed live glass in it, and the stripped rind is the trade's own quality gauge."
  function "Seals, beds, and gaskets ringglass assemblies while they run; releases clean when the work goes still"
  grades "Graded by set and peel: quick pitch for patch work, bench pitch for standing assemblies, and the slow deep-set the casting shops guard recipes for"
  availability "Boiled at yard shops from mineral tar and ringglass fines; the Dry Net, Three Arms Yard, Blue Step Works, and Lot Forty keep the best-known kettles, each with a distinct set and peel"

  descriptive_identity(
    appearance: "A dense blue-black paste, worked warm from the kettle with paying irons, that " \
                "cures to a glassy rind on a live seam. On dead glass it sits inert and dull, " \
                "and the difference is visible across a room.",
    working: "Paid into a seam around vibrating ringglass, it hardens to a tight gasket that " \
             "rides the vibration; when the assembly stops, the pitch lets go and peels in " \
             "whole ribbons, leaving the glass bare and clean for inspection.",
    risks: "The release is the trap's other jaw: pitch on a line that stalls mid-shift peels " \
           "in place, and a sealed assembly that goes quiet unplanned is unsealed by the " \
           "time the crew reaches it."
  )

  prose <<~PROSE
    Ringglass under load vibrates, and everything joined to it must live with the hum. Ringglass pitch is the trades' answer: a dense blue-black paste, boiled from mineral tar and ringglass fines, that cures hard only against vibration. Paid warm into a running seam it sets to a glassy gasket that rides the hum like a hull rides water; on still glass it stays a dull paste indefinitely. The cure's condition is the material's whole character, and the yards use both faces — pitch seals the live assembly, and the moment the work is stopped for inspection, the rind lets go in whole ribbons, leaving the glass bare, clean, and readable.

    Paying pitch is bench craft with its own irons and its own tempo. The payer works the seam behind the kettle hand, iron in each fist, driving the warm paste into the joint while the assembly runs — the trades pay live, since the cure needs the hum — and a paid seam's rind is signed with the payer's iron marks the way a caulked hull is signed. The peel is the audit: ribbons that come away whole certify an even cure and a sound seam, and a peel that crumbles or tears sends the seam back to the payer with the ribbons as evidence. Kettle shops keep disputed peel samples beside the payer's marks and the run record.
  PROSE

  prose <<~PROSE, section: :trade, heading: "Kettles and Recipes"
    The four famous kettles — the Dry Net's, Three Arms Yard's, Blue Step Works', and Lot Forty's — boil to house recipes with distinct set times and peels. Quick pitch sets in a shift and does patch work; bench pitch sets overnight for standing assemblies; and the slow deep-set that beds permanent installations cures across a week of continuous run, which is why casting shops schedule their commissioning runs unbroken and post the fact at the gate.

    Pitch releases whenever the vibration stops, including during an unplanned stall. Every pitch-sealed assembly therefore carries a stall standing order. #{encyclopedia_ref :workshop_authority, "Halt-Call"} prices a full peel and reseal into any halt call, and the crew follows the call anyway.
  PROSE

  cue "Behind the kettle hand, the payer drives warm blue-black paste into the running seam with an iron in each fist, and the finished rind carries the payer's marks like a signature."
  cue "The stopped assembly stands with its pitch peeling off in slow whole ribbons, and the inspector gathers them like shed bark before touching the glass."
  affordance "Pitch makes live ringglass serviceable — sealed while it runs, self-stripping for inspection the moment it stops — and a whole-ribbon peel is a certificate of seam quality any yard in the system reads at a glance."
  pressure "The release clause cuts both ways: an unplanned stall unseals the assembly while the crew is still responding, so every pitched line carries a stall standing order and every halt call prices in the peel."
  variation "Quick pitch patches the daily trade, bench pitch holds the standing assemblies, and the casting shops' deep-set recipes cure across a week of unbroken run and are guarded accordingly."
  variation "The four kettle houses' recipes differ in set and peel, and yard contracts specify the kettle as well as the grade."
end
