encyclopedia :whitefoot_signal_cart do
  name "Whitefoot Canter"
  aka "signal cart", "line cart"
  kind :technology
  subkind :transport
  status :complete
  log "2026-08-31 — Renamed Whitefoot Signal Cart to Whitefoot Canter; the terminus name and the line-speed reading give the vehicle a local working name rather than an equipment label."
  topics :"signal-freq", :"ring-era", :transport, :navigation
  prevalence :uncommon
  appears_when any: { place: [:damaged_signal, :road] }
  summary "A Whitefoot canter is a line-riding maintenance carrier of elven make that travels the old signal conduits themselves, drawing power and guidance from the line it serves. The canters still run the Span Nine country, carrying crews and message freight along infrastructure that predates every road they cross."
  function "Carries maintenance crews and message freight along ring-era signal conduits, powered and guided by the line itself"
  classes "The two-seat inspection canter, the crew pattern with tool bays, and the message pattern the signal trades run scheduled on sound line"
  capacity "A crew canter carries four with tools; the message pattern trades seats for sealed freight lockers"
  operating_limit "A canter lives on its line — speed and range track the conduit's health, and one crossing a dead section slows to a crawl on its reserve"

  descriptive_identity(
    appearance: "A low open carrier of pale elven alloy riding a saddle-shaped keel that " \
                "cups the conduit, with lamp masts fore and aft and the worn bench polish " \
                "of three centuries of working crews. The keel hums faintly on sound line " \
                "and goes quiet where the line ails.",
    working: "Set on the conduit, the canter draws motion and guidance from the line's own " \
             "carrying bands: strong line runs it at a canter, weak line slows it " \
             "honestly, and crews read speed as diagnosis — the canter is an instrument " \
             "that happens to carry its readers.",
    risks: "The canter slows over every fault, including the one the crew came to fix. A canter " \
           "stranded mid-span on dead line waits for rescue while its crew continues on foot."
  )

  prose <<~PROSE
    Where the old signal conduits still cross the country — the #{ref :span_nine, "Span Nine"} corridor above all, rising from the plain at #{ref :whitefoot, "Whitefoot"} — the lines carry their own traffic. The Whitefoot canter is #{encyclopedia_ref :elves, "elven"} line-service equipment still doing its job: a low pale-alloy carrier whose saddle keel cups the conduit and draws motion, guidance, and lamplight from the line's own carrying bands. Strong line runs a canter at its namesake pace with the keel humming; weak line slows it; dead line stops it. Speed becomes the reading, and crews chart a line's health by clocking a canter along it.

    The surviving canters serve the conduit country's settlements as maintenance fleet and mail line in one. Crew canters carry the signal trades out to their faults with tool bays and the patience the work demands; the message pattern runs scheduled on the sound sections, sealed lockers riding where the tide-held relay traffic can move by line even at high flood — the canters' steadiest civic work, since conduit carriage rides under the band weather that silences transmission. Whitefoot's canter sheds, built into the terminus platform, hold the region's fleet and the pattern shops that keep it: keels dressed, benches re-worn, and the line-side courtesy maintained that a canter slowing past a work crew is asked its reading and answers with a chalked number on the keel box.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Line Craft and the Crawl"
    Riding line is its own trade knowledge. Crews plan by the conduit chart the way mane crews plan by crust — sound sections at a canter, ailing ones at a walk, the dead crossings staged with reserve and rescue arrangements — and the canter's crawl over a weakening section is treated as first survey. The crew logs where the keel went quiet, and the fault teams work from the canter logs before any instrument goes out. When dead line strands a canter, the crew continues on foot. Every shed wall carries the same embroidered proverb in some hand or other: the line forgives neither optimism nor freight.

    Pattern shops maintain the canters' exposed workings but cannot open the sealed keel cores. A core failure retires a canter into the parts rows, so the fleet shrinks by attrition and the sheds ration canter-days like water rights. The conduit settlements argue over which use receives a dwindling fleet: the mail, the maintenance, or the survey the other two depend on.
  PROSE

  cue "A low pale canter runs along the raised conduit with its keel humming, slows to a crawl over one span with the hum gone thin, and the crew chalks a number on the keel box in passing."
  cue "In the Whitefoot sheds the fleet stands in its rows, benches worn to a shine, and one canter sits apart in the parts rows with its keel draped."
  affordance "The canters move crews and sealed message freight along the conduits in any band weather, and every run doubles as a line survey — the fleet's speed logs are the conduit country's health chart, kept for free by the act of traveling."
  pressure "The canter obeys the line absolutely, so the fleet's range shrinks with the conduits' health — and the sheds' rationing argument sharpens every season the keel-hum thins over another span."
  variation "Crew canters serve fault teams with tool bays; the message pattern runs scheduled lockers on sound sections and continues carrying freight through band weather that stops transmission."
  variation "Core failures retire canters into the parts rows with shed ceremony, and the dwindling fleet's canter-days are rationed and traded between the conduit settlements like water rights."
end
