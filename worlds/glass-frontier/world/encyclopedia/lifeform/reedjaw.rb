encyclopedia :reedjaw do
  name "Quiets"
  kind :lifeform
  subkind :animal
  status :complete
  log "2026-08-31 — Renamed Reedjaw to Quiets; the new title names the silence they make in a reed bed."
  topics :ecology, :danger, :resonance
  prevalence :uncommon
  appears_when all: { place: [:waterway] }
  summary "Quiets are arm-length ambush predators whose hunting stillness damps the standing chord around a reed bed. They defend long-held territories, take birds and small grazers, and appear to trained cutters as a body-length hole in the bed's song."
  origin "Native waterway stock, resident wherever the reed beds grow thick — which is wherever water moves slowly enough to plant"
  biology "An arm's-length ambush predator, jaw-heavy and mud-colored, that lies up among reed stools; its hunting stillness extends into the structural band, flattening the reeds' venting chord in a body-length circle around it"
  lifespan "#{duration 20}; the big bed-holders defend the same stools for most of it"
  function "The beds' apex vermin-taker — Quiets crop the waterfowl, rats, and grazers that would otherwise thin a bed — and the cutters' working alarm, since its dampened circle announces it to anyone listening"
  resonance_relation "The hunting stillness is a band effect: the animal flattens the structural-band chord around its body, which blinds prey that navigates by the reeds' song and marks the spot for anyone reading the bed by ear"

  descriptive_identity(
    appearance: "An arm's length of mud-colored muscle ending in a jaw that is " \
                "most of the head, lying up among the reed stools with the " \
                "water's own patience; most sightings are the strike, and " \
                "brief.",
    behavior: "It holds a territory of bed, lies still in its dampened circle, " \
              "and takes what the silence brings close — waterfowl, rats, the " \
              "grazers that thin reed stands — striking once and settling back " \
              "to quiet.",
    threat: "A working boot in the strike circle is taken for a grazer's leg — " \
            "the bite is an event, the cutters' rule is absolute, and the " \
            "pole goes into a quiet patch before any part of a person does.",
    senses: "It reads the bed's chord for the disturbances of prey and reads " \
            "the water for everything else; its own silence is its blind, its " \
            "lure, and — to a trained ear — its downfall.",
    risks: "A thin winter bed sings quietly across its whole area and makes " \
           "the dampened circle hard to place. Cutters use poles instead of " \
           "sound alone in that season."
  )

  prose <<~PROSE
    A Quiet is an arm's length of mud-colored muscle with a jaw taking most of the head. It lies among reed stools and flattens the plants' venting chord in a body-length circle. Small animals that navigate by the bed's sound enter the dampened patch and are taken in one strike. The predator feeds on waterfowl, rats, and grazing animals that otherwise thin the stands.

    Mature Quiets defend the same stools for much of a #{duration 20} life. They strike from a limited circle, settle again after feeding, and push younger animals into open water during autumn dispersal. Reed cutters listen from the bank before entering a stand and probe quiet patches with a pole. In winter the whole bed's chord thins, so pole work replaces sound as the primary check.

    Long-resident animals become named landmarks in cutting plans. Crews leave a margin around the territory and accept the lost strip because the predator reduces grazing elsewhere in the bed. Dispersing young are less predictable: their dampened circles can appear in a bed that was clear on the previous round.
  PROSE

  cue "The cutter stops on the bank with her head tilted, listening down the stand — and marks the one patch where the chord drops out, a body-length hole of silence that gets the pole and a wide berth."
  cue "The strike is one motion at the silence's edge — a waterfowl gone, the quiet closing back — and the bed's song resumes around a landmark the cutters have named for years."
  affordance "A resident Quiet reduces birds and grazing animals in a reed stand, while its dampened circle gives trained cutters a placeable sign from the bank."
  variation "Bed-holders defend named territories for decades and are managed as landmarks; the young dispersing Quiets that cross open water in autumn are the season's real hazard, quiet circles moving through beds that had none yesterday."
  variation "Some cutting councils clear Quiets from narrow household beds and retain them in broad commercial stands. The decision follows bed width, prey damage, and whether crews can leave a safe margin."
end
