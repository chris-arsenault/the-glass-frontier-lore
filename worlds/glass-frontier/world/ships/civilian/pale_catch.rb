transport :pale_catch do
  name "Pale Catch"
  summary "Pale Catch is a four-seat Prismwell flitter serving Keelward, Ladderwell, and nearby landing fields. Broad steppe skids and pale shower cloth distinguish it from the guild's ordinary city craft."
  subkind :vessel
  type_of :flitter
  technology :kite_sail
  capacity "One pilot, three passengers, and four courier frames"
  status :complete
  tags :transport, :resonance, :"kinetic-freq", :surface, :orbital, :household
  prominence :recognized

  descriptive_identity(
    appearance: "A compact four-seat cabin under a kite frame, with broad detachable skids and pale catch cloth " \
                "folded over every exposed joint.",
    aboard: "Two paired benches face a narrow luggage cradle. The cabin carries its own air for the climb to " \
            "Keelward, but every turn and rough landing reaches the passengers.",
    behavior: "Pale Catch follows registered beacons until they disagree with its hull compass, then refuses the " \
              "next leg unless the pilot takes manual control."
  )

  prose <<~PROSE
    *Pale Catch* cycles between #{ref :keelward, "Keelward"}, #{ref :ladderwell, "Ladderwell"}, and the Kyther landing fields. The #{ref :prismwell_kite_guild, "Prismwell Kite Guild"} maintains its shower cloth and broad steppe skids so the same craft can cross exposed surface routes and climb to the inner fields.

    The flitter settles into its berth frame after landing and holds its doors until the pad lights fall together. In a depleted field it descends on stored charge and waits; the craft remains sound while nobody aboard can name a departure time.
  PROSE

  gm_note :appears, "Pale Catch is the Prismwell craft assigned when a route crosses both a surface landing and Keelward's inner fields."
  gm_note :triggered_by, "When its beacons and hull compass disagree, it refuses the leg until someone takes manual control and owns the route departure."
  gm_note :complicates, "After landing, the residual correction holds the doors shut; forcing the cabin open transfers that last motion into the first object touched."
end

relate :rel_flitter_operates_keelward, :operates_in, :pale_catch, :keelward do
  prose "Pale Catch cycles through Keelward's inner fields and orbital terminals."
end
relate :rel_flitter_operates_ladderwell, :operates_in, :pale_catch, :ladderwell do
  prose "Pale Catch links Ladderwell with steppe markets and Kyther landing fields."
end
relate :rel_prismwell_maintains_flitters, :maintains, :prismwell_kite_guild, :pale_catch, since: 2312 do
  prose "Prismwell yards maintain Pale Catch for shower-route surface access."
end
