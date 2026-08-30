encyclopedia :reed_flour do
  name "Reed Flour"
  kind :resource
  subkind :material
  status :complete
  topics :household, :trade, :ecology
  prevalence :common
  appears_when any: { place: [:waterway, :garden] }
  summary "Reed flour is the pale, faintly sweet staple milled from the starchy rootstock of filter reeds — the water-cleaning planting the elves ran through every channel and gallery, whose beds now feed the settlements that tend them. It is the flour of river country and hab galleries alike: dense, forgiving, and the base of the flatbreads most of Kaleidos calls simply bread."
  function "Staple food starch — flatbreads, porridges, thickening, and the travel hardbread that keeps for a season; the working flour wherever filter reeds grow, which is wherever water moves"
  grades "First-cut flour from young rootstock, pale and sweet, for table breads; standing-cut from mature beds, darker and denser, for hardbread and porridge; and mill seconds, sold rough for stock feed and paste"
  availability "Milled locally everywhere reeds are tended — river settlements, hab water galleries, terrace channels — and traded in sacks stamped with the mill's mark; harvest follows the cutting calendar each bed's stewards post"

  descriptive_identity(
    appearance: "A pale flour with a gray-green cast and a faint sweet water smell, " \
                "sold in sacks under the mill's stamp; the dough works dense and " \
                "forgiving, and the flatbreads bake with a glossy blistered face.",
    working: "Rootstock is cut on the bed's posted calendar, washed, sliced, dried " \
             "on rack or line, and milled; every step is household-scale where it " \
             "needs to be, and the big river mills run the same process at barge " \
             "volume.",
    risks: "The flour keeps well dry and sours plainly when wet — the nose knows " \
           "before the tongue — and the beds themselves are working filters, so " \
           "cutting law leaves the water's cleaning capacity standing: a bed cut " \
           "past its calendar pays for the flour in fouled channel."
  )

  prose <<~PROSE
    The #{encyclopedia_ref :elves, "elves"} planted filter reeds as plumbing. The channels, water galleries, and terrace runs of the ring were lined with the tall gray-green stands — living filtration, cleaning the water as it moved, their starchy rootstock an engineering margin rather than a crop. On the standing ring the reeds were tended by maintenance schedule and eaten, the recordings suggest, chiefly as a curiosity. The Glassfall reversed figure and ground. Cut off from the ring's food system, the early fragment settlements ate what the plumbing grew, and reed flour — the pale, faintly sweet starch milled from washed and dried rootstock — turned out to be a staple hiding in the infrastructure: dense, forgiving in the hand, keeping for a season dried into travel hardbread. Present-day Kaleidos eats it everywhere water moves. The flatbread with the glossy blistered face is what most of the system means by bread, and the sack under the mill's stamp is the measure river landlords quote rents in.

    The crop's law is the double duty. A reed bed is a working filter first — its settlement drinks downstream of it — so cutting follows the posted calendar that leaves the water's cleaning capacity standing, and the bed stewards who set the calendar hold one of river country's quietly powerful offices. Practice divides by scale and keeps one shape: rootstock cut on calendar, washed, sliced, dried on rack or line, milled — a household kitchen can do all of it, and the big river mills do the same at barge volume with the millstone's note carrying across the water on cutting days. The grades sort by the bed's age — first-cut pale and sweet for table bread, standing-cut dark and dense for hardbread and porridge — and the flour's household culture runs deep enough to carry the calendar with it: the first-cut loaves of a new season go to neighbors and creditors in a fixed order every river town knows, and a household's standing can be read, locals insist, in how far down the lane its first baking travels.
  PROSE

  cue "Cutting day: the bed stewards' calendar posted at the channel head, the cutters working the marked stands thigh-deep, and the mill's note carrying across the water while the racks fill with drying slices."
  cue "The first-cut loaves leave the oven and go down the lane in the fixed order — neighbors, then creditors — and the kitchen's youngest carries them, learning whose door comes when."
  affordance "A tended bed feeds its settlement and cleans its water in the same stand — flour by the sack, hardbread that travels a season, and a crop any kitchen can process at need."
  pressure "The bed is filter first and field second, so hunger and clean water pull against each other in every bad season — and a settlement that cuts past the calendar drinks the consequences downstream of its own decision."
  variation "River mills stamp trade sacks and run barge volume; hab galleries mill small for their own tables; and the terrace channels' pocket beds are cut by households on shares the stewards arbitrate."
  variation "First-cut and standing-cut divide table bread from hardbread, and travel custom judges a crew's provisioner by which mill's stamp is on the hardbread sack."
end
