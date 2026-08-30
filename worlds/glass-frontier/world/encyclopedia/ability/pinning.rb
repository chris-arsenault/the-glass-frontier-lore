encyclopedia :pinning do
  name "Pinning"
  summary "Pinning is the everyday craft of securing things against a world that moves them — lashing to the elves' built-in pin points, tying the holds that release with one pull, and rigging a room for recoil, tide, or spin change in the minutes a warning allows. It is the first thing every hab hand's hands learn."
  kind :ability
  subkind :technique
  status :complete
  topics :household, :training, :"ring-hab"
  prevalence :common
  available_globally
  function "Secures cargo, furniture, and people against recoil, tides, spin change, and rough transit using standard pins, lashings, and quick-release holds"

  descriptive_identity(
    signs: "The pinner works a room in a fixed circuit like a banker at dusk — hook, " \
           "lash, tension, test — each hold finished with the flat-palm shove that " \
           "proves it, and the whole rig done in the minutes between the warning and " \
           "the event.",
    effect: "Every ring-built surface carries pin points — the recessed rings and rails " \
            "the elves set into decks, walls, and furniture as universally as door " \
            "handles — and the craft uses them: standard hitches for standing loads, " \
            "the one-pull holds for what must release fast, the body lines for people.",
    limits: "A pin holds what the hitch was tied for, so the craft's discipline is " \
            "declaring the load — 'pinned for recoil' and 'pinned for tide' are " \
            "different rigs — and the mixed error, the recoil rig trusted through a " \
            "spin change, keeps its place in the training the usual way."
  )

  prose <<~PROSE
    The system's worlds move their contents — #{encyclopedia_ref :mareth_recoil, "recoil"} at the gates, #{encyclopedia_ref :ravel_tides, "tides"} on the relay fragments, spin drift, rough transit, the ordinary lurches of corridor life — and pinning is the craft that answers, practiced so universally it is taught before table manners. The material half is elven: ring-built surfaces carry pin points everywhere, recessed rings and rails set into decks, walls, bunks, and benches with the thoroughness other builders spend on door handles, and daily use since the ring's own era has kept the standard fittings standard. The human half is the hitches — the small vocabulary of holds every hab hand's hands know: the standing lash for cargo, the one-pull hold for what must release in a breath, the body line that keeps a sleeper in a bunk through a bad night without trapping them in a fire.

    The craft's grammar is the declared rig. A room is pinned *for* something — for recoil, for tide, for transit — and the declaration governs the hitches chosen, because the holds that ride out a corridor snap are the wrong holds for a slow tide's patient pull. Warning customs plug straight into the craft: the horn count at Mareth, the lean at Ravel, the storm bells everywhere are all, practically, pinning orders, and the minutes they buy are spent in the fixed circuits households drill — hook, lash, tension, test, the flat-palm shove that proves each hold — until a family can rig its rooms in the time a kettle takes and does, wordlessly, at the first note.
  PROSE

  cue "At the warning note the household moves in a practiced circuit — hook, lash, tension, the flat-palm shove on each hold — and the room is rigged before the kettle the youngest was told to mind comes off its hook."
  cue "Every bench, bunk, and doorway carries the recessed rings of the old pin points, polished by generations of hitches, and a traveler's hand finds them in the dark of any hab in the system."
  affordance "A pinned room rides out what the warning named — and the standard points and hitches mean any hab hand can rig any hab's rooms, which makes pinning the one craft a traveler carries that works identically everywhere the elves built."
  pressure "The rig holds what it was declared for, so the craft's failures are category errors — the recoil rig trusted through a tide, the standing lash where a one-pull hold was owed to a sleeper — and the drills exist to make the declaration as automatic as the hitches."
  variation "Gate districts drill recoil rigs to the horn and pride themselves on kettle-time; the tide fragments rig standing and live half-lashed always, and their guests are re-taught which chairs are load-bearing."
  variation "Carrier crews certify pinning like lending, and a crew's rig is inspected by the flat-palm shove of any member at any time — a custom whose etiquette, whose shove is a compliment and whose is a challenge, takes newcomers a season to read."
end
