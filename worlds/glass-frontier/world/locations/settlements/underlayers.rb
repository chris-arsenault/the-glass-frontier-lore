installation :underlayers do
  name "Underlayers"
  summary "The Underlayers are the buried neighborhoods below central Sithari, housing about one hundred eighty thousand people in old service halls and submerged buildings."
  playable_as :chronicle_location
  context_tags :surface, :urban, :displacement_zone, :unstable_route
  subkind :settlement
  population 180_000
  population_band "About one hundred eighty thousand permanent residents"
  role "Sithari's inhabited lower city and the working boundary of its buried ring-era complex"
  setting "Below the present street grade of central Sithari"
  access "Public stair towers and freight lifts above the marked limit; registered descent gates below it"
  tags :surface, :resonance, :"ring-era", :danger, :"social-structure"
  prominence :recognized

  descriptive_identity(
    setting:
      "Buried neighborhoods below central Sithari: old service halls, " \
      "post-Glassfall shelters, and the lower floors of buildings whose " \
      "entrances were covered generations ago. Some blocks get daylight " \
      "through shafts and sun courts; deeper down, floors meet at odd " \
      "heights, pipes cross doorways at shoulder level, and painted " \
      "bands lead toward water, clinics, and the nearest stair to open " \
      "air.",
    activity:
      "Cheap floor space and even temperature keep repair trades alive " \
      "that the surface has priced out — instrument housings, pumps, and " \
      "household resonance devices come down through the lift halls and " \
      "leave by handcart. Evening markets open in the broad corridors as " \
      "the last commercial loads rise.",
    access:
      "Public stair towers and freight lifts serve everything above the " \
      "marked limit; below it, descent runs through registered gates, " \
      "and an address becomes a fixed shaft plus a dated sequence of " \
      "turns read off a mechanical route board — white for inspected, " \
      "amber for one changed reading, red shutters for unverified.",
    hazards:
      "Deep routes shift: a doorframe grows a second reflected edge, a " \
      "struck rail returns two decays, and once two signs agree the door " \
      "is closed until a survey pair reopens it from another stair. " \
      "Unmarked doors may open onto active facilities whose dimensions " \
      "and air do not agree with the surrounding structure."
  )

  prose <<~PROSE
    The Underlayers begin below the present streets of #{ref :sithari, "Sithari"}. About one hundred eighty thousand people live there in rooms cut through old service halls, post-Glassfall shelters, and the lower floors of buildings whose original entrances have been buried for generations. Some neighborhoods receive daylight through shafts and sun courts. Others lie beneath enough city that residents set their clocks by work shifts and school bells.

    The district grew from necessity. The ring-era campus had power, water, sealed workshops, and walls when the surface beyond it was damaged. Families occupied whatever rooms could be heated and connected them with stairs. Later construction rose above those settlements instead of replacing them. A basement door in the #{ref :old_campus, "Old Campus"} may therefore open onto a public lane with apartments, shops, and another six levels beneath it.
  PROSE
  prose <<~PROSE, section: :geography, heading: "Inhabited Levels"
    The upper Underlayers follow the old campus grid closely enough for ordinary city maps. Freight lifts descend beside fixed stair towers, broad service corridors carry markets at the end of the workday, and former equipment halls hold schools or blocks of partitioned housing. Thick walls keep the temperature even. Kitchens and machine shops vent through shared shafts whose maintenance schedules are posted at every landing.

    Below the public freight level, the streets narrow into the earlier settlement. Floors meet at different heights because each refuge expanded from a separate part of the surviving complex. Short ramps cross old conduit trenches. Pipes pass through doorways at shoulder height. Painted bands on the walls lead toward water, clinics, lifts, and the nearest stair that reaches open air.

    The marked limit is not the bottom of the city. It is the depth below which a route cannot be assumed to remain where the last survey placed it. Residents still keep workshops, storage rooms, and meeting halls beyond that line, but the doors are registered with the #{ref :lower_routes_cooperative, "Lower Routes Cooperative"} and checked whenever the buried systems change state.
  PROSE
  prose <<~PROSE, section: :resonance, heading: "When a Route Changes"
    Much of the old complex still carries #{encyclopedia_ref :resonance, "resonance"}. Modern power draws through its ringglass paths, even where engineers have disconnected every visible conduit. At the inhabited levels this usually appears as warmth in a wall, a persistent vibration under a stair, or light from panels with no modern supply. Deeper down, active ring-era systems can change which spaces are adjacent.

    A shift gives physical warning. A doorframe acquires a second reflected edge. A struck rail returns two decays, one from the corridor in sight and another from a volume that the current map places elsewhere. A #{encyclopedia_ref :tuning_compass, "tuning compass"} pulls toward the stronger path and then holds there. Route crews close the door when two signs agree, record the city load at that hour, and approach from another fixed stair.

    Most shifts last minutes or hours. A corridor may return to its former destination after a transit field powers down or a large surface array finishes tuning. Some changes persist. The Cooperative treats a route as new after three matching surveys on separate days, which means an address can keep the same rooms while acquiring a different walk to the street.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Keeping an Address"
    Every registered address below the marked limit includes the nearest fixed shaft and a dated approach. Metal route boards at the shafts show the current sequence of turns on replaceable strips. A white strip has passed two-person inspection. Amber means the destination is open but one reading has changed. Red shutters cover routes that no crew has verified since the last field event.

    The boards are deliberately mechanical. Old signal systems sometimes repeat an earlier map as if it were current, and personal navigation can keep directing a traveler through a door after the physical connection has changed. Couriers copy the board before leaving a shaft. Schools teach children to return to the last white route when wall markings and instruments disagree.

    Fires, floods, and medical calls require two destinations: the reported address and the fixed shaft from which responders should enter. Building stewards keep emergency caches on both sides of any route with a history of shifting. A change can isolate a block from its usual stair without cutting it off from every approach, provided someone has kept the alternatives clear.
  PROSE
  prose <<~PROSE, section: :economy, heading: "Work Below Grade"
    Stable temperature and cheap old floor space support repair trades that the surface districts have priced out. Instrument housings, pumps, freight fittings, and household resonance devices arrive through the lift halls and leave by handcart. Some workshops draw legal supplies from ring-era rooms cleared for reuse; anything taken beyond a marked wall requires a survey and a city salvage permit.

    The evening markets follow the freight schedule. Food stalls open as the last commercial loads rise, using the broad corridors until the morning carts return. Residents from the surface come down for repairs and late meals, then cluster at the public lifts before night service thins. Below the marked limit, trade remains local. A shop whose approach changes loses passing customers until the route boards catch up.
  PROSE
  prose <<~PROSE, section: :dangers, heading: "The Deep Levels"
    Unmarked doors are the common danger. Some open onto ordinary rooms abandoned after a utility failure. Others lead into active facilities whose dimensions and air supply do not agree with the surrounding structure. The #{ref :folded_annex, "Folded Annex"} is the best-surveyed example and the only one entered under a standing research permit.

    Rescue crews also contend with bad air, hidden drops, live power, and residents who used an unregistered shortcut for years before it failed. The city can seal a dangerous entrance. It cannot always reach the other appearances of the same space, and a sealed room may remain accessible from a private cellar several neighborhoods away.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    A sustained change in the central transit load has held several deep routes open beyond their usual interval. The Cooperative has added them to the amber boards while #{ref :tavi_soreth, "Tavi Soreth"} and #{ref :clarisant, "the Sithari Clarisant chapter"} repeat the surveys. One of those routes reaches a service gallery beside the #{ref :folded_annex, "Folded Annex"} that previous maps show only from the far side of the old campus.
  PROSE

  gm_note :appears, "Below the marked limit an address is a fixed shaft plus a dated sequence of turns, not a street. Meeting someone down here begins at a route board, copying the current strip, and noticing whether it is white, amber, or shuttered red."
  gm_note :triggered_by, "Calling for help costs two answers instead of one: the address, and the fixed shaft responders should enter from. Give only the address and the crew arrives through a corridor that now opens into a cistern."
  gm_note :complicates, "A route can change with people standing in it. A doorframe grows a second reflected edge, a struck rail returns two decays, and once two signs agree the way out is closed until a survey pair reopens it from another stair."
end

relate :rel_underlayers_located_in_sithari, :located_in, :underlayers, :sithari, since: 2140 do
  prose "The Underlayers occupy the buried campus and later construction below central #{ref :sithari, "Sithari"}."
end
relate :rel_underlayers_depends_on_tuning_compasses, :depends_on, :underlayers, :shared_reference do
  prose "Route crews use the Shared Reference with echo and reflection checks before declaring a deep approach safe."
end
