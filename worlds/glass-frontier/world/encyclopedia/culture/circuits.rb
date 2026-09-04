encyclopedia :circuits do
  name "Circuits"
  summary "Circuits are Ashvane household routes through pressure-safe rooms in the moon's moving livable shade. Each family carries a marked door seal and scheduled use-rights to the rooms on its circuit."
  kind :culture
  subkind :social_order
  status :complete
  topics :household, :"social-structure", :"outer-system", :"ring-era"
  prevalence :uncommon
  appears_when all: { place: [:hot] }
  integration "Shade circuits pass through settled Ashvane towns; families maintain trades, school places, and standing at each stop, while room partners exchange scheduled use-rights under the circuit calendar"
  aesthetic "The door seals: each family's pressure seal cast with its own mark and polished by generations of fitting, carried in a padded chest that rides at the front of every move — the seal chest being to a shade family what a lintel of stakes is to a rootward one"

  descriptive_identity(
    manner: "Shade households assign every possession a chest and packing " \
            "order, keep exchange dates from the heat tables, and renew " \
            "friendships, debts, and agreements at each circuit stop.",
    appearance: "Households known by the seal chest riding first through any " \
                "door, and by the family mark — the seal's design — worn " \
                "small at the collar and cast large on the chest's lid.",
    hospitality: "A shade family hosts in every house on its circuit. The " \
                 "guest sleeps nearest the sealed door, eats from the " \
                 "house's stores as freely as the family, and leaves with " \
                 "provisions for the next leg."
  )

  prose <<~PROSE
    #{encyclopedia_ref :elves, "Elven"} surveys placed deep, heat-shielded shelter rooms across #{ref :ashvane, "Ashvane's"} habitable margins so that some rooms remain in shade each season. Shade families hold scheduled use-rights to three, four, or five of those rooms and move as the livable belt shifts. Schoolwork, tools, trade stock, and domestic goods travel in ordered chests. The family's marked pressure seal rides first and is fitted to the new frame before the room is occupied.

    Circuit calendars coordinate the interlocking moves: the room one family leaves becomes another family's next stop. The departing household checks the seals and leaves the chamber ready for pressure; the arriving household repeats the test with gauges before accepting it. Families maintain work, schooling, friendships, debts, and marriage ties at several towns along the route. Children learn packing order and seal fitting as household duties. *Their seal holds* describes both a sound fit at the door and a family's good standing on the circuit.
  PROSE

  cue "Exchange day: two families pass on the crater road with the heat behind one and ahead of the other, the seal chests riding first on both wagons, and the room between them changes households by nightfall — gauges checked, courtesies exchanged, better sealed than found."
  cue "The child fits the family seal to the strange door under her father's eye — her first fitting, the polished faces meeting the frame her great-grandmother's hands knew — and the house holds their pressure, and is home."
  affordance "Seasonal use-rights keep pressure-safe rooms occupied during their livable months and give each family a prepared home at every circuit stop."
  pressure "A missed exchange date leaves the next household without its scheduled shelter, so circuit councils treat lateness as a debt measured in emergency rooms, transport, and heat exposure."
  variation "Long circuits follow the seasonal retreat across crater country; town circuits rotate through Shadewell's deep quarters; mixed households keep a fixed home and join the moving circuit for one season."
  variation "Seals pass by inheritance with the circuit rights, and a marriage between shade families is negotiated as a joining of circuits — which rooms, which dates, whose mark the new-cast seal carries on each face."
end
