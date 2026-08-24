faction :merren do
  name "Merren"
  aka "Merren Works"
  subkind :company
  founded 2429
  status :complete
  tags :household, :trade, :resonance, :"structural-freq"
  prominence :marginal
  omit_facts :leaders, :predecessors

  prose <<~PROSE
    Merren builds pumps, shutters, heat exchangers, and atmosphere machinery for habitats whose utilities share a structural field. Three Vey dock crews founded the company after a cargo surge overwhelmed their ward fans. Their first plant used six small impellers on separate controls, matching the public lungs closely enough to run without retuning the surrounding walls.

    The company sells major machinery near cost when a settlement grants it a permanent service bay and first claim on repairs. That arrangement keeps a trained crew beside the installation and gives Merren a long revenue stream. It also places one company's tools and parts inside systems previously maintained by households, wards, or public crews.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Two Contracts"
    At Eleven, Merren has offered a second low-band water pump in exchange for a bay beside the source line. The pump would release hours of daily flow to lower shafts while giving the company access to every valve affected by its work.

    At Vey, three dock wards back a central atmosphere plant for cargo surges. The contract transfers pressure control from six public lungs to one secured machine. Merren's trial unit has held the warehouse ring steady while changing humidity and return timing in the surrounding passive passages.
  PROSE

  gm_note :appears, "Merren turns up wherever a hab's utilities have just failed under load, offering the machine that would fix it at close to what it cost to build. The price is a permanent service bay and first claim on every repair the installation will ever need."
  gm_note :triggered_by, "Fixing a pump or a shutter in a settlement where Merren holds a bay crosses the first-claim terms, and the resident crew answers it as a contract matter rather than as a favor."
  gm_note :complicates, "The company is three #{ref :vey, "Vey"} dock crews who got tired of ward fans failing during cargo surges, so anyone arguing against a Merren contract is arguing with former crewmates, neighbors, and relatives."
end

relate :rel_merren_headquartered_in_vey, :headquartered_in, :merren, :vey, since: 2429 do
  prose "Merren keeps its main machine floor and training bay in Vey's dock wards."
end

relate :rel_merren_operates_in_eleven, :operates_in, :merren, :eleven, since: 2435 do
  prose "Merren runs the Shaft Two pump trial and has offered a second installation to Eleven."
end

relate :rel_merren_operates_in_vey, :operates_in, :merren, :vey, since: 2435 do
  prose "Merren operates the atmosphere trial in Vey's empty warehouse ring."
end
