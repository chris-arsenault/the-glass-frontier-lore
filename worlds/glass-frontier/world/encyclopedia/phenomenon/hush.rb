encyclopedia :hush do
  name "Hush"
  kind :phenomenon
  subkind :social_condition
  status :complete
  log "2026-08-31 — Renamed Latch Quiet to Hush; the towns' abrupt public stilling gives the practiced response an idiomatic shared name instead of an abstract social label."
  topics :"social-structure", :danger, :"ring-era", :resonance
  prevalence :rare
  appears_when all: { place: [:cordon] }
  summary "A hush is a cordon town's collective response when its boundary bells enter a remembered danger sequence. Public rooms empty, households close their shutters, and posted shelters take in travelers until the bells step down."
  medium "Cordon towns whose recovered elven bell codes include a sequence associated with an earlier surge, breach, or structural failure"
  nature "A learned public response maintained through household preparation and repeated drills rather than ordinance or central command"
  known_forms "Full hush, in which public rooms empty; partial hush, in which trade thins and doors are readied; and annual drills that preserve routes and shelter duties"
  operating_limit "The response depends on a locally remembered sequence, maintained routes, and households willing to carry the practice between alarms"

  descriptive_identity(
    signs: "Boundary bells enter a familiar sequence and public life answers " \
           "within a verse: conversations close, stalls shutter, and people " \
           "walk toward homes or posted shelters without waiting for an order.",
    effects: "The town moves from public business to household shelter. " \
             "Larders open, shutters seat, guest places fill, and the streets " \
             "remain clear until the bells step down.",
    hazards: "A hush costs trade and can empty necessary services, but " \
             "breaking it leaves residents and visitors exposed to the danger " \
             "the sequence was adopted to announce."
  )

  prose <<~PROSE
    Several cordon towns preserve bell sequences associated with an earlier surge, breach, or failure. When one of those sequences sounds, residents leave public rooms for their homes or for posted shelters. No central ordinance governs the response. Households maintain routes, guest places, quick-seating shutters, and stored food; market keepers, yards, and session rooms agree on the order in which they close. Children learn the route home alongside the cordon colors.

    The strength of the response depends on the sequence and on local memory. A full hush empties the public rooms. A partial one thins markets, readies doors, and brings children indoors while necessary work continues. Annual drills preserve both forms. Each town ties the practice to a danger in its own record, so neighboring hushes share a mechanism without sharing the same bells or threshold.

    #{ref :latch, "Latch"} maintains the fullest documented hush. Its escalation sequence was recorded before #{ref :pyre, "Pyre's"} great surge. When that sequence returns, stalls close in a practiced order, session rooms adjourn, yard messes bank their stoves, and residents walk home or to posted guest shelters. Latch's standing answer to the lost trade is that the bells may be wrong many times, but the town only needs them to be right once.
  PROSE

  cue "The boundary bells change pattern during an ordinary public scene. Stall keepers close in an agreed order while residents direct visitors toward marked guest shelters."
  cue "A near match thins the market without emptying it: shutters are unhooked, children are called indoors, and necessary rooms post the names of the people staying on duty."
  affordance "Maintained routes, shelter lists, and household stores let a town clear exposed public rooms without waiting for a command structure."
  variation "Some towns reserve hush for one exact sequence; others use a partial form for near matches and keep the full response for the remembered danger code."
  variation "The shelters may be private homes, yard messes, station rooms, or buildings kept expressly for travelers, according to the town's construction and obligations."
end
