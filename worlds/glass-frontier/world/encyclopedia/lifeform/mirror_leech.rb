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
    risks: "A fresh copy records that someone rested against the leech since its previous " \
           "feed. Search crews compare faces, hands, and gear impressions before removing " \
           "a settled animal."
  )

  prose <<~PROSE
    In the Fracture's cold reaches and along the Ashenmaw approaches, salvage crews check reflective patches on the warm side of a wreck. A mirror leech at rest is a forearm-length oval of poured-mirror skin. After feeding, its skin holds a shallow silvered relief of the warm body pressed against it — the cheek and closed eye of a sleeper, or the splayed fingers of a braced hand. The copy persists until the leech feeds again.

    Survey instruments measure the copy below the skin. It reproduces the body's mass distribution in miniature and holds a faint structural-band echo of the original. Crew logs from separate decades compare the vibration under a bare hand to a struck tuning fork. Dissections support two incompatible anatomies at the organ level, and neither model accounts for the copied mass distribution.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Leech Country Rules"
    The working rules are old Shear economy. Berths in leech country get a light and a check, because the drain reads as cold gear to a tired sleeper and the morning weakness has been mistaken for flu with poor results. Silvered surfaces get a stick before a hand. And copies get read before they get scraped: a fresh face in the silver is a record — someone rested here since the last feed — and salvage courts have accepted leech copies as evidence of presence twice, both times over loud objection, both times upheld.

    Collectors buy settled leeches carrying clear copies, and wreck-divers sell them with provenance accounts. A copy matched to a named person carries a higher quoted price than an unidentified face.
  PROSE

  cue "On the warm side of the wreck a patch of hull shines wrong, and closer, the shine resolves into the shallow silvered relief of a sleeping face."
  cue "The old hand runs a stick along the silvered seam before anyone berths, and two flattened ovals detach and pour themselves unhurriedly into the dark."
  affordance "A copied skin is a record: proof someone rested at this wreck since the leech's last feed, detailed enough to redirect a search — and the band echo in a fresh copy gives instruments a trace of the original to match."
  pressure "Crews light and probe a berth before use, then read any copy before removing the leech. A named face may redirect a search or turn the settled animal into evidence."
  variation "Fracture leeches run large and patient and cluster on inhabited wrecks; the Ashenmaw approach population is smaller, quicker to feed, and copies with cruder detail the dissection literature argues about."
  variation "Two anatomies circulate in the survey literature, both drawn from dissected specimens and disagreeing at the organ level; new reports record which model each organ supports."
end
