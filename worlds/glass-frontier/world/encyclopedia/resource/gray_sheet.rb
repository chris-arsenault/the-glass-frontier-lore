encyclopedia :gray_sheet do
  name "Palimpsest"
  aka "sheet", "wipe-sheet"
  summary "A palimpsest is the everyday reusable writing surface of the system: salvaged elven record film that takes a stylus mark, holds it through weather and handling, and wipes clean with a warm cloth for the next use. Markets chalk prices on it, households keep lists on it, and a family's sheets pass down like spoons."
  kind :resource
  subkind :material
  status :complete
  log "2026-08-31 — Renamed Gray Sheet to Palimpsest; the familiar word names the reusable film by the buried writing each wiping leaves behind."
  topics :household, :"ring-era", :trade, :archives
  prevalence :common
  available_globally
  function "Reusable writing surface for working notes, postings, tallies, and lists"
  grades "Graded by wipe count and surface: bright sheet wipes clean and true, seasoned sheet carries ghost layers, and blind sheet has gone glossy past marking"
  availability "Salvage stock, cut and traded everywhere; the great sheet lodes are the ring's record offices, and cutting rights on a fresh office are priced like a small mine"

  descriptive_identity(
    appearance: "A stiff gray film, cool and faintly pearly, cut to hand and market sizes with " \
                "rounded salvage-shop corners. Written, it holds a dark clean line; wiped, it " \
                "clears to gray with the faint ghost of old layers deep in the surface.",
    working: "Any hard stylus marks it and a warm damp cloth wipes it, hundreds of times over. " \
             "Deep-written marks settle in with the years, and a seasoned sheet carries its " \
             "history as layered ghosts a strong lamp brings up.",
    risks: "The ghosts are the hazard and the treasure: a wiped sheet testifies under a reading " \
           "lamp, which has decided lawsuits, embarrassed ministries, and taught every trade " \
           "in the system to burn its real secrets on paper."
  )

  prose <<~PROSE
    The everyday writing surface of the system came out of the ring's filing rooms. A palimpsest is #{encyclopedia_ref :elves, "elven"} record film — the working stationery of the ring's civil service, salvaged by the crate since the Famine years — and it does today what it did then: takes a hard stylus cleanly, shrugs off water, grease, and handling, and wipes back to gray with a warm cloth for the next use. A market stall chalks the morning prices on a board of it. A household keeps its lists on the kitchen sheet. A foreman's day rides in a hip pocket, wiped each night, and a family's sheets outlast the family's houses and pass down with the spoons.

    Supply is salvage and the trade knows its lodes. The ring's record offices held sheet by the roomful, and cutting rights on a freshly opened office sell like claims on a small mine; the cut stock moves through salvage markets to the stationers, who trim, round the corners, and grade. Bright sheet wipes clean and true and prices highest. Seasoned sheet has taken decades of writing and carries ghost layers deep in the surface — faint strata of old marks that a strong reading lamp brings up — and blind sheet, gone glossy past marking, ends as tile and trim. The grading is by wipe: a stationer writes a test line, wipes, and reads what the surface kept.
  PROSE

  prose <<~PROSE, section: :trade, heading: "Ghosts and What They Cost"
    The ghost layers give the material its second life and its legal career. A seasoned sheet is a shallow archive of everything it carried, recoverable in part under lamp and patience, and recovered ghosts are admissible where the custody holds — market disputes have turned on a wiped tally raised from a stall's own board, and one celebrated Verathi succession turned on a draft will its author wiped and its sheet remembered. The trades drew the working conclusion generations ago: routine business goes on sheet, and anything meant to vanish goes on paper, into the stove.

    Archive houses buy seasoned sheet from famous rooms at ghost prices — stock from the ring's own offices carries elven working notes in its deep layers, and raising them is a recognized scholarly craft with its own journals and its own frauds. Lamp-readers work the middle of the market, hired to recover what a kitchen or workshop sheet remembers. Trade custom allows them to read the recovered words aloud only to the sheet's owner.
  PROSE

  cue "The stall's price board is a pearly palimpsest chalk-marked in stylus, and between customers the seller wipes one line with a cloth kept warm on the kettle and writes the new price in its place."
  cue "Under the clerk's reading lamp, faint strata of older writing float up through the sheet's surface, and the clerk works down through them layer by layer, taking notes on paper."
  affordance "A sheet is a lifetime of stationery in one object — write, wipe, write again through weather and grease — and a seasoned sheet's ghost layers make it a shallow archive that can testify about its own past under a reading lamp."
  pressure "The surface remembers what the wipe removes, so every sheet in a household or shop is a slow-burning record of its business — and the parties to any dispute know exactly which board to subpoena."
  variation "Kitchen sheets and market boards run to seasoned stock and honest ghosts; courts and registries buy bright sheet by preference and retire it young, on principle."
  variation "Scholars pay lode prices for sheet cut from the ring's own offices, and the lamp-raising of elven working notes from deep layers is a recognized craft with journals, rivalries, and forgeries."
end
