encyclopedia :fold do
  name "Fold"
  kind :resource
  subkind :data
  status :complete
  log "2026-08-31 — Renamed White Signal Cloth to Fold; the crease that stores one pulse gives the relay medium a concise working name rooted in its physical operation."
  topics :"signal-freq", :archives, :trade, :isolation
  prevalence :uncommon
  appears_when all: { place: [:damaged_signal] }
  summary "Fold is a relay medium woven at Span Nine and Whitefoot for broken-band country. A sending frame stores one pulse in its dense white weave as a faint crease; the sealed cloth carries that message physically until a receiving frame smooths and reads it once."
  function "Carries one relay pulse through signal-dead country as a physical crease — written by a sending frame, immune to the broken bands in between, read once by a smoothing frame at the far end"
  grades "Fresh-loomed bolts take a crease sharp and read clean; travel-worn cloth reads with fuzz the frame operators compensate for; a cloth creased twice by mishap reads as neither message and is retired to flag stock"
  availability "Woven at Span Nine and Whitefoot on the old pattern looms and sold in sealed message lengths; the relay posts of the damaged-signal country hold standing stock, and carrying a sealed cloth is post-rider work"

  descriptive_identity(
    appearance: "A bolt of dense, chalk-white cloth, blank to the eye when " \
                "written — the message crease shows only in raking light — " \
                "rolled in a sealed carrying tube stamped with origin post and " \
                "writing date.",
    working: "The sending frame folds the pulse into the weave as one crease " \
             "pattern; the cloth rides tube-sealed through the dead country; " \
             "the receiving frame draws it flat, and the crease releases its " \
             "pulse into the frame once — the smoothing and the reading being " \
             "the same motion.",
    risks: "Smoothing releases the pulse once, even against a table or inside " \
           "a saddlebag; written cloth stays sealed in a rigid tube and is " \
           "handled only by sending and receiving frames."
  )

  prose <<~PROSE
    Damaged-signal country drops relay pulses between working posts. Elven maintenance records describe patch cloth for carrying signal through sections under repair, and recovered looms at #{ref :span_nine, "Span Nine"} and #{ref :whitefoot, "Whitefoot"} still weave that pattern. A sending frame folds one pulse into the cloth in a single pass. The crease is visible only in raking light, and the cloth holds it while sealed in a carrying tube through the dead bands. At the destination, a receiving frame draws the cloth flat. That smoothing releases the pulse into the frame and leaves the weave blank.

    Origin posts stamp the tube with the writing date, and post-riders carry it without opening it. The receiving post reads the cloth before witnesses and logs the stamp, pulse, and names. Accidental smoothing spends the message on the surface that flattened it; dead-band posts call this “spent to the room.” A second crease produces an unreadable mixture, so used and mishandled cloth is retired to flag stock. Many relay posts fly bunting cut from former message cloth.
  PROSE

  cue "The sending frame takes the bolt, folds the pulse into the weave in one pass, and the operator holds the cloth to the raking lamp to check the crease before it rolls into the stamped tube."
  cue "At the far post the receiving frame draws the cloth flat before witnesses — the smoothing releasing the pulse in the same motion — and the log takes the reading, the date stamp, and the names."
  affordance "One stamped fold carries a relay pulse intact across broken bands and gives posts, courts, and markets a witnessed message at the far frame."
  pressure "Any accidental smoothing spends the only copy, so written cloth travels in rigid sealed tubes and is opened only at the receiving frame."
  variation "Fresh bolts serve the formal traffic — orders, findings, contracts; travel-worn cloth does the workaday relay; and the twice-creased retire to the flag stock that gives the dead country's posts their heraldry of spent mail."
  variation "Span Nine and Whitefoot weave to the same recovered pattern with looms' hands that disagree — frame operators can name a bolt's loom from the crease grain, and each post's operators quietly prefer one."
end
