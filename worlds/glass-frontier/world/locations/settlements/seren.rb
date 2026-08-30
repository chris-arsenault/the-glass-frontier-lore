installation :seren do
  name "Seren"
  summary "Seren is a biological repository settlement in the Glass Frontier, occupying a cold Ring-era spindle divided between sealed vaults and warm trial beds."
  playable_as :chronicle_location
  context_tags :sealed_hab, :cold, :garden, :archive
  aka "Seren-ith"
  subkind :settlement
  status :complete
  tags :"ring-hab", :"ring-era", :archives, :ecology, :materials
  prominence :recognized
  population 1800
  population_band "About eighteen hundred residents, with several hundred seasonal depositors"
  role "Custody, propagation, and exchange of biological stocks"
  setting "A cold Ring-era spindle divided between sealed vaults and warm trial beds"
  access "Clean-stock circuit from Orra and Olven to one freight lock and two passenger locks on the shaded end"
  omit_facts :maintained_by

  descriptive_identity(
    setting:
      "A cold Ring-era spindle turning slowly through its own shadow: " \
      "numbered vaults behind ceramic corridors on the dark half, " \
      "stepped gardens, humid growth rooms, and shallow tanks on the " \
      "sunward half, with air and tools moving from clean rooms toward " \
      "trial beds along painted one-way routes.",
    activity:
      "Visiting crews prove their cultures can live outside storage, " \
      "tending the first growth themselves in trial beds matched to the " \
      "declared source while Seren workers record every intervention. A " \
      "deposit that survives earns a vault number and enters exchange, " \
      "paid in stock rather than coin.",
    access:
      "The clean-stock circuit from Orra and Olven serves one freight " \
      "lock and two passenger locks on the shaded end.",
    hazards:
      "Walking a painted corridor backwards contaminates everything " \
      "between you and the vaults, and residents will say so before you " \
      "reach the far door. A viable stock with a poor cultivation " \
      "account is the deeper danger — it can drink a habitat's water or " \
      "crowd out its food plants before the error shows."
  )

  prose <<~PROSE
    The spindle turns slowly through its own shadow. Its cold half holds numbered vaults behind ceramic corridors. Its sunward half carries stepped gardens, humid growth rooms, and shallow tanks where depositors prove that a sample can live outside storage. Air and tools move from clean rooms toward trial beds along painted routes.

    Every deposit has three parts: a sealed reserve, a living sample, and a cultivation account written by somebody who has grown it. Seren residents value the account as highly as the stock. A viable seed with poor instructions can consume a habitat's water or crowd its local food plants before the error becomes visible.

    The Ring-era installation stored seeds, spores, tissue cultures, and the small organisms needed to restart closed habitats after a systems failure. Rekindling crews recovered the cold rooms intact and built their settlement around the deposit locks.
  PROSE

  prose <<~PROSE, section: :operations, heading: "The Deposit Season"
    Visiting crews arrive with cultures from surface farms, ship gardens, old vaults, and isolated habs. #{ref :nara_pell, "Nara Pell"} assigns each one a trial bed whose light, gravity, soil, and resident microbes match the declared source. Depositors tend the first growth themselves while Seren workers record each intervention. Seren is the working form of Seren-ith, still cut into the original vault doors.

    Successful stocks receive a vault number and enter exchange. The depositor can take equivalent cultures from the public catalog or reserve shares of later propagation. Samples that change under Seren's conditions remain in the trial beds until their new traits breed consistently.

    #{ref :the_warm_six, "The Warm Six"} occupy six beds nearest the warm axis. Their blue loam carries a mold used in nerve medicine and has become Seren's most requested export.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "The Dividing Mold"
    #{embed :the_warm_six}
  PROSE

  gm_note :appears, "A crew carrying anything alive can deposit it here, but a deposit is three parts and the third is a written account of growing it. Depositors tend the first growth themselves, which keeps a party on the spindle for a season instead of an afternoon."
  gm_note :triggered_by, "Seren pays in stock rather than coin. A deposit that survives its trial bed draws equivalent cultures from the public catalog or shares of later propagation, which is how a party with no money leaves with medicine."
  gm_note :complicates, "Air, tools, and people move one way here, from the clean rooms toward the trial beds along painted routes. Walking a painted corridor backwards contaminates everything between you and the vaults, and the residents will say so before you reach the far door."
end

relate :rel_seren_located_in_frontier, :located_in, :seren, :the_glass_frontier, since: 2305 do
  prose "Seren occupies a biological storage spindle among the inhabited ring fragments."
end

relate :rel_seren_supplies_olven, :supplies, :seren, :olven, since: 2435 do
  prose "Seren supplies sealed reserve cultures and cultivation accounts to Olven's climate chambers."
end

relate :rel_seren_supplies_lumenshard_conservatory, :supplies, :seren, :lumenshard_conservatory, since: 2435 do
  prose "Seren supplies verified seed, fungal stock, and cultivation accounts to Miraeth's basin growers through the Lumenshard Conservatory."
end
