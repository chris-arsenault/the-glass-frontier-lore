faction :lower_routes_cooperative do
  name "Lower Routes Cooperative"
  summary "The Lower Routes Cooperative is the Underlayers' resident-run route, mapping, and rescue service."
  playable_as :allegiance
  origin_blurb "Resident survey crews keep Sithari's shifting underlayers connected through repeated readings and public route boards."
  subkind :mutual_aid
  founded 2227
  tags :surface, :resonance, :navigation, :"social-structure", :danger
  prominence :recognized

  prose <<~PROSE
    A resident-run route service for the #{ref :underlayers, "Underlayers"}. The Cooperative maintains the boards at fixed shafts, verifies approaches below the marked limit, and organizes rescue when a changing connection cuts a household or workshop off from its usual street. Its members include building stewards, couriers, lift mechanics, medics, and certified #{ref :tuners, "Tuners"} from the Sithari chapter.

    The organization began in 2227 after three lower neighborhoods received incompatible municipal evacuation maps during a field shift. Residents already knew the safe approaches. They pooled their stair lists, assigned pairs to check each route, and posted a common board at the lowest fixed shaft. The city adopted the board within a year and has funded part of the work since 2254.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Route Boards"
    Each fixed shaft has a steward responsible for its board and emergency cache. Survey pairs walk every white route on a rotating schedule. They strike frames and rails, inspect reflections at doors, and compare a #{ref :tuning_compass, "tuning compass"} against the last recorded pull. A route that changes one measure turns amber. Two matching changes close it until a Tuner joins the inspection.

    The replaceable strips on the board show turns, level changes, and the time of the last walk. They also identify the nearest cross-route to another fixed shaft. Residents can therefore leave a shifting block through a longer approach even when the usual stair has vanished. Shopkeepers copy their current strip onto delivery orders. Medics ask for the strip date before dispatch.

    Every survey ends with a spoken handoff to the shaft steward. This catches details omitted from a clean route form: a low ceiling, a door that opens only when pulled, or a passage too narrow for a stretcher. The steward adds those limits to the dispatch notes beside the route.
  PROSE
  prose <<~PROSE, section: :structure, heading: "Membership and Authority"
    Households below the marked limit contribute dues or one service shift each season. Upper-level businesses pay a delivery assessment if they use Cooperative routes. The city pays for emergency coverage and replacement boards. None of those payments gives the Continuity's transport office control over route status: the steward at the shaft can close an approach immediately, and only a Cooperative survey can return it to white.

    A rotating council assigns long surveys, approves entry beside occupied blocks, and negotiates with the city over closures. Rescue command belongs to the first qualified coordinator at the fixed shaft. This division keeps meetings from delaying an emergency and keeps one respected rescuer from controlling permits, money, and maps.

    #{ref :clarisant, "The Sithari Clarisant chapter"} supplies certified Tuners and audits the instruments. The Cooperative supplies the local approach knowledge. Chapter staff who ignore a steward's route closure lose access to Cooperative boards, an effective sanction in a district where an instrument reading does not identify which cellar now reaches the room it measured.
  PROSE
  prose <<~PROSE, section: :people, heading: "The Work Between Surveys"
    Most members do not enter the deep levels. They clear stairs, test emergency lamps, replace worn strips, and keep refuge rooms supplied with air bottles, water, and hand tools. After a route change they carry messages between separated blocks until new approaches are verified. During long closures, kitchens near the fixed shafts feed residents waiting for freight or a safe walk home.

    Children can join board walks above the marked limit and learn the painted bands before they are allowed on a deep survey. Older residents often serve as route witnesses. They remember entrances buried by later construction and can identify when a new connection reproduces a street that existed before the current maps.
  PROSE
  prose <<~PROSE, section: :tensions, heading: "The Municipal Map"
    Sithari's transport office maintains a continuous digital model of the city and wants every Cooperative reading entered as soon as it is taken. The Cooperative delays deep-route updates until a second pair has walked them. In the interval, the municipal system may show a route that residents are using but the city has not accepted.

    The delay frustrates freight operators and building inspectors. It also prevents a single bad reading from being distributed through navigation services that continue repeating it after a route moves. The dispute recurs whenever a closure holds up a surface project or an unofficial approach becomes stable enough to attract shops before it receives an address.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    #{ref :tavi_soreth, "Tavi Soreth"} currently coordinates the long surveys opened by a change in central transit load. The Cooperative has accepted three approaches as amber and refused city requests to publish them as ordinary streets. One reaches the #{ref :folded_annex, "Folded Annex"}; another ends beneath a residential foundation whose plans show solid ground.
  PROSE

  gm_note :appears, "The steward at a fixed shaft can close an approach on the spot, and nothing short of a Cooperative survey returns it to white — not a city order, not a #{ref :clarisant, "Clarisant"} Tuner's instrument. When a route someone needs goes amber, the steward is who they argue with."
  gm_note :triggered_by, "Producing a municipal map or a navigation reading invites a correction. The Cooperative holds deep routes back until a second pair has walked them, so the city's model shows approaches nobody has cleared and omits ones residents use daily."
  gm_note :complicates, "Ignoring a closure costs board access, which in this district means navigating by your own last survey — an instrument reading cannot tell you which cellar now reaches the room it measured."
end

relate :rel_lower_routes_headquartered_underlayers, :headquartered_in, :lower_routes_cooperative, :underlayers, since: 2227 do
  prose "The Cooperative keeps its central board and equipment rooms beside a fixed shaft in the #{ref :underlayers, "Underlayers"}."
end
relate :rel_lower_routes_maintains_underlayers, :maintains, :lower_routes_cooperative, :underlayers, since: 2227 do
  prose "Its members verify deep approaches, maintain route boards, and stock refuge rooms across the Underlayers."
end
relate :rel_lower_routes_cooperates_clarisant, :cooperates_with, :lower_routes_cooperative, :clarisant, since: 2310 do
  prose "The Cooperative supplies local route knowledge while #{ref :clarisant, "the Sithari Clarisant chapter"} supplies certified Tuners and instrument audits."
end
