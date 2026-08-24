installation :vey do
  name "Vey"
  summary "Vey is a settlement of twelve and a half thousand people inside a porous ring fragment in the Glass Frontier, ventilated by its rotating thermal cycle."
  playable_as :chronicle_location
  subkind :settlement
  status :complete
  tags :"ring-hab", :"structural-freq", :household, :resonance, :governance
  prominence :recognized
  population 12500
  population_band "About twelve and a half thousand residents"
  role "Passive-atmosphere engineering and low-power habitat construction"
  setting "A porous ring fragment whose thermal cycle drives air through the settlement"
  access "Inner service-fragment circuit from Eleven to four docks opening into cooled pressure vestibules"
  omit_facts :maintained_by

  prose <<~PROSE
    Sunward pores heat first. Air rises through broad outer channels, draws cooler air from the inhabited core, and returns through shaded condensers. Structural resonance keeps the smallest passages open as the shell expands and contracts. Fans handle kitchens, clinics, and crowded halls; the hab's main exchange follows the rotation of heat.

    The reconnected outer shell let rotation move air through warm and cool chambers with little mechanical pumping. Later generations enlarged the system until walls, courts, and inhabited tunnels participated in one breathing cycle.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "A Breath Every Turn"
    The cycle begins as the forward shell enters light. Dark ceramic fins warm the air behind them. Rising flow pulls from lower galleries and carries moisture toward the shaded side, where condenser ribs recover water before the air returns to homes.

    The strongest movement passes through six chambers called lungs. Each divides one broad stream into hundreds of wall passages. Adjustable shutters set pressure by neighborhood. Their handles sit in public galleries behind clear covers, with current positions painted on the floor.

    The shell stores enough moving air to carry Vey through several hours of poor orientation. Mechanical reserves start during docking surges, eclipse maneuvers, and external repair. The transition changes the pitch of every room as flow shifts from walls to ducts.
  PROSE

  prose <<~PROSE, section: :culture, heading: "Rooms With Weather"
    Residents describe rooms by their air. A quick room suits drying and metalwork. A low room keeps food and cloth damp. Sleeping quarters favor slow return flow and cooler walls. Rental notices list air direction beside floor space and distance from a dock. The settlement takes its name from the Famine airwright who signed each restored passage plate Vey.

    Households maintain the pores opening from their rooms into common passages. Children learn to brush dust from the ceramic mesh and read the thread indicators tied across each vent. A thread leaning the wrong way sends the household to the gallery shutter before it sends them to a repair office.

    Public meals move between courts through the cycle. Morning stalls open in the sunward galleries as warm air begins to lift. Evening tables gather beside the condenser ribs where the recovered water runs cold.
  PROSE

  prose <<~PROSE, section: :people, heading: "Airwrights"
    Vey's airwrights combine masonry, weather reading, and structural tuning. #{ref :kir_orm, "Kir Orm"} maps the smallest passages by releasing scented vapor into a lung and recording where each trace emerges. Repair crews use those maps to open a blocked pore from the nearest inhabited room.

    Apprentices spend their first year in #{ref :lung_three, "Lung Three"}, cleaning shutters and comparing hand gauges with the pull felt across their skin. The work trains attention before it grants access to the low-band tools that reshape a passage.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "The Central Pump"
    #{ref :merren, "Merren"}, backed by three dock wards, has offered to install a central atmosphere plant. Its contract promises steady flow through cargo surges and releases hundreds of rooms from pore maintenance. Pressure control passes from six public lungs to one secured plant under the same terms.

    The trial unit now serves an empty warehouse ring. Kir Orm's vapor maps show clean air and higher humidity there. Lung crews are measuring how the surrounding passive passages respond when the warehouse draws from a separate source.
  PROSE

  gm_note :appears, "The shutter handles that set pressure by neighborhood sit in public galleries behind clear covers, with each current position painted on the floor beneath it. A party can change the air in a district in under a minute and cannot do it unseen."
  gm_note :triggered_by, "Docking surges, eclipse maneuvers, and any outside repair work start the mechanical reserves, and the pitch of every room changes as flow leaves the walls for the ducts. Residents look up when it happens and ask who is working the hull."
  gm_note :complicates, "#{ref :merren, "Merren"}'s trial plant is running in the empty warehouse ring while lung crews measure the passive passages around it, so a repair a party makes with company parts or company help is read as evidence in the argument over central pressure control."
end

relate :rel_vey_located_in_frontier, :located_in, :vey, :the_glass_frontier, since: 2140 do
  prose "Vey's porous fragment travels on the inhabited ring."
end

relate :rel_rib_supplies_vey_filters, :supplies, :rib, :vey, since: 2435 do
  prose "Rib supplies living filter mouths for trials in Vey's warm wall passages."
end

relate :rel_vey_supplies_rib_growth_records, :supplies, :vey, :rib, since: 2435 do
  prose "Vey returns airflow and growth records with each stock of Rib-grown filters."
end

relate :rel_kir_orm_maintains_lung_three, :maintains, :kir_orm, :lung_three, since: 2435 do
  prose "Kir Orm maps Lung Three's branches and directs repairs from its maintenance bridges."
end
