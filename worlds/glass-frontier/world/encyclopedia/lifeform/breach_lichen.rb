encyclopedia :breach_lichen do
  name "Resonance Lichen"
  summary "Resonance lichen is a stone-growing organism that colonizes the scars of resonance strikes and darkens ahead of the next discharge. Surface crews read its color as a strike forecast and harvest its cured mats for insulating felt."
  kind :lifeform
  subkind :lichen
  status :complete
  log "2026-08-31 — Renamed Breach Lichen to Resonance Lichen; the established resonance root governs both the strike-scar habitat and the organism's warning cycle."
  topics :ecology, :resonance, :surface
  prevalence :uncommon
  appears_when all: { place: [:surface, :ringglass_rich] }
  biology "Feeds on the mineral changes a resonance strike leaves in stone; its tissues load with charge as the local field rebuilds"
  resonance_relation "Colonizes strike scars and darkens as stored charge climbs toward the stone's next discharge"

  descriptive_identity(
    appearance: "Flat rosettes of gray-green crust spreading outward from strike scars in rings, " \
                "like ripples frozen on stone. A healthy mat is pale and dry to the touch; a " \
                "loading mat darkens from the center out, gray to slate to wet-looking black.",
    behavior: "It grows only on struck stone, fastest in the first seasons after a strike, and " \
              "spreads in rings that date the scar the way growth rings date a tree. The mat " \
              "darkens as the local field rebuilds and pales again in the days after discharge.",
    threat: "The mat's color serves as the hazard notice: black from center to rim marks stone " \
            "approaching another discharge, and crews treat it as a posted sign.",
    risks: "Harvesting runs on the same clock as the danger — the mats cure best when fully " \
           "loaded, so felt crews cut closest to discharge and grade their nerve along with " \
           "their crop."
  )

  prose <<~PROSE
    Where a resonance strike scars open stone, resonance lichen follows. The first rosettes appear within a season, gray-green crusts spreading outward from the scar in dated rings, and a slope's lichen map is a strike history any herder can read at a walk. The organism feeds on the mineral changes the strike leaves behind, and it prospers on exactly the ground other growth avoids — the glass-veined shelves of Avar and the Kyther valleys carry mats the size of threshing floors.

    Its second habit is the useful one. As the local field rebuilds toward the stone's next discharge, the mat loads, and a loading mat darkens from the center out: gray, slate, then a wet-looking black. The change runs days ahead of the discharge, and surface crews treat the sequence as posted signage. Route stones in strike country are set beside established mats on purpose, so the warning and the waypoint share a glance. Survey instruments read the same rebuilding field the lichen does; the lichen's advantage is that it is already everywhere, costs a look, and grades itself by color.
  PROSE

  prose <<~PROSE, section: :trade, heading: "Felt and the Cutting Window"
    Cut, pressed, and cured, loaded lichen makes an insulating felt that damps structural-band bleed — lining for instrument cases, kneeling pads for tuners, wall patches for houses on humming ground. Fully loaded mats produce the densest felt and grow on stone approaching discharge. Felt crews work in threes, two cutting and one watching the rim color and calling the fade. The grade book records the felt quality and the color at the final cut; cutting past the call is the trade's recorded cause in fatal harvests.
  PROSE

  cue "Gray-green rosettes ripple outward from an old scar across the shelf, and the nearest route stone has been planted deliberately at the mat's edge."
  cue "The center of the big mat has gone slate-dark since yesterday, and the herd's lead animals are already drifting off the shelf."
  affordance "The mat is a free strike forecast graded by color — pale is settled, darkening is due within days — and a slope's rings date every old strike for anyone routing new construction."
  pressure "A three-person felt crew cuts while the caller watches the rim color and ends the harvest at the agreed shade. The grade book records that color beside the cured felt."
  variation "Avar mats grow broad and thin and are cut like turf; Kyther valley mats grow in deep cushions that yield the dense felt tuners pay for."
  variation "Some strike-country households keep a house mat on a boundary stone and read it each morning, trusting it over the district bulletin by long habit."
end
