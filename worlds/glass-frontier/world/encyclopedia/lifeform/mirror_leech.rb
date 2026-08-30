encyclopedia :mirror_leech do
  name "Mirror Leech"
  summary "Mirror leeches are body-copying anomalies of the Fracture and the Ashenmaw approaches: forearm-length feeders whose reflective skin takes the shape of the last warm body held against it and keeps the shape until the leech feeds. Salvage crews read a copied face on a hull as a record of who rested there."
  kind :lifeform
  subkind :anomaly
  status :complete
  topics :ecology, :danger, :mystery, :"outer-system"
  prevalence :rare
  appears_when any: { place: [:debris_field, :outer_system] }
  biology "A slow cold-country feeder that draws warmth and trace organics through contact; the copying skin is the anomaly, and the surveys measure it copying mass distribution as well as surface"
  resonance_relation "The skin's copy holds a faint structural-band echo of the copied body, readable to instruments and to hands"

  descriptive_identity(
    appearance: "At rest, a forearm-length flattened oval with skin like poured mirror. " \
                "Copied, it is a shallow relief of whatever warm body last pressed it — a " \
                "sleeping face, a gloved hand, the curve of a shoulder — rendered in silvered " \
                "detail and held, sometimes for seasons.",
    behavior: "It waits flat against sheltered surfaces in the debris country and feeds by " \
              "long contact, drawing warmth and trace organics; the copy forms during " \
              "feeding and persists until the next meal wipes it for the new sitter's shape.",
    threat: "A feeding leech takes warmth slowly enough that tired sleepers mistake the " \
            "drain for cold gear, and the crews' rule is blunt: a berth in leech country " \
            "gets a light and a check, and a silvered surface gets a stick before a hand.",
    senses: "It finds warmth through hull metal at a hand's depth, and settled leeches " \
            "cluster on the warm side of inhabited wrecks with the patience of moss.",
    risks: "The copies are the hazard's strange second face: a crew finding a fresh face " \
           "in the silver knows someone rested here since the last feed — and more than " \
           "one search has been redirected by a sleeping profile the searchers finally " \
           "recognized."
  )

  prose <<~PROSE
    In the Fracture's cold reaches and along the Ashenmaw approaches, salvage crews learn to look twice at anything that shines. A mirror leech at rest is a forearm-length oval of poured-mirror skin, flattened against the warm side of a wreck; a mirror leech that has fed is a shallow silvered relief of whoever fed it — the cheek and closed eye of a sleeper, the splayed fingers of a braced hand, held in the skin with a fidelity that stops conversation. The copy forms during the leech's slow feeding, warmth and trace organics drawn through long contact, and persists until the next meal wipes the skin for the next shape. Between feeds, the leech carries its last guest like a cameo.

    The surveys have measured what the eye suspects: the copy runs deeper than surface. A copied skin reproduces the body's mass distribution in miniature and holds a faint structural-band echo of the original, readable to instruments and, disquietingly, to bare hands — crews describe touching a copied face as touching a struck tuning fork, and the description repeats across decades of logs from crews with no acquaintance. What the leech does with the copy is the open question; the feeding is explicable cold-country economics, and the fidelity is explained by neither of the two anatomies the dissection literature proposes, which disagree at the organ level and were both drawn from real specimens.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Leech Country Rules"
    The working rules are old Shear economy. Berths in leech country get a light and a check, because the drain reads as cold gear to a tired sleeper and the morning weakness has been mistaken for flu with poor results. Silvered surfaces get a stick before a hand. And copies get read before they get scraped: a fresh face in the silver is a record — someone rested here since the last feed — and salvage courts have accepted leech copies as evidence of presence twice, both times over loud objection, both times upheld.

    The trade in the creatures is small, morbid, and steady. Collectors buy settled leeches carrying striking copies, wreck-divers sell them with provenance stories of varying honesty, and the Fracture crews who supply the market maintain, with straight faces, a price distinction between a copy of someone and a copy of someone in particular.
  PROSE

  cue "On the warm side of the wreck a patch of hull shines wrong, and closer, the shine resolves into the shallow silvered relief of a sleeping face."
  cue "The old hand runs a stick along the silvered seam before anyone berths, and two flattened ovals detach and pour themselves unhurriedly into the dark."
  affordance "A copied skin is a record: proof someone rested at this wreck since the leech's last feed, detailed enough to redirect a search — and the band echo in a fresh copy gives instruments a trace of the original to match."
  pressure "The feed is slow, quiet, and mistakable for cold gear, so leech country turns every berth into a checked berth — and every striking copy into an argument between the crew that wants it scraped and the one that knows what collectors pay."
  variation "Fracture leeches run large and patient and cluster on inhabited wrecks; the Ashenmaw approach population is smaller, quicker to feed, and copies with cruder detail the dissection literature argues about."
  variation "Two anatomies circulate in the survey literature, drawn from real specimens and disagreeing at the organ level, and each new dissection is announced by both camps as the decisive one."
end
