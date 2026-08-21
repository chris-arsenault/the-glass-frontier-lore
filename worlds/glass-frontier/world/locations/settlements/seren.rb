installation :seren do
  name "Seren"
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

  prose <<~PROSE
    The spindle turns slowly through its own shadow. Its cold half holds numbered vaults behind ceramic corridors. Its sunward half carries stepped gardens, humid growth rooms, and shallow tanks where depositors prove that a sample can live outside storage. Air and tools move from clean rooms toward trial beds along painted routes.

    Every deposit has three parts: a sealed reserve, a living sample, and a cultivation account written by somebody who has grown it. Seren residents value the account as highly as the stock. A viable seed with poor instructions can consume a habitat's water or crowd its local food plants before the error becomes visible.

    The Ring-era installation stored seeds, spores, tissue cultures, and the small organisms needed to restart closed habitats after a systems failure. Rekindling crews recovered the cold rooms intact and built their settlement around the deposit locks.
  PROSE

  prose <<~PROSE, section: :operations, heading: "The Deposit Season"
    Visiting crews arrive with cultures from surface farms, ship gardens, old vaults, and isolated habs. #{ref :nara_pell, "Nara Pell"} assigns each one a trial bed whose light, gravity, soil, and resident microbes match the declared source. Depositors tend the first growth themselves while Seren workers record each intervention. Seren is the working form of Seren-ith, still cut into the original vault doors.

    Successful stocks receive a vault number and enter exchange. The depositor can take equivalent cultures from the public catalog or reserve shares of later propagation. Samples that change under Seren's conditions remain in the trial beds until their new traits breed consistently.

    #{ref :blue_loam, "Blue loam"} occupies six beds nearest the warm axis. It carries a mold used in nerve medicine and has become Seren's most requested export.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "The Dividing Mold"
    Blue loam taken from two adjacent beds now produces different medicines. One calms damaged nerves and encourages slow regrowth. The other drives rapid sensation through scar tissue and leaves the patient unable to sleep. Both beds descend from the same sealed reserve and share water, temperature, and cultivation crews.

    Pell has closed the exchange lot and issued matched samples to six resident growers. Their first cultures divide along the same line as the trial beds. The difference travels with the loam.
  PROSE
end

relate :rel_seren_located_in_frontier, :located_in, :seren, :the_glass_frontier, since: 2305 do
  prose "Seren occupies a biological storage spindle among the inhabited ring fragments."
end

relate :rel_seren_supplies_olven, :supplies, :seren, :olven, since: 2435 do
  prose "Seren supplies sealed reserve cultures and cultivation accounts to Olven's climate chambers."
end

relate :rel_nara_pell_studies_blue_loam, :studies, :nara_pell, :blue_loam, since: 2435 do
  prose "Nara Pell runs matched blue-loam cultures around Seren's axis."
end

relate :rel_nara_pell_studies_velin, :studies, :nara_pell, :velin, since: 2435 do
  prose "Nara Pell compares Olven's velin lineages against the reserve cultures held at Seren."
end


relate :rel_seren_supplies_lumenshard_conservatory, :supplies, :seren, :lumenshard_conservatory, since: 2435 do
  prose "Seren supplies verified seed, fungal stock, and cultivation accounts to Miraeth's basin growers through the Lumenshard Conservatory."
end
