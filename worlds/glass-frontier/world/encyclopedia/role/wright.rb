encyclopedia :wright do
  name "Wright"
  summary "A wright keeps hulls and hab shells sound — laying out repairs full-size on the lofting floor, steaming frames to shape, and holding the half-model wall that is the fleet's structural memory. Where a listener hears the structure and a minder tends the machine, the wright is who cuts."
  kind :role
  subkind :profession
  status :complete
  topics :trade, :transport, :"ring-hab", :training
  prevalence :common
  appears_when any: { place: [:dock, :yard] }

  descriptive_identity(
    attire: "Shop clothes marked by the trade's two signatures — lofting chalk to the elbows " \
            "and steam-scald gloss on the forearms — with the personal batten, worn springy " \
            "and true, carried like a rigger carries line.",
    tools: "The lofting floor, the steam box, the fastening schedule, and the half-model wall: " \
           "shelves of carved hull and shell halves, one per vessel or section served, each " \
           "sliced into lifts that trace back to full-size frames.",
    manner: "Sees every curve as a set of stations and says so; praises a line as fair or " \
            "condemns it as hard the way other trades call weights honest or short, and " \
            "trusts the floor over the drawing in every dispute."
  )

  cue "On the black lofting floor a full-size hull section grows in chalked stations, and the wright walks it barefoot with a batten, springing the line and squinting for fairness."
  cue "One wall of the shop is shelves of carved half-models — every hull and shell section the yard has ever served — and the wright pulls one, slices it into lifts, and reads a dead builder's intentions off the curves."
  affordance "The half-model wall is the fleet's structural memory: a wright who holds a vessel's model can loft its repair full-size, steam frames to the original intent, and certify the work against the very curves the first builder carved."
  pressure "The wright cuts where the listener heard and the minder worried, so every serious repair is a standing negotiation between the model's original fairness, the structure's present truth, and an owner paying by the day for a vessel on the hard."
  variation "Dock wrights serve hulls and keep models by vessel; hab wrights serve shell sections and keep them by frame number, and each trade regards the other's wall as charmingly disorganized."
  variation "A wright's masterpiece is still a carved half-model of an original design, judged by seniors with battens in hand, and the trade's fairness argument at a judging is a spectator event."

  prose <<~PROSE
    Hulls work, shells fatigue, and every dock and settled fragment keeps wrights: the trade that cuts, steams, and fastens structure back to soundness. The craft's method has held since before the Glassfall because it answers the permanent problem — a curve is easy to admire and hard to reproduce — and the wright's answer is the model and the floor. Every vessel and shell section a shop serves is held on its half-model wall as a carved half, sliced into lifts; laid to the lofting floor, the lifts open into full-size stations, and a repair is drawn there, complete and fair, before a tool touches the work. The floor settles arguments the drawing cannot: a line that springs true on a batten at full size is fair, and a line that fights the batten is hard, and wrights trust the floor over any document including their own.

    Steam does the persuading. Frames and planking are cooked in the steam box to the old schedules — so long per thickness, and the trade's clocks are argued like recipes — then bent to the lofted stations while hot and held until they take the set. The fastening schedule finishes the work: what is fastened where, in what order, at what spacing, recorded and signed, because a repair's fastenings are its testimony and dock courts read them exactly as they read a tug operator's test call.
  PROSE

  prose <<~PROSE, section: :structure, heading: "The Wall and the Trade"
    The half-model wall makes a wright's shop an archive with sawdust. Models pass shop to shop with the vessels they describe, carry their carvers' names, and accumulate margin marks — repairs dated, frames sistered, the small history of each hull written on its own shape. A vessel whose model is lost is measured, carved fresh, and treated thereafter as newly documented, and buying a used hull begins, for the careful, with an hour at the wright's wall reading the margins.

    Apprenticeship runs floor first: years of lofting and battens before the steam box, the steam box before the saw. The masterpiece is a carved half-model of the candidate's own design, judged by seniors with battens and strong opinions, and the judging's public argument about fairness — this line sweet, that turn hard — is the trade examining its own eye in the open, which is precisely the point.
  PROSE
end
