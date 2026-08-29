encyclopedia :glassfall_showers do
  title "Glassfall Showers"
  kind :phenomenon
  subkind :debris_shower
  status :complete
  summary "Glassfall showers are recurring streams of fine ring debris that cross Kaleidos's atmosphere and inhabited orbits, bringing impact and resonance hazards."
  medium "Streams of fine ring debris crossing inhabited orbits and Kaleidos's atmosphere"
  content "Vitrified dust, ringglass grains, slag, and occasional larger fragments"
  hazard "High-speed impacts, false resonance gradients, and abrasion of exposed arrays"
  topics :orbital, :ringglass, :resonance, :danger
  prevalence :uncommon
  appears_when any: { place: [:"realm:surface", :"realm:orbital"] }

  cue "Tuning compasses lean toward empty sky and signal equipment acquires brief echoes before the first visible streak."
  cue "On the surface the shower is pale streaks in quick succession; in orbit it is a dry hiss along the hull and bright pinpricks on shielding."
  affordance "Communities catch the dust on cloth, wash it, sort it by response, and sell the clean grains to instrument makers, growers, and glass workers."
  pressure "A forecast can place the front within hours and still miss the narrow dense strand that damages a vessel."
  variation "A stream can return to the same corridor thicker, thinner, earlier, or split into several fronts."
  variation "A visible fall with a weak resonance response may contain mostly ordinary glass and slag."

  descriptive_identity(
    signs:
      "Instruments notice first: tuning compasses lean toward empty " \
      "sky and signal sets take brief echoes before any streak shows. " \
      "From the surface the shower crosses as pale streaks in quick " \
      "succession; in orbit it is a dry hiss along the hull and bright " \
      "pinpricks on exposed shielding.",
    effects:
      "A dense stream carries a moving resonance field through the " \
      "local background, so kinetic arrays pull unevenly as the " \
      "gradient crosses them and old structural glass can answer a " \
      "frequency the debris carries. Afterward a basin dusted with " \
      "fresh crystal often holds a stronger field, and communities " \
      "stretch cloth across roofs and yards to catch grains fine " \
      "enough for instrument work.",
    hazards:
      "Larger fragments ride inside the stream without announcing " \
      "themselves until a tracking array resolves them, and grains " \
      "enter every unsealed joint, lodging across cut surfaces and " \
      "bridging parts of an array meant to stay separate. A forecast " \
      "can place the front within a few hours and still miss the " \
      "narrow dense strand that damages a vessel."
  )

  prose <<~PROSE
    Glassfall showers are recurring passages through the fine debris left by the shattered ring. Most grains are too small to track alone. Together they form long streams in related orbits, spread by centuries of close passes through the Shear and by repeated encounters with Kaleidos's atmosphere. A stream may return to the same broad corridor on a known cycle while arriving thicker, thinner, earlier, or split into several fronts.

    From the surface, a shower appears as pale streaks crossing the sky in quick succession. The smallest particles burn or cool into drifting glass dust. In orbit, there is less light and more damage: a dry hiss across a hull, bright pinpricks on exposed shielding, and grains entering every unsealed joint. Larger fragments travel inside the stream without announcing themselves until a tracking array resolves them.
  PROSE
  prose <<~PROSE, section: :resonance, heading: "A Moving Resonance Field"
    Ringglass grains concentrate ambient #{encyclopedia_ref :resonance, "resonance"} as they pass. A dense shower carries a moving field through the local background. Tuning compasses lean toward empty sky before the first visible streak. Signal equipment acquires brief echoes. Kinetic arrays may pull unevenly as the strongest gradient moves across them, and old structural glass can answer a frequency carried by the debris.

    The passage does not supply a fixed amount of power. Grain size, tuning, speed, and the surrounding substrate all change the response. A surface basin dusted with fresh crystal often supports a stronger field after the shower, especially where rain or cultivation carries the grains into connected soil. The same material can detune an exposed array when it lodges across a cut surface or bridges two parts meant to remain separate.

    Places under #{encyclopedia_ref :drawdown, "drawdown"} react sharply to new dust. Household devices may recover near the deposit while a neighboring line remains quiet. Workers wait for the field to settle before retuning permanent equipment because the first gradient follows the loose surface grains and changes as they wash, sink, or are collected.
  PROSE
  prose <<~PROSE, section: :applications, heading: "Work Under a Shower"
    Orbital crews turn vulnerable faces away from the stream and close external work. Kites lower broad sail surfaces, keep independent thrust available, and cross the predicted path at an angle that limits the time spent inside it. On Kaleidos, exposed concentrators are covered with woven catch cloth that stops coarse grains before they enter the housings.

    The dust is also useful. Clean ringglass fine enough for instrument work is expensive to mill, and a shower separates some of it by heat and flight before it reaches the ground. Communities stretch collection cloth across roofs and empty yards. The captured material is washed, sorted by response, and sold to instrument makers, growers, and glass workers. Most of it remains low-grade aggregate. A handful of clear grains can pay for the work.

    The #{ref :prismwell_kite_guild, "Prismwell Kite Guild"} follows the orbital streams and publishes route forecasts from its own flights. The #{ref :lumenshard_conservatory, "Lumenshard Conservatory"} studies what deposited dust does after it enters soil and living tissue. Their interests meet wherever a profitable collection path crosses a grove that depends on the same fall of material.
  PROSE
  prose <<~PROSE, section: :limits, heading: "Forecasts"
    A shower corridor can be predicted from the motion of the larger debris around it. Density remains harder. Fine grains respond to weak resonance gradients, collisions, and atmospheric drag that ordinary orbital models treat poorly. A forecast can place the front within a few hours and still miss the narrow dense strand that damages a vessel.

    Surveyors compare several kinds of evidence: tracked fragments, tuning-compass movement, signal echoes, and the faint glow where dust has already entered the upper air. No one reading is sufficient. A resonance spike without tracked debris may be a reflected field. A visible fall without a strong response may contain mostly ordinary glass and slag.

    Each stream mixes material from many parts of the old ring. Chemical and harmonic signatures can identify some original structures, but repeated collisions have erased most provenance. The showers are a continuing movement of the Glassfall, not a reliable sample of any one lost habitat.
  PROSE

end
