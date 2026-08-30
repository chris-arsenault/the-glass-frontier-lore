encyclopedia :whitefoot_signal_cart do
  name "Whitefoot Signal Cart"
  aka "signal cart", "line cart"
  kind :technology
  subkind :transport
  status :complete
  topics :"signal-freq", :"ring-era", :transport, :navigation
  prevalence :uncommon
  appears_when any: { place: [:damaged_signal, :road] }
  summary "A Whitefoot signal cart is a line-riding maintenance carrier of elven make that travels the old signal conduits themselves, drawing power and guidance from the line it serves. The carts still run the Span Nine country, carrying crews and message freight along infrastructure that predates every road they cross."
  function "Carries maintenance crews and message freight along ring-era signal conduits, powered and guided by the line itself"
  classes "The two-seat inspection cart, the crew pattern with tool bays, and the message pattern the signal trades run scheduled on sound line"
  capacity "A crew cart carries four with tools; the message pattern trades seats for sealed freight lockers"
  operating_limit "A cart lives on its line — speed and range track the conduit's health, and a cart crossing a dead section slows to a crawl on its reserve and its dignity"

  descriptive_identity(
    appearance: "A low open cart of pale elven alloy riding a saddle-shaped keel that " \
                "cups the conduit, with lamp masts fore and aft and the worn bench polish " \
                "of three centuries of working crews. The keel hums faintly on sound line " \
                "and goes quiet where the line ails.",
    working: "Set on the conduit, the cart draws motion and guidance from the line's own " \
             "carrying bands: strong line runs it at a canter, weak line slows it " \
             "honestly, and crews read speed as diagnosis — the cart is an instrument " \
             "that happens to carry its readers.",
    risks: "The cart's honesty is mechanical: it slows over every fault including the one " \
           "the crew came to fix, and a cart stranded mid-span on dead line waits for " \
           "rescue by the older method of walking."
  )

  prose <<~PROSE
    Where the old signal conduits still cross the country — the #{ref :span_nine, "Span Nine"} corridor above all, rising from the plain at #{ref :whitefoot, "Whitefoot"} — the lines carry their own traffic. The Whitefoot signal cart is #{encyclopedia_ref :elves, "elven"} line-service equipment still doing its job: a low pale-alloy cart whose saddle keel cups the conduit and draws motion, guidance, and lamplight from the line's own carrying bands. Strong line runs a cart at a canter with the keel humming; weak line slows it; dead line stops it with a mechanical honesty the signal trades have organized themselves around. The cart is a diagnosis that carries its crew — speed is the reading, and a line's health can be charted by clocking a cart along it.

    The surviving carts serve the conduit country's settlements as maintenance fleet and mail line in one. Crew carts carry the signal trades out to their faults with tool bays and the patience the work demands; the message pattern runs scheduled on the sound sections, sealed lockers riding where the tide-held relay traffic can move by line even at high flood — the carts' steadiest civic work, since conduit carriage rides under the band weather that silences transmission. Whitefoot's cart sheds, built into the terminus platform, hold the region's fleet and the pattern shops that keep it: keels dressed, benches re-worn, and the line-side courtesy maintained that a cart slowing past a work crew is asked its reading and answers with a chalked number on the keel box.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Line Craft and the Crawl"
    Riding line is its own trade knowledge. Crews plan by the conduit chart the way sledge crews plan by crust — sound sections at a canter, ailing ones at a walk, the dead crossings staged with reserve and rescue arrangements — and the cart's crawl over a weakening section is treated as first survey: the crew logs where the keel went quiet, and the fault teams work from the cart logs before any instrument goes out. A cart stranded on dead line is the trade's humbling classic, resolved by walking, and every shed wall carries the same embroidered proverb in some hand or other: the line forgives neither optimism nor freight.

    The carts themselves are irreplaceable in the practical sense — the pattern shops maintain everything the keels' sealed cores are pleased to permit, and core failures retire a cart into the parts rows with due ceremony — so the fleet shrinks by attrition, the sheds ration cart-days like water rights, and the standing argument of the conduit country is which uses of a dwindling fleet honor it: the mail, the maintenance, or the survey the mail and maintenance both depend on.
  PROSE

  cue "A low pale cart canters along the raised conduit with its keel humming, slows to a crawl over one span with the hum gone thin, and the crew chalks a number on the keel box in passing."
  cue "In the Whitefoot sheds the fleet stands in its rows, benches worn to a shine, and one cart sits apart in the parts rows with its keel draped."
  affordance "The carts move crews and sealed message freight along the conduits in any band weather, and every run doubles as a line survey — the fleet's speed logs are the conduit country's health chart, kept for free by the act of traveling."
  pressure "The cart obeys the line absolutely, so the fleet's range shrinks with the conduits' health — and the sheds' rationing argument sharpens every season the keel-hum thins over another span."
  variation "Crew carts serve the fault teams with tool bays and patience; the message pattern runs scheduled lockers on the sound sections, and its flood-season reliability is the conduit towns' quiet pride."
  variation "Core failures retire carts into the parts rows with shed ceremony, and the dwindling fleet's cart-days are rationed and traded between the conduit settlements like water rights."
end
