encyclopedia :cinder_sledge do
  name "Cinder Sledge"
  kind :technology
  subkind :transport
  status :complete
  topics :transport, :danger, :"outer-system", :trade
  prevalence :uncommon
  appears_when all: { place: [:hot, :road] }
  summary "A cinder sledge is the heavy freight carrier of the hot roads: a broad ceramic-skinned runner sled that rides the crusted cinder fields on skids, breathing its own drive heat out through a smoke-stack mane. Sledge convoys cross ground that eats wheels and cooks crews."
  function "Hauls bulk freight across cinder crusts and heat-glazed ground on ceramic skids"
  classes "The Ashvane road pattern with high cargo racks; Crucible's low ore convoys; the light survey runner the cordon services keep"
  capacity "A road sledge hauls six bound pallet masses and a shielded crew cab; ore convoys run linked sledges behind one drive unit"
  operating_limit "The sledge lives inside a heat budget — drive heat and ground heat share one ledger, and the mane's smoke tells the driver the balance at a glance"

  descriptive_identity(
    appearance: "A broad low sled on ceramic skids, skinned in white heat-tile gone tea-brown " \
                "with service, with the drive's exhaust mane rising in a row of stacks along " \
                "the spine. On the move it trails shimmer and thin smoke, and its skids sing " \
                "on the crust.",
    working: "The driver runs the heat ledger: drive effort makes heat, the ground donates " \
             "more, the mane sheds what the budget allows, and the day's route is planned " \
             "between passings and shade the way a captain plans between tides.",
    risks: "Thin crust is the trade's void — ground that carries the lead skids and opens " \
           "under the convoy — and sledge crews sound doubtful crust ahead with weighted " \
           "strikes, reading the ring the way spider crews read the pole."
  )

  prose <<~PROSE
    The hot roads of Ashvane and Crucible cross cinder fields — crusted, heat-glazed, patient ground that eats wheels, cooks axles, and shrugs at walkers — and the cinder sledge is the freight answer the hot settlements built when the Glassfall left them hauling their own ore. A sledge is a broad low runner sled skinned in ceramic heat-tile, riding polished skids that sing on the crust, with its drive's exhaust rising through the row of spine stacks the crews call the mane. The design's whole logic is the heat ledger: drive effort makes heat, the ground donates more, the mane sheds what it can, and everything about a sledge run — load, pace, route, and rest — is the driver keeping that ledger in the black.

    The ledger is read at a glance from outside, which shapes the culture of the roads. A sledge running cool trails thin pale smoke; a sledge running toward its limit manes dark and low, and every crew that sights it knows the driver's afternoon. Sledge convoys plan their days between #{encyclopedia_ref :passings, "passings"} like coastal traffic between tides — heavy legs run in the shade windows, the long midday passing is the trunk roads' rush hour, and a convoy caught fat and dark-maned in full light makes for the marked cool-stands, the crust hollows every route maintains, with the whole road's sympathy and full attention.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Crust Craft and Convoys"
    Crust is the road and the risk in one surface. Sound crust carries an ore convoy; thin crust carries the lead sledge and opens under the third, and the difference is a note — sledge crews sound doubtful ground ahead with weighted strikes and read the ring, the hot roads' cousin of the spider crews' pole. Route books grade crust by season, cool-stands and thin runs are charted like soundings, and the roads' oldest working alliance is sledge crews trading crust notes with the #{encyclopedia_ref :cinderback, "cinderback"} herders whose animals read the same ground for free.

    The patterns split by trade. Ashvane road sledges run high racks and shielded cabs on the town legs; Crucible's ore convoys link low sledges behind one drive unit and crew like small ships; and the cordon services keep light survey runners maned for speed. Crews are two to a cab — driver on the ledger, mate on the crust — and the driver's traditional last act at shift's end is chalking the day's peak ledger figure on the mane's lead stack, where the next shift reads it before anything else.
  PROSE

  cue "The ore convoy comes down the shade leg singing on its skids, trailing thin pale smoke, and the watching crews read its mane the way sailors read a flag."
  cue "Ahead of the stopped convoy, the mate walks the crust swinging a weighted striker, and the whole crew turns at one dull ring."
  affordance "Linked sledges move bulk freight across ground that ends every other carrier, and the mane's smoke publishes each convoy's heat ledger to the whole road so crews can stage help before it is requested."
  pressure "Heat and crust share the route's arithmetic: the shade windows are everyone's rush hour, the cool-stands are finite, and a dark-maned convoy on thin crust is spending two budgets at once."
  variation "Ashvane road sledges run high racks between towns on the passing schedule; Crucible's linked ore convoys crew like ships and rank their drivers by career ledger figures."
  variation "Crews chalk the shift's peak heat figure on the lead stack for the next crew, and the roads compare their lowest season ledgers at the last cool-stand gathering of the year."
end
