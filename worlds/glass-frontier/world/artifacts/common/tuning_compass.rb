resource :tuning_compass do
  name "Tuning Compass"
  subkind :device
  function "Shows the direction, band, and stability of a local resonance gradient"
  classes "Pocket, survey, and hull-mounted"
  operating_environments "Settlements, ring habitats, vessels, and field sites with ambient ringglass"
  operating_limit "Loses discrimination in saturated fields and gives no reading after complete local drawdown"
  tags :resonance, :navigation, :ringglass, :household
  prominence :renowned

  prose <<~PROSE
    A tuning compass is a portable reference for the local resonance field. Mechanics set one beside an open array. Kite crews fix one near the pilot's sightline. Surveyors carry larger versions in padded cases and place them on the ground before cutting or drilling. The compass shows which known band dominates, where its strength changes most sharply, and whether that reading holds steady long enough to trust.

    The common pocket model fits in one hand. Three paired reeds surround a clear ringglass bead, one pair for each known band. A fixed reed carries the maker's reference tone while its free partner answers the environment. Their slight disagreement produces a visible beat: the free reed bends, shivers, or swings around the bead. The housing can rotate without moving the bead, allowing the user to follow the strongest response. A steady lean marks a gradient. A widening shiver marks drift. Reeds hanging together without motion usually mean the field has gone quiet.
  PROSE
  prose <<~PROSE, section: :applications, heading: "Reading a Place"
    The device earned its name from field work. A direction compass points along a route; a tuning compass points toward the part of a resonance field that will dominate the work. Near a settlement concentrator, its reeds lean inward. Across cracked ringglass, the response may split along two seams. In a vessel, a sudden turn toward the hull can reveal a live conduit behind the panels before heat or sound gives it away.

    An untrained user can recognize a gross change and compare it with the marks engraved around the case. An attuned user reads the motion more closely. #{ref :tuners, "Tuners"} watch the interval between the fixed and free reeds, then compare that beat with what they feel through their hands or feet. Disagreement matters. A personal sensation can be distorted by fatigue or overexposure; a compass can be damaged, poorly seated, or caught in a reflected field. Crews pause when the two readings diverge because neither is useful as an unquestioned authority.

    Pocket compasses are common enough to hang beside household concentrators and workshop doors. Survey compasses add longer reeds, interchangeable housings, and a base that can be fixed directly to stone or ring structure. Hull-mounted models sacrifice sensitivity for a reading that remains legible through engine vibration.
  PROSE
  prose <<~PROSE, section: :history, heading: "From Local Tools to a Shared Reference"
    Famine-era communities built many devices for the same need: a way to carry a known tone into an unfamiliar room. Surviving examples include bowls with floating crystal splinters, sets of suspended wire, and sealed boxes that changed pitch when turned. Their scales rarely agreed. A safe reading in one habitat could correspond to a failing array in another.

    After the Rekindling, instrument makers compared those local tools against the emerging band model. The present three-reed form spread because it could be repaired with ordinary materials and checked against any well-kept #{ref :resonant_instruments, "resonant instrument"}. The #{ref :clarisant, "Clarisant"} publishes reference tones and tests the compasses used in its own work, while independent makers retain different case shapes, reed alloys, and local markings.
  PROSE
  prose <<~PROSE, section: :limits, heading: "False Bearings"
    A tuning compass reads gradients, not causes. It cannot tell whether a structural response comes from a sound wall, a stressed wall overcompensating, or an active array beyond it. Strong narrow-band effects drive all three reeds at once and can leave them bent out of calibration. In the deep #{ref :the_shear, "Shear"}, surveyors take several readings from separate positions because reflected fields can point toward empty space.

    #{ref :drawdown, "Drawdown"} produces the most familiar false bearing. As one band weakens, the compass turns toward whatever active source remains, sometimes pointing away from the failed equipment and toward a neighbor still carrying load. This movement is useful when mapped over time. A single reading can send a repair crew in exactly the wrong direction.
  PROSE

  gm_note :appears, "A pocket compass hangs beside the concentrator in most homes and inside most workshop doors, so an indoor scene already has one in it. " \
                    "A player who looks reads which band dominates, where its strength changes most sharply, and whether the reeds are holding steady or shivering wider."
  gm_note :triggered_by, "When a character trusts what they feel through their hands over what the reeds show, or the reverse, neither reading wins. " \
                         "Fatigue and overexposure distort a person, a case can be badly seated or caught in a reflection, and crews stop the work while the two disagree."
  gm_note :complicates, "During a #{ref :drawdown, "drawdown"} the compass leans toward whatever is still carrying load, which is often the neighbor of the thing that failed. " \
                        "A crew acting on one reading walks away from the fault; only readings taken from separate positions over time show the turn."
end

relate :rel_tuning_compass_depends_on_ringglass, :depends_on, :tuning_compass, :ringglass do
  prose "Every #{ref :tuning_compass, "tuning compass"} holds a small ringglass reference whose response is compared with the surrounding field."
end
relate :rel_tuning_compass_derived_from_resonant_instruments, :derived_from, :tuning_compass, :resonant_instruments do
  prose "The modern compass reduces the variable tones of #{ref :resonant_instruments, "resonant instruments"} to three paired reference reeds."
end
relate :rel_tuners_practiced_with_tuning_compass, :practiced_by, :tuners, :tuning_compass, since: 2310 do
  prose "Field #{ref :tuners, "Tuners"} carry tuning compasses to compare bodily perception against a repairable external reference."
end
