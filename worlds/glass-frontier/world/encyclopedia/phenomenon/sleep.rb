encyclopedia :sleep do
  name "Sleep"
  summary "Sleep is the simultaneous stilling of every bed and symbiote line in a garden habitat. The deck remains barely alive and consumes little, but known local treatments do not wake it. Living water carried from another habitat and poured at the oldest graft restores growth outward in graft order."
  kind :phenomenon
  subkind :ecological_phenomenon
  status :complete
  log "2026-08-31 — Renamed Root Sleep to Sleep; garden wardens' ordinary waking vocabulary supplies the condition's stable meaning without a technical category noun."
  prevalence :rare
  topics :ecology, :"ring-era", :"ring-hab", :mystery
  appears_when all: { place: [:garden] }
  medium "A garden habitat's whole root deck — beds, grafts, and symbiote web stilling together, regardless of season, water, or light"
  nature "A deck-wide sleep of elven garden stock under conditions still being mapped; prolonged isolation is the best documented precursor, and living water from another deck is the only recorded successful waking treatment"
  known_forms "Isolation sleep after prolonged loss of exchange; shock sleep after deck-wide trauma; and ordinary blights that resemble the first signs but do not still every bed together"

  descriptive_identity(
    signs: "The deck goes quiet in a day — growth stopping mid-season, leaves " \
           "furling to bare life, the symbiote murmur dropping out — every bed " \
           "at once, in a stillness too uniform for any blight.",
    effects: "The deck holds at the edge of life and consumes little; recorded " \
             "local trials with water, warmth, and regrafting have not ended " \
             "the sleep, while living water from another deck wakes growth " \
             "from the oldest graft outward.",
    hazards: "A sleeping deck suspends every harvest, putting the habitat on " \
             "stored food while a courier travels to another living garden " \
             "and returns with water."
  )

  prose <<~PROSE
    Sleep stills a garden deck in a day, sometimes in mid-season. Leaves furl, growth stops across every bed, and #{encyclopedia_ref :graft, "the Graft's murmur"} disappears. The uniform timing distinguishes it from ordinary blight. The plants and symbiotes remain barely alive and consume little. Recorded attempts with local water, added heat, and fresh grafts do not wake them. Living water carried from another habitat succeeds when poured at the sleeping deck's oldest graft; over the following days, beds resume growth outward in the order they were grafted.

    Prolonged isolation from other garden habitats precedes the best-documented sleeps; deck-wide shock has preceded others. Garden wardens therefore rule out blight, open the stores ledger, and send for water as soon as the full-deck stillness is confirmed. Waking water travels in a sealed vessel carried by a person of standing and is poured at the oldest graft before witnesses. Habitats record the source garden in their histories and display the emptied vessel afterward. Garden folk acknowledge the continuing exchange at season fairs with the toast, “May your water travel.” The records support a link between sleep and isolation, but do not establish why elven deck stock responds this way.
  PROSE

  cue "The deck goes quiet in a day — every bed at once, the murmur gone — and the wardens' first act after the stillness is confirmed is to open the stores ledger and name who rides for water."
  cue "The sealed vessel is poured at the oldest graft before witnesses, and over the following days the deck wakes outward in the order of its grafting — the hab's whole food supply lighting room by room."
  affordance "The deck's low consumption preserves the growing stock while a courier brings living water from another habitat; waking then proceeds in a visible order from the oldest graft."
  pressure "From confirmation onward the habitat eats stored food until a courier completes the journey to a living garden and back."
  variation "Isolation and shock sleeps wake by the same treatment; wardens rule out ordinary blight first because it follows different patterns and has local remedies."
  variation "Waking-water custom varies in everything but its core — who carries, what vessel, which words — and hab histories keep their source-hab names in the founding pages, next to the years the water traveled."
end
