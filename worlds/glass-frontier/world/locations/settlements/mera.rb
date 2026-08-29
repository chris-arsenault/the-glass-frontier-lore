installation :mera do
  name "Mera"
  summary "Mera is a settlement of about six thousand people on a slow-tumbling fragment of the Glass Frontier, where a long shaded season supports ice-grown water storage."
  playable_as :chronicle_location
  context_tags :"realm:ring_habitat"
  subkind :settlement
  type_of :settlement
  status :complete
  tags :"ring-hab", :ecology, :household, :materials, :resonance
  prominence :marginal
  population 6000
  population_band "About six thousand residents"
  role "Seasonal water storage, cold agriculture, and ice construction"
  setting "A slow-tumbling fragment with a long shaded season and a warm return"
  access "Seasonal Keelward freight at one axial dock; ice-court locks open only during the cold build"
  omit_facts :maintained_by

  descriptive_identity(
    setting:
      "A slow-tumbling fragment whose main courts sit in shadow for weeks " \
      "at a stretch. Through the cold season immense ice columns stand " \
      "over the courts carrying stairs, cold rooms, and market platforms; " \
      "in the bright return, watercourses cross the same floors as the " \
      "columns narrow.",
    activity:
      "Cold-season crews redirect spray nozzles over thawglass frames, " \
      "growing each column to melt in a chosen order; after the light " \
      "returns, first melt fills the drinking tanks and shops climb down " \
      "from high platforms to the exposed floor. Residents carve murals " \
      "and one-season promises into the clear outer ice.",
    access:
      "Keelward freight calls seasonally at a single axial dock, and the " \
      "ice-court locks open only during the cold build.",
    hazards:
      "An address moves with the season — winter terraces and spring " \
      "courts occupy the same ground, and only the painted depth lines " \
      "and permanent ceramic stairs hold through both."
  )

  prose <<~PROSE
    A slow tumble leaves Mera's main courts in shadow for weeks. Residents use the cold season to grow immense ice columns from circulating water. During the bright return, the columns melt through channels that feed homes, gardens, baths, and workshops.

    The settlement changes shape around them. Winter walkways climb frozen terraces. Spring watercourses cross the same courts. Shops move from high platforms to the exposed floor as the columns narrow. Painted depth lines and permanent ceramic stairs let a resident recognize an address through every phase.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Growing the Columns"
    Water rises through pipes inside a framework of #{encyclopedia_ref :thawglass, "thawglass"}. Fine spray freezes onto the frame and builds outward. Crews redirect the nozzles through the cold weeks, producing broad bases, hollow storage rooms, and shaded faces that melt in a chosen order.

    Each column belongs to a water ward. The first melt fills drinking tanks. Later flow reaches gardens and process lines. Public columns carry stairs, cold rooms, and market platforms while they stand. Smaller household columns keep food and release water into local cisterns.

    Mera closes the outer spray court when light reaches the first red depth line. Crews recover nozzle frames from within the ice and open spill channels toward the bright-season reservoirs. Ring Age tanks call the fragment Merath-Ilyen; seasonal manifests shortened the working name to Mera.
  PROSE

  prose <<~PROSE, section: :culture, heading: "What the Thaw Reveals"
    Residents carve murals, family marks, and short promises into the clear outer layers. Meltwater blurs them from the bottom upward. Permanent records stay on ceramic panels fixed to the court walls; the ice carries messages intended for one season.

    Rooms buried inside a public column open as doors melt free. Winter stores become spring stalls. Musicians use the narrowing chambers for performances whose tone changes every day. Children race leaf-sized floats through the first open channels.

    #{embed :room_before_the_ice}
  PROSE

  gm_note :appears, "An address in Mera sits on a frozen terrace through the cold season and on an open court floor after the melt. " \
                    "Painted depth lines and the permanent ceramic stairs hold through both phases; a visitor navigating by anything else arrives on the wrong level."
  gm_note :triggered_by, "Anything cut into a public column's clear outer layer stays legible until meltwater reaches it from below and blurs it upward. " \
                         "A promise meant to outlast the season goes on the ceramic panels fixed to the court walls."
end

relate :rel_mera_located_in_frontier, :located_in, :mera, :the_glass_frontier, since: 2140 do
  prose "Mera follows a slow tumble within the inhabited ring."
end

relate :rel_mera_supplies_keelward, :supplies, :mera, :keelward, since: 2435 do
  prose "Mera ships thawglass frames to Keelward for seasonal cold rooms and temporary water stores."
end

relate :rel_glassfall_manifests_at_mera, :manifests_at, :the_glassfall, :mera do
  prose "Mera occupies a surviving ring fragment whose seasonal courts grow around ringglass-bearing thawglass frames."
end
