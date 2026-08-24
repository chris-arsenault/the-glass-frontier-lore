npc :duthrek do
  name "Duthrek"
  summary "Duthrek is the head of Coremark, directing its extraction cells and convoy crews from Korvath since 2409."
  subkind :leader
  status :complete
  tags :salvage, :trade, :danger, :governance
  prominence :recognized
  occupation "Head of Coremark"

  prose <<~PROSE
    Duthrek has directed #{ref :coremark, "Coremark"} from #{ref :korvath, "Korvath"} since 2409. Extraction captains bring him tonnage, losses, and routes. Convoy officers bring him buyers and exposed waystations. He settles conflicts between the two by protecting the route that will still earn money after the present cargo is gone.

    He inherited a disgraced company whose crews still expected corporate pay, rescue coverage, and competent equipment. Duthrek kept those obligations. A cell that loses people through an avoidable shortcut can lose its charter; one that abandons cargo to save its crew usually receives another ship. Coremark's violence falls hardest on outsiders and on officers who conceal a failure from their own crews.
  PROSE

  prose <<~PROSE, section: :operations, heading: "The Korvath Office"
    Duthrek works from a former freight-accounting floor in Korvath's northern industrial belt. The public desks handle legal salvage purchases, storage leases, and claims inherited from the old corporation. The closed rooms assign extraction zones and convoy times through clerks who never receive a complete route.

    Captains meet him in pairs from different units. Each can challenge the other's account, and neither can identify every person who carried the order onward. The arrangement slows decisions and makes a captured officer less useful. Duthrek accepts both costs.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "Present Demands"
    Demand for Bloom relics now comes from settlements that need one impossible repair as well as collectors and armed crews. Duthrek requires a town to name the system the relic will support and the person who will hold it. That record lets Coremark price later access and identify the first suspect if the object disappears.

    Deep-Shear cells are also reporting more drift around familiar extraction sites. Duthrek has reduced quotas in three zones and raised them in two others. He has not explained whether the changes follow Compact surveys, private losses, or information bought from a cordon crew.
  PROSE

  gm_note :appears, "Duthrek's quota changes reach the Deep Shear before any explanation does. A crew that worked a zone last season finds it closed or its allowance cut, and the officer carrying the order cannot say whether it followed a Compact survey, a private loss, or a purchase from a cordon crew."
  gm_note :triggered_by, "Ask Coremark for a Bloom relic on a settlement's behalf and Duthrek wants the system it will keep running and the name of the person who will hold it. That record sets the price of later access and names the first suspect if the relic moves."
  gm_note :complicates, "An officer who loses people through an avoidable shortcut can lose the cell's charter, and Duthrek treats a concealed failure worse than the failure. Officers caught short in front of witnesses will bargain hard for a version of events their own crew will repeat."
end

relate :rel_duthrek_located_on_korvath, :located_in, :duthrek, :korvath, since: 2409 do
  prose "Duthrek runs Coremark from the northern industrial belt on Korvath."
end
relate :rel_duthrek_operates_in_deep_shear, :operates_in, :duthrek, :deep_shear, since: 2409 do
  prose "Duthrek assigns, reduces, and closes Coremark extraction zones in the Deep Shear from his Korvath office."
end
