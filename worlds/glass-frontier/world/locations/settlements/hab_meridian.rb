installation :hab_meridian do
  name "Hab Meridian"
  summary "Hab Meridian is a ring habitat in the Glass Frontier that preserves one inhabited arc as a working museum of the early Rekindling."
  playable_as :chronicle_location
  subkind :settlement
  path "player/locations/settlements/hab-meridian.md"
  tags :"ring-hab", :archives, :trade, :rebuilding, :"social-structure"
  prominence :recognized

  descriptive_identity(
    setting:
      "A ring torus split into two arcs by old structural seams. One " \
      "arc is kept in 2305-era condition down to the lighting, the " \
      "signage, and the standing background hum of its resonance " \
      "environment; the other holds the modern docks, council, clinics, " \
      "and dormitories that keep the museum running.",
    activity:
      "Inside the Period Arc, four thousand residents in period dress " \
      "run markets, workshops, schools, and a civic council on the " \
      "arc's own schedule, and the forty-three-minute first-contact " \
      "recording is played daily in the radio room where it was taken. " \
      "School groups, Conclave researchers, and tourists come through " \
      "by the thousand each month.",
    access:
      "Visitors arrive through the Outer, where the dormitories and " \
      "guest quarters sit, and enter the Period Arc only through the " \
      "single transition gate at the segment boundary.",
    hazards:
      "Every decision comes out of the Outer — council, doctors, " \
      "visitor arrangements — while what is at issue usually sits " \
      "inside the Period Arc, and the two populations work together " \
      "professionally and sometimes resentfully. Hearing the full " \
      "recording means booking a scheduled slot."
  )

  prose <<~PROSE
    The ring hab that first reconnected with #{ref :glasswake, "Glasswake"} has built its civic identity around that founding moment. Hab Meridian today is a living-history hab — a working museum operating at hab scale, where one full segment of the ring's habitable arc is preserved in early-Rekindling period, staffed by residents who have made the reconnection era their life's work, and visited by anyone in the system curious about what those years actually felt like.

    Meridian has committed its institutions, economy, and public life to the reconnection. Contemporary life in the hab either maintains that history or supports the people who do. The community pursues that single purpose as completely as a community can.
  PROSE
  prose <<~PROSE, section: :origin, heading: "The First Signal"
    The conversation was recorded. The Hab Meridian side of the recording survives in the hab's archives. The Glasswake side does not survive — the transmitter shorted out three days later and the recording medium degraded — but the Meridian recording captures both sides of the exchange. The technician who answered the call, **Aless Vorrith**, lived to be ninety-one years old and spent the last #{duration 40} of her life giving the same five-minute talk to visiting groups, three times a day, in the small chamber where she had taken the signal. She was buried in the hab. Her successor in the role is the great-granddaughter of her apprentice and gives a version of the same five-minute talk.

    The hab's continuing relationship with Glasswake is one of the closest cross-orbit partnerships in the system. Trade flows freely between them. Delegations cross at the major civic anniversaries. The two communities' children study each other's histories as a matter of course. Their formal relationship consists of trade, education, and civic exchange; Meridian reserves most of its commemoration for the Period Arc.
  PROSE
  prose <<~PROSE, section: :atmosphere, heading: "The Period Arc"
    A ring hab is a torus, and Hab Meridian's habitable interior is divided into two roughly equal arcs by old structural seams. The Period Arc is one of them.

    The Period Arc is the museum.

    The arc has been deliberately preserved in 2305-era condition — walls, lighting, signage, infrastructure, even the standing background hum of the resonance environment, all maintained to match what the hab looked and sounded like during the founding decades of the Rekindling. Its roughly four thousand residents, about a fifth of the hab's total population, live in period dress, use period equipment where it can be maintained safely, and conduct daily life in a working approximation of the reconnection era. They were born in the arc or moved there as adults, and the work of being Hab Meridian's living memory is their actual life.

    Visitors enter the arc through a single transition gate at the segment boundary. Inside, the arc operates on its own civic schedule: period markets, period workshops, period schools, period civic council. The radio room where Aless Vorrith took the first call is preserved at the heart of the arc and is staffed continuously by descendants and apprentices of the original watch. The streets are walked. The conversations are had. The work — small-scale agriculture, period craft production, basic mechanical maintenance using carefully reconstructed tools — is real work that produces real goods. The arc imports modern medical care and a few other practical necessities through the boundary gate, and the residents are aware that the necessities exist. They simply do not use them inside the arc.

    The Period Arc receives several thousand visitors a month at peak. School groups from across the system. Researchers from the #{ref :echo_ledger_conclave, "Echo Ledger Conclave"} (who consider the arc a useful primary source and an unsettling one). Diplomats and dignitaries on official courtesy visits. Tourists. The Hab Meridian visitor service handles arrivals with a practiced courtesy that is itself slightly period.
  PROSE
  prose <<~PROSE, section: :mechanics, heading: "The Other Arc"
    The hab's other arc — informally called the **Outer** by period residents, or simply **the rest** — is a working ring hab segment with modern infrastructure, modern resonance equipment, and a population of about fifteen thousand who run the hab.

    The Outer is, by any honest accounting, an institutional support structure for the Period Arc. The hab council that governs Meridian sits in the Outer. The hab's medical and educational infrastructure sits in the Outer. The visitor logistics — arrivals, departures, dormitories for school groups, the diplomatic guest quarters — sit in the Outer. The Outer trades with the rest of the system for the goods the hab does not produce internally, manages the hab's relationships with #{ref :vantara, "Vantara"} and the #{ref :tempered_accord, "Tempered Accord"}, and runs the modern hab life that the Period Arc has deliberately stepped out of.

    The Outer's residents are administrators, technicians, teachers, doctors, and dock workers. Most grew up in the hab and chose the Outer as adults. Some rotate into the Period Arc for years and return. The relationship between the two arcs is functional, professional, and sometimes resentful. Period residents describe the Outer as necessary infrastructure. Outer residents describe the Period Arc as the reason the hab exists.

    Meridian's production serves local needs rather than export, its resonance work is limited to operating the hab, and its scholarship concentrates on the hab's own history. The museum, the institutions required to run it at hab scale, and the population supporting both account for the hab's economy.
  PROSE
  prose <<~PROSE, section: :economy, heading: "How It Pays For Itself"
    The hab's economy runs on five overlapping flows.

    **Visitor revenue.** Admission to the Period Arc, dormitory fees for visiting groups, services for long-stay scholars, the small-trade economy that surrounds any tourist destination. This is the largest single flow and the most variable.

    **Accord and Sithari subsidies.** Hab Meridian is one of the few standing institutional partnerships the #{ref :tempered_accord, "Tempered Accord"} directly funds — the Accord considers the hab's preservation work a civic asset of system-wide value. Sithari supplements it through a long-standing diplomatic appropriation. No appropriation has been revoked, and no Sithari political faction has found an advantage in proposing one. The subsidies are modest and steady.

    **Conclave service contracts.** The #{ref :echo_ledger_conclave, "Echo Ledger Conclave"} maintains a permanent research presence in the hab, paying for access to the archived founding-era records and for the unique ability to study the period as a working environment. The contract is small and prestigious and the relationship between the two institutions is professionally cordial.

    **Glasswake partnership trade.** The First Signal partnership produces real trade, primarily in goods that the hab cannot produce internally and that Glasswake can supply. The exchange runs in both directions; Meridian produces some period-craft goods that have a small but reliable market in surface settlements that appreciate the provenance.

    **Endowment.** The hab has accumulated, across #{elapsed :hab_meridian} of operation, an endowment fund that absorbs revenue volatility. The endowment is conservatively managed. The hab council has a standing policy of never spending capital, and it has never applied that policy during a year severe enough to require capital spending.
  PROSE
  prose <<~PROSE, section: :tensions, heading: "The Critique"
    Critics across the system argue that Hab Meridian surrendered the possibility of becoming anything else. They admire the Period Arc and ask what Meridian could have been without its complete commitment to the past. They describe its contemporary art, science, and public life as commentary on or service to the founding era rather than a culture of its own. After #{elapsed :hab_meridian, approx: true} of civic life, they say, the hab has produced nothing as distinctly its own as #{ref :fermata_station, "Fermata Station"}'s jazz governance, #{ref :sithari, "Sithari"}'s ringglass aesthetic, or #{ref :pelhari, "Pelhari"}'s instrument-wright tradition.

    The Meridian council answers that no other institution has made the same commitment, that the work preserves a founding memory the system would otherwise lose, and that generations of residents chose the specialization through open votes. The answer has not persuaded the hab's critics or changed its policy.

    Inside the hab, middle-aged Outer residents voice the critique most often and wonder what they would have made of themselves elsewhere. The structure of life in the Period Arc gives its residents fewer occasions to ask the same question. Meridian's young people leave or stay in roughly the same proportions as those of other habs; those who stay sort themselves into the two arcs by temperament.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Hab Meridian in #{year :now} CE is one of the most stable institutions in the system. The visitor traffic has been steady for decades. The Period Arc's preservation work is in good order. The hab council is competent. The relationships with Glasswake, Sithari, and the Accord are durable. Its population is stable, and it continues the work it began #{elapsed :hab_meridian, ago: true}.

    There is a small ongoing argument, mostly internal, about whether the Period Arc should be expanded to preserve later founding-era developments — the 2310s, the 2320s, the early Contested Reach period. The argument has not been resolved. The council has retained the existing boundary on the grounds that the arc covers the founding decade and that expansion would dilute its focus.

    The signal Aless Vorrith answered in 2305 is still played, daily, in the radio room she once worked in, by people whose grandparents knew her. The conversation is forty-three minutes long. Visitors who want to hear the whole thing have to schedule a slot. Most do.
  PROSE

  gm_note :appears, "The Period Arc is reached only through the single transition gate at the segment boundary, and inside it the arc runs on its own civic schedule: period markets, period workshops, period schools, and a council keeping hours the rest of the hab does not."
  gm_note :triggered_by, "Asking to hear the first contact gets a scheduled slot rather than a copy. The forty-three-minute Meridian recording is played daily in the radio room Aless Vorrith once worked in, the Glasswake side of it did not survive, and anyone wanting the whole thing books ahead."
  gm_note :complicates, "Decisions come out of the Outer, where the council, the doctors, and every visitor arrangement sit, while what is at issue is usually inside the Period Arc. The two populations work together professionally and sometimes resentfully."
end

relate :rel_hab_meridian_part_of_glass_frontier, :part_of, :hab_meridian, :the_glass_frontier do
  prose "Hab Meridian is one of the larger inhabited fragments of #{ref :the_glass_frontier, "the Glass Frontier"} and an early, deliberate experiment in reconnection."
end
relate :rel_hab_meridian_cooperates_glasswake, :cooperates_with, :hab_meridian, :glasswake, since: 2305 do
  prose "Its first formal tie was to #{ref :glasswake, "Glasswake"} — the embassy exchange that became a model for how a ring hab and a surface settlement could deal as equals."
  descriptive_identity(
    basis:
      "Free trade, delegations crossing at the major civic " \
      "anniversaries, and children on each side studying the other's " \
      "history as a matter of course — the working shape of the " \
      "partnership the First Signal started.",
    limits:
      "The commemorating is done at home: Meridian keeps its memory in " \
      "the Period Arc and holds the formal relationship to trade, " \
      "education, and civic exchange, since the Glasswake side of the " \
      "recording did not survive."
  )
end

# --- history (moment) ---
moment :meridian_answered_first_signal, year: 2305, of: :hab_meridian do
  summary "Hab Meridian answered Glasswake's long-range transmission in 2305, opening the first sustained cross-channel conversation since the Glassfall."
  prose "Hab Meridian's standing watch — a single technician, **Aless Vorrith**, on a long shift at an old receiver kept active despite decades without expected traffic — heard the carrier wave come in from #{ref :glasswake, "Glasswake"}, recognized it, and answered. The first cross-channel conversation in #{elapsed :the_glassfall, :the_rekindling} lasted forty-three minutes and was largely about whether the signal was real. Meridian has banked its entire civic identity on that moment ever since."
  effects { set :hab_meridian, standing: :reconnected }
end
